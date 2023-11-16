LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY register_file IS 
	PORT(
	clk, reset: IN std_logic;
	--16 bit address from memory/ALU
	BUS_data: INOUT std_logic_vector(15 DOWNTO 0); 
	--selects registers (from bus)
	BUS_addr1: IN std_logic_vector(10 DOWNTO 0); 
	BUS_addr2: IN std_logic_vector(10 DOWNTO 0); 
	---Assigns register with address (from control unit)
	regA: IN std_logic_vector(2 DOWNTO 0); 
	regB: IN std_logic_vector(2 DOWNTO 0); 
	---16 bit output(out A and B to ALU, BUS_output to main bus)
	outA: OUT std_logic_vector(15 DOWNTO 0); 
	outB: OUT std_logic_vector(15 DOWNTO 0); 
	---Indicate if output is complete
	BUS_sync1: OUT std_logic;
	BUS_sync2: OUT std_logic
	); 
END register_file; 

ARCHITECTURE bhv of register_file IS 
	TYPE reg_array IS ARRAY(0 TO 7) OF std_logic_vector(15 DOWNTO 0); ---register file 8x16
	SIGNAL regs: reg_array := (OTHERS => (OTHERS => '0')) ;			  ---initialize all registers to 0
	
BEGIN 
	PROCESS(clk, reset) IS 
	BEGIN 
	IF reset = '0' then
				regs <= (OTHERS => (OTHERS => '0')) ;
	Else	 
		IF rising_edge(clk) THEN 
				regs(0) <= (others => '0'); --register 0 is initialized to 0
				outA <= regs(to_integer(unsigned(regA))); 
				outB <= regs(to_integer(unsigned(regB)));
			
			IF    BUS_addr1(9 DOWNTO 8) = "00" THEN		-- Checking CS on add1
				IF BUS_addr1(10) = '1' THEN
					regs(to_integer(unsigned(BUS_addr1(2 DOWNTO 0)))) <= BUS_data;
					BUS_sync1 						 <= '1'		;	
				ELSE 
					BUS_data <= regs(to_integer(unsigned(BUS_addr1(2 DOWNTO 0))));
					BUS_sync1 						 <= '1'		;
				END IF;
			ELSIF BUS_addr2(9 DOWNTO 8) = "00" THEN		-- Checking CS on add2
				IF BUS_addr2(10) = '1' THEN
					regs(to_integer(unsigned(BUS_addr1(2 DOWNTO 0)))) <= BUS_data;
					BUS_sync2 						 <= '1'		;	
				ELSE 
					BUS_data <= regs(to_integer(unsigned(BUS_addr1(2 DOWNTO 0))));
					BUS_sync2 						 <= '1'		;
				END IF;
			ELSE
				BUS_data <= (OTHERS => 'Z') ;
				BUS_sync1 <= 'Z';
				BUS_sync2 <= 'Z';	
			END IF;
		END IF;
	End IF;	
	END PROCESS; 
END bhv;
