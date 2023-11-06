LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY register_file IS 
	PORT(
	clk: IN std_logic;
	wr_enable: IN std_logic;
	--16 bit address from memory/ALU
	mem_address: IN std_logic_vector(15 DOWNTO 0); 
	--selects address of register(16 registers)
	reg_sel: IN std_logic_vector(3 DOWNTO 0); 
	---Assigns register with address
	regA: IN std_logic_vector(3 DOWNTO 0); 
	regB: IN std_logic_vector(3 DOWNTO 0); 
	regC: IN std_logic_vector(3 DOWNTO 0); 
	---16 bit output(out A and B to ALU, outC to main bus)
	outA: OUT std_logic_vector(15 DOWNTO 0); 
	outB: OUT std_logic_vector(15 DOWNTO 0); 
	outC: OUT std_logic_vector(15 DOWNTO 0); 
	---Indicate if output is complete
	outD: OUT std_logic
	); 
END register_file; 

ARCHITECTURE bhv of register_file IS 
	TYPE reg_array IS ARRAY(0 TO 15) OF std_logic_vector(15 DOWNTO 0); ---register file 16x16
	SIGNAL regs: reg_array; ---initialize all registers to 0
BEGIN 
	regfile: PROCESS(clk) IS 
	BEGIN 
		IF rising_edge(clk) THEN 
			---initialize value of complete flag output to 0
			outD <= '0';
			--- write to register 
			IF wr_enable = '1' THEN 
				--- write into selected register 
				regs(to_integer(unsigned(reg_sel))) <= mem_address;
			ELSE 
				---read from register address and output
				outA <= regs(to_integer(unsigned(regA)));
				outB <= regs(to_integer(unsigned(regB)));
				outC <= regs(to_integer(unsigned(regC)));
				---when outputs are complete, then indicate it is ready
				outD <= '1';
			END IF;
		END IF; 
	END PROCESS; 
END bhv;


		
	
	
