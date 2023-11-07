LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;




ENTITY CU IS
PORT (

clk, reset              : IN  std_logic                         ;

--Lobster File

LF_addr1,LF_addr2        : OUT std_logic_vector(2 DOWNTO 0)     ;

--BUS 

BUS_addr1,BUS_addr2     : OUT std_logic_vector(10 DOWNTO 0)     ;
BUS_sync_a1,BUS_sync_a2 : IN  std_logic                         ;

BUS_grant               : IN  std_logic                         ;
BUS_request             : OUT std_logic                         ;
BUS_busy                : OUT std_logic                         ;
BUS_data                : IN  std_logic_vector(15 DOWNTO 0)     ;

--Instruction memory

IM_confirm,IM_wait      : IN  std_logic                         ;
IM_control              : OUT std_logic_vector(1 DOWNTO 0)      ;
IM_instruction          : IN  std_logic_vector(15 DOWNTO 0)     ; 


--ALU 

ALU_flags               : IN  std_logic_vector(2 DOWNTO 0)      ;                         -- THESE ARE THE STATUS FLAGS: Z,V,F
ALU_control             : OUT std_logic_vector(3 DOWNTO 0)      ;
ALU_A_MUX,ALU_B_MUX     : OUT std_logic                         ;
ALU_OUTPUT_SEL          : OUT std_logic                           -- 0 for data and 1 for address
);
END CU;




ARCHITECTURE bhv OF CU IS

signal next_instruction : std_logic_vector(1 DOWNTO 0) := "01"  ;   --- The control signals for the IM: 01=INC, 10=DEC,11=Branch,00=NOP


--STATES AND SUB-STATES
type fes_state IS (fetch,execute)                               ;   -- fetch execute state
signal fe_state     : fes_state     := execute                  ;


type fetchs_state IS (send,recieve)                             ;   -- fetch sub-states
signal fetch_state  : fetchs_state  := send                     ;

type execs_state IS (control,fin)                    ;   -- execute sub-states
signal exec_state   : execs_state   := control                  ;


--- ALU OPERATIONS FUNCTION CODES
constant add   : std_logic_vector(3 DOWNTO 0) := "0000" ; 
constant sub   : std_logic_vector(3 DOWNTO 0) := "0001" ; 
constant mul2  : std_logic_vector(3 DOWNTO 0) := "0010" ; 
constant div2  : std_logic_vector(3 DOWNTO 0) := "0011" ; 
constant mul   : std_logic_vector(3 DOWNTO 0) := "0100" ; 
constant oor   : std_logic_vector(3 DOWNTO 0) := "0101" ; 
constant oand  : std_logic_vector(3 DOWNTO 0) := "0110" ; 
constant oorn  : std_logic_vector(3 DOWNTO 0) := "0111" ; 
constant onand : std_logic_vector(3 DOWNTO 0) := "1000" ; 
constant oxor  : std_logic_vector(3 DOWNTO 0) := "1001" ; 
constant oxnor : std_logic_vector(3 DOWNTO 0) := "1010" ; 

----PARTS OF INSTRUCTION

signal op_code : std_logic_vector(3  DOWNTO 0 ) ;
signal reg_A   : std_logic_vector(2  DOWNTO 0 ) ;
signal reg_B   : std_logic_vector(2  DOWNTO 0 ) ;
signal Imm     : std_logic_vector(7  DOWNTO 0 ) ; --Immediate
signal cond    : std_logic                      ;


BEGIN

op_code <= IM_instruction(15 DOWNTO 12) ;
reg_A   <= IM_instruction(11 DOWNTO 9 ) ;
reg_B   <= IM_instruction(2  DOWNTO 0 ) ;
Imm     <= IM_instruction(7  DOWNTO 0 ) ; --Immediate
cond    <= IM_instruction(8)            ;



    PROCESS(clk,reset)
    BEGIN

        IF reset = '0' THEN

        ELSIF rising_edge(clk) THEN

            CASE fe_state IS 
            WHEN fetch   => --------------------------------------------- FETCH STATE --------------------------------------------------------------
                CASE fetch_state IS 
                WHEN send => 
                    IM_control <= next_instruction  ;
                    IF IM_wait = '1' THEN
                        IM_control       <= "00"    ;
                        next_instruction <= "00"    ;
                        fetch_state      <= recieve ;
                    END IF;
                WHEN recieve => 
                    IF IM_confirm = '1' THEN
                        fetch_state      <= send    ;
                        fe_state         <= execute ;
                    END IF;
                END CASE;

            WHEN execute => --------------------------------------------- EXECUTE STATE --------------------------------------------------------------
                CASE exec_state IS                  ---------- SUB-STATES OF EXECUTE CYCLE ----------
                WHEN control   =>

                    IF BUS_grant = '0' AND op_code /= "0000" AND op_code /= "0001" THEN                                 -- Handeling of bus request
                        BUS_request <= '1'                                          ;
                    ELSIF BUS_grant = '1' OR op_code = "0000" OR op_code = "0001" THEN
                        IF op_code /= "0000" AND op_code /= "0001" THEN
                            BUS_busy        <= '1'                                  ;
                            BUS_request     <= '0'                                  ;
                            BUS_addr1       <= '1' & "00" & "00000" & reg_A         ; -- setup for bus interaction
                            ALU_A_MUX       <= '0'                                  ;
                            ALU_OUTPUT_SEL  <= '0'                                  ;  --configure ALU I/O and operation    
                            lf_addr1        <= reg_A                                ;
                        END IF;

                        CASE op_code IS        -- Selection based on OP-CODE

                            WHEN "0000" => ----NOP INSTRUCTION
                                fe_state <= fetch                                   ;
                                next_instruction <= "01"                            ;
                        
                            WHEN "0001" =>----BRANCH INSTRUCTION
                                IF    cond = '0' THEN  --- branch always
                                    fe_state <= fetch                               ;
                                    next_instruction <= "11"                        ;
                                ELSIF cond = '1' THEN --- branch on eq 0
                                    IF BUS_grant = '0' THEN                             -- Handeling of bus request
                                        BUS_request <= '1'                          ;
                                    ELSIF BUS_grant = '1' THEN
                                        BUS_busy        <= '1'                      ;
                                        BUS_request     <= '0'                      ;
                                        BUS_addr1       <= '1' & "00" & "00000000"  ; -- setup for bus interaction
                                        lf_addr1        <= reg_A                    ;
                                        lf_addr2        <= "000"                    ; -- put registers for alu
                                        ALU_control     <= add                      ;  
                                        ALU_A_MUX       <= '0'                      ;
                                        ALU_B_MUX       <= '0'                      ;
                                        ALU_OUTPUT_SEL  <= '0'                      ;  --configure ALU I/O and operation
                                        exec_state      <= fin                      ;  --go to next state
                                    END IF;
                                END IF;

                            WHEN ("1001" OR "1010") =>  ---- LOAD AND STORE INSTRUCTIONS
                                ALU_OUTPUT_SEL  <= '1'                              ;  --to data buss    
                                ALU_control     <= add                              ;
                                lf_addr1        <= "000"                            ;
                                lf_addr2        <= reg_B                            ; 
                                IF op_code = "1001" THEN
                                    BUS_addr2       <= '0' & "01" & "ZZZZZZZZ"      ; -- the Z lets the alu input to the buss the last 8 bits
                                ELSE 
                                    BUS_addr1       <= '0' & "00" & "00000" & reg_A ; -- setup for bus interaction
                                    BUS_addr2       <= '1' & "01" & "ZZZZZZZZ"      ; -- We change from read to write
                                END IF;
                                IF cond = '1' THEN 
                                    ALU_B_MUX <= '1'                                ;            
                                END IF;

                                exec_state      <= fin                              ;  --go to next state


                            WHEN others =>                                              --- Arithmetic and logic operations
                                CASE op_code IS                                         -- select operation
                                    WHEN "0010" => ALU_control <= mul2              ;
                                    WHEN "0011" => ALU_control <= div2              ;
                                    WHEN "0100" => ALU_control <= oor               ;
                                    WHEN "0101" => ALU_control <= oorn              ;
                                    WHEN "0110" => ALU_control <= oand              ;
                                    WHEN "0111" => ALU_control <= add               ;
                                    WHEN "1000" => ALU_control <= sub               ;
                                    WHEN OTHERS =>
                                END CASE;

                                IF cond = '1' THEN                                     -- with immediate
                                    ALU_B_MUX       <= '1'                          ;
                                ELSE
                                    lf_addr2        <= reg_B                        ; -- put registers for alu
                                    ALU_B_MUX       <= '0'                          ;
                                END IF;    
                                
                                exec_state      <= fin                              ;  --go to next state
                            
                        END CASE;
                    END IF;

                WHEN fin =>
                    BUS_busy <= '0'                                                 ;
                    CASE op_code IS
                        WHEN "0001" => ----BRANCH INSTRUCTION ; condition code doesn't need to be checked bc only with 1 we get to this state
                            IF alu_flags(2) = '1' THEN
                                fe_state            <= fetch                        ;
                                next_instruction    <= "11"                         ;
                            ELSE 
                                fe_state            <= fetch                        ;
                                next_instruction    <= "01"                         ;
                            END IF;

                        WHEN  ("1001" OR "1010") =>
                            IF ( BUS_sync_a1 = '1' AND BUS_sync_a2 = '1' ) THEN
                                fe_state            <= fetch                        ;
                                next_instruction    <= "01"                         ;
                            ELSE
                                BUS_busy <= '1'                                     ; 
                            END IF;

                        WHEN others => 
                            IF BUS_sync_a1 = '1' THEN
                                fe_state            <= fetch                        ;
                                next_instruction    <= "01"                         ;
                            ELSE
                                BUS_busy <= '1'                                     ; 
                            END IF;  
                    END CASE;
                END CASE;
            END CASE ; 
        END IF;
    END PROCESS;
END ARCHITECTURE;