LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY register_file IS 
	PORT(
	clk: IN std_logic;
	wr_enable: IN std_logic;
	--16 bit address from memory/ALU
	data: IN std_logic_vector(15 DOWNTO 0); 
	--selects registers (8 registers)(from bus)
	address: IN std_logic_vector(7 DOWNTO 0); 
	---Assigns register with address (from control unit)
	regA: IN std_logic_vector(2 DOWNTO 0); 
	regB: IN std_logic_vector(2 DOWNTO 0); 
	---16 bit output(out A and B to ALU, outC to main bus)
	outA: OUT std_logic_vector(15 DOWNTO 0); 
	outB: OUT std_logic_vector(15 DOWNTO 0); 
	outC: OUT std_logic_vector(15 DOWNTO 0); 
	---Indicate if output is complete
	outD: OUT std_logic
	); 
END register_file; 

ARCHITECTURE bhv of register_file IS 
	TYPE reg_array IS ARRAY(0 TO 7) OF std_logic_vector(15 DOWNTO 0); ---register file 8x16
	SIGNAL regs: reg_array; ---initialize all registers to 0
BEGIN 
	PROCESS(clk) IS 
	BEGIN 
		--register 0 is initialized to 0
		regs(0)<=(others => '0'); 
		IF rising_edge(clk) THEN 
			---initialize value of complete flag output to 0
			outD <= '0';
			--- write to register 
			IF wr_enable = '1' THEN 
				--- write into selected register 
				regs(to_integer(unsigned(address))) <= data;
			ELSE 
				---read from register address and output 
				---address is not used when write is not enable, so it is used to read to outC
				outA <= regs(to_integer(unsigned(regA))); 
				outB <= regs(to_integer(unsigned(regB)));
				outC <= regs(to_integer(unsigned(address)));
				---when outputs are complete, then indicate it is ready
				outD <= '1';
			END IF;
		END IF; 
	END PROCESS; 
END bhv;


		
	
	
