LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY key2sample IS
  PORT (
    clk         : IN std_logic;
    reset       : IN std_logic;
    kbdata      : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
    kbclock     : IN STD_LOGIC; -- clock from the keyboard
		-- debug outputs
    dig0, dig1  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display
    dig2, dig3  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display			
    -- audio codec in and outputs
    data       : OUT std_logic_vector(15 downto 0)
);		
END ENTITY key2sample;
