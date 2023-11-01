LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY mul_power_of_2 IS
  GENERIC (max_length : integer := 20000);
  PORT ( clk                     : IN std_logic;
         reset                   : IN std_logic;
         key                     : IN std_logic_vector(7 DOWNTO 0);
	       pulse_length            : IN integer RANGE 0 TO max_length;
	       pulse_length_multiplied : OUT integer RANGE 0 TO max_length*32
	      ); 
END mul_power_of_2;
