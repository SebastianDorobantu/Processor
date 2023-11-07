LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY instructionFetcher IS
PORT (
    -- Logic inputs
    PC                      : IN  std_logic_vector(7 DOWNTO 0)  ;
    CU_control              : IN  std_logic_vector(1 DOWNTO 0)  ;
    CU_confirm,CU_wait      : OUT std_logic                     ;
    clk, reset              : IN  std_logic                     ;
    -- BUS CONNECTIONS
    BUS_a1                   : OUT std_logic_vector(10 DOWNTO 0) ;
    BUS_sync_a1             : IN  std_logic                     ;

    BUS_grant               : IN  std_logic                     ;
    BUS_request             : OUT std_logic                     ;
    BUS_busy                : OUT std_logic                     ;
    BUS_data                : IN  std_logic_vector(15 DOWNTO 0) ;

    -- IRegister connections
    
    reg_data                : OUT std_logic_vector(15 DOWNTO 0) ;
    reg_addr                : OUT std_logic_vector(4 DOWNTO 0)  ;
    port_sel,IF_WR,IF_CS    : OUT std_logic := '0'              ;
    IR_WR                   : OUT std_logic := '0'              
);
END instructionFetcher;




ARCHITECTURE bhv of instructionFetcher IS

type IF_state is (Idle,Fetching,NewIR,NewIR_fin,NewIR_finfin,Branch);
signal state : IF_state := Idle;

type fetch_states is (INIT,Wait4data,FIN,FINFIN);
signal fetch_state : fetch_states := INIT;

constant MID_L : INTEGER := 15;

signal temp_prev : INTEGER RANGE 0 TO 256;
signal prev_PC   : INTEGER RANGE 0 TO 256;

signal PCL : INTEGER RANGE 0 to 31 := 0;        --Program Counter Location
signal fetch_in_progress : std_logic := '0';
signal grant_recieved    : std_logic := '0';
signal last_fetch        : INTEGER RANGE 0 TO 32 := 0;
signal iPC               : INTEGER RANGE 0 TO 256;
-- signal data_buffer       : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');

BEGIN    

iPC <= to_INTEGER(unsigned(PC));


PROCESS (clk, reset)
BEGIN
    IF (reset = '0') THEN
        state <= Idle;
    ELSIF rising_edge(clk) THEN
        temp_prev <= iPC;
        CASE state IS

            WHEN Idle => 
                CU_confirm  <= '0';
                IF CU_control = "01" OR CU_control = "10" THEN      --INCREMENT OR DECREMENT PC
                    CU_wait <= '1';
                    state <= NewIR;
                ELSIF CU_control = "11" THEN                        --BRANCH
                    CU_wait <= '1';
                    prev_PC <= temp_prev ;                                          -- IDK IF THIS WAY OF CAPTURING THE PREVIOUS PC WILL WORK AND I WON'T SIMULATE THIS NOW CUZ IT's 2 AM 
                    state   <= Branch    ;

                ELSIF PCL > (last_fetch - 8) THEN                   --LOAD INSTRUCTIONS IN ADVANCE
                    state       <= Fetching;
                    bus_request <= '1';
                END IF;
                
            WHEN Fetching =>
                CASE fetch_state IS
                    WHEN INIT =>
                        IF bus_grant = '1' THEN
                            fetch_state <= Wait4data;
                            bus_busy        <= '1';
                            BUS_a1           <= '0' & "01" & std_logic_vector(to_unsigned((iPC + (last_fetch - PCL)),8));       -- 001 represents the CS code of MEM
                        END IF;
                    WHEN Wait4data =>
                        IF bus_sync_a1 = '1' THEN 
                            reg_addr    <= std_logic_vector(to_unsigned((last_fetch + 1),5));
                            last_fetch  <= last_fetch + 1;
                            reg_data    <= bus_data;
                            port_sel    <= '0' ;
                            IF_WR          <= '1' ;
                            IF_CS          <= '1' ;
                            bus_busy    <= '0' ;
                            bus_request <= '0' ;
                            fetch_state <= FINFIN ;
                        END IF;
                    WHEN FINFIN => fetch_state <= FIN;
                    WHEN FIN => 
                        IF_WR          <= '0' ;           -- IF THIS HAPPENS FASTER THAN THE HOLD TIME OF INSTRUCTION REGISTERS->
                        IF_CS          <= '0' ;            --  THE REGISTERS WON'T TAKE THE DATA BECAUSE THIS HAPPENS NEXT RISING EDGE
                        fetch_state <= INIT;
                        IF  CU_control = "01" OR  CU_control = "10" OR  CU_control = "11" OR PCL = (last_fetch - 20) THEN
                            state       <= IDLE;
                        ELSE
                            bus_request <= '1' ;
                        END IF;
                    END CASE;

            WHEN NewIR =>
                CU_wait <= '1';
                IF CU_control = "01" and PCL /= last_fetch THEN
                    PCL         <= PCL + 1;                                     --IF THIS HAPPENS FASTER THAN THE HOLD TIME OF IR same problem as above
                    reg_addr    <= std_logic_vector(to_unsigned((PCL + 1),5));
                    IR_WR          <= '1' ;
                    IF_WR          <= '0' ;
                    IF_CS          <= '1' ;
                    port_sel    <= '1' ;
                    state       <= NewIR_fin;
                ELSIF CU_control = "01" and PCL = last_fetch THEN
                    state <= Fetching;
                    bus_request <= '1'          ;      
                ELSIF CU_control = "10" THEN
                    PCL         <= PCL -1;                                     --IF THIS HAPPENS FASTER THAN THE HOLD TIME OF IR same problem as above
                    reg_addr    <= std_logic_vector(to_unsigned((PCL-1 ),5));
                    IR_WR       <= '1' ;
                    IF_WR       <= '0' ;
                    IF_CS       <= '1' ;
                    port_sel    <= '1' ;
                    state       <= NewIR_fin;
                ELSE     
                    reg_addr       <= std_logic_vector(to_unsigned(PCL, 5 ));
                    IF_WR          <= '0' ;
                    IF_CS          <= '1' ;
                    IR_WR          <= '1' ;
                    port_sel       <= '1' ;
                    state          <= NewIR_finfin;
                END IF;
            
            WHEN NewIR_finfin => state <= NewIR_fin;      
            WHEN NewIR_fin => 
                CU_wait        <= '0' ;
                IR_WR          <= '0' ;
                port_sel       <= '1' ;
                CU_confirm     <= '1' ;                                            --CU_confirm is also a potential HoldTime Hazard
                state          <= IDLE;

            WHEN Branch =>
                CU_wait <= '1';
                IF (prev_PC - iPC) > 0 AND (prev_PC - iPC) >= (32 - last_fetch + PCL ) THEN                             -- (prev_PC - iPC) > 0 means we branched backwards in memory
                    PCL <= PCL - (prev_PC - iPC) - 1;                                                                           -- (32 - last_fetch + PCL ) is the nr of instructions that haven't been replaced
                    state <= NewIR;
                ELSIF (iPC - prev_PC) > 0 AND ((iPC - prev_PC) <= (last_fetch - PCL)) THEN                            -- here the <= and >= might be interpreted as assignments
                    PCL <= PCL + (iPC - prev_PC) - 1;                                                                   -- if that happens just remove the equals
                    state <= NewIR;
                ELSE 
                    PCL         <= last_fetch   ;
                    state       <= Fetching     ;
                    bus_request <= '1'          ;      
                END IF;              
            END CASE;
    END IF;         


END PROCESS;

END ARCHITECTURE;