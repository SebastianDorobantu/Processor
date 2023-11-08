library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY Memory IS
PORT(
	clk,reset : in std_logic; 

	BUS_data: INOUT std_logic_vector(15 DOWNTO 0); 
	--selects memory (from bus)
	BUS_addr1: IN std_logic_vector(10 DOWNTO 0); 
	BUS_addr2: IN std_logic_vector(10 DOWNTO 0); 
	---Indicate IF output IS complete
	BUS_sync1: OUT std_logic;
	BUS_sync2: OUT std_logic

);
END Memory;

ARCHITECTURE bhv OF Memory IS
	TYPE ram_array IS array (0 to 255) OF std_logic_vector (15 downto 0);
	CONSTANT init_ram : ram_array :=( 
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000",
			x"0000",x"0000",x"0000",x"0000"
	   );
	signal ram_data: ram_array := init_ram;
BEGIN
	PROCESS(clk) IS 
	BEGIN 
		IF reset  = '0' THEN
		ram_data <= init_ram;	
		ELSIF rising_edge(clk) THEN 
			IF    BUS_addr1(9 DOWNTO 8) = "10" THEN		-- Checking CS on add1
				IF BUS_addr1(10) = '1' THEN
					ram_data(to_integer(unsigned(BUS_addr1(7 DOWNTO 0)))) <= BUS_data;
					BUS_sync1 						 <= '1'		;	
				ELSE 
					BUS_data <= ram_data(to_integer(unsigned(BUS_addr1(7 DOWNTO 0))));
					BUS_sync1 						 <= '1'		;
				END IF;
			ELSIF BUS_addr2(9 DOWNTO 8) = "10" THEN		-- Checking CS on add2
				IF BUS_addr2(10) = '1' THEN
					ram_data(to_integer(unsigned(BUS_addr1(7 DOWNTO 0)))) <= BUS_data;
					BUS_sync2 						 <= '1'		;	
				ELSE 
					BUS_data <= ram_data(to_integer(unsigned(BUS_addr1(7 DOWNTO 0))));
					BUS_sync2 						 <= '1'		;
				END IF;
			ELSE
				BUS_data <= (OTHERS => 'Z') ;
				BUS_sync1 <= 'Z';
				BUS_sync2 <= 'Z';	
			END IF;
		END IF; 
	END PROCESS; 
END bhv;