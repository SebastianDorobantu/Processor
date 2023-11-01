LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY sample_generation IS
  PORT (
    clk   : IN std_logic;
    reset : IN std_logic;
    key   : IN std_logic_vector(7 DOWNTO 0);
    DATA  : OUT std_logic_vector(15 downto 0) 
		  );		
END ENTITY sample_generation;
