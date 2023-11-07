library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY RAM_256X16 IS
PORT(
	clk : in std_logic; 
	-- address: in std_logic_vector(7 downto 0); 
	-- data_in: in std_logic_vector(15 downto 0);
	-- data_out: out std_logic_vector(15 downto 0)

	BUS_data: INOUT std_logic_vector(15 DOWNTO 0); 
	--selects memory (from bus)
	BUS_address1: IN std_logic_vector(10 DOWNTO 0); 
	BUS_address2: IN std_logic_vector(10 DOWNTO 0); 
	---Indicate IF output IS complete
	BUS_sync1: OUT std_logic;
	BUS_sync2: OUT std_logic

);
END RAM_256X16;

ARCHITECTURE bhv OF RAM_256X16 IS
	TYPE ram_array IS array (0 to 255) OF std_logic_vector (15 downto 0);
	signal ram_data: ram_array := (OTHERS => (OTHERS => '0'));
BEGIN
	PROCESS(clk) IS 
	BEGIN 
		IF rising_edge(clk) THEN 
			IF    BUS_address1(9 DOWNTO 8) = "01" THEN		-- Checking CS on add1
				IF BUS_address1(10) = '1' THEN
					ram_data(to_integer(unsigned(BUS_address1(7 DOWNTO 0)))) <= BUS_data;
					BUS_sync1 						 <= '1'		;	
				ELSE 
					BUS_data <= ram_data(to_integer(unsigned(BUS_address1(7 DOWNTO 0))));
					BUS_sync1 						 <= '1'		;
				END IF;
			ELSIF BUS_address2(9 DOWNTO 8) = "01" THEN		-- Checking CS on add2
				IF BUS_address2(10) = '1' THEN
					ram_data(to_integer(unsigned(BUS_address1(7 DOWNTO 0)))) <= BUS_data;
					BUS_sync2 						 <= '1'		;	
				ELSE 
					BUS_data <= ram_data(to_integer(unsigned(BUS_address1(7 DOWNTO 0))));
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