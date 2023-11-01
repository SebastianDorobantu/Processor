LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY registerfile IS 
	PORT(
	clk: IN std_logic;
	wr_enable: IN std_logic;
	--16 bit address from memory/ALU
	input: IN std_logic_vector(15 DOWNTO 0); 
	--selects address of register(16 registers)
	reg_sel: IN std_logic_vector(3 DOWNTO 0); 
	---Assigns register with address
	regA: IN std_logic_vector(3 DOWNTO 0); 
	regB: IN std_logic_vector(3 DOWNTO 0); 
	regC: IN std_logic_vector(3 DOWNTO 0); 
	---16 bit output(out A and B to ALU, outC to main bus)
	outA: OUT std_logic_vector(15 DOWNTO 0); 
	outB: OUT std_logic_vector(15 DOWNTO 0); 
	outC: OUT std_logic_vector(15 DOWNTO 0) 
	---Indicate if output is complete
	outD: OUT boolean;
	); 
END registerfile; 

ARCHITECTURE bhv of registerfile IS 
	TYPE reg_array IS ARRAY(0 TO 15) OF std_logic_vector(15 DOWNTO 0); --register file 16x16
	SIGNAL regs: reg_array; 
BEGIN 
	PROCESS(clk) IS 
	BEGIN 
		IF rising_edge(clk) THEN 
			---read from register address and output
			outA <= regs(to_integer(unsigned(regA)));
			outB <= regs(to_integer(unsigned(regB)));
			outC <= regs(to_integer(unsigned(regC)));
			--- write and forward to output 
			IF wr_enable = '1' THEN 
				--- write into selected register 
				regs(to_integer(unsigned(reg_sel))) <= input;
				---forward to output if data is read and written to/from the same register in one same cycle
				--- this is done to get the 3 outputs in one cycle 
				IF regA = reg_sel THEN 
					outA <= input;
				END IF; 
				IF regB = reg_sel THEN 
					outB <= input; 
				END IF;
				IF regC = reg_sel THEN 
					outC <= input; 
				END IF; 
			END IF;
			outD = true;
		END IF; 
	END PROCESS; 
END bhv;


		
	
	
