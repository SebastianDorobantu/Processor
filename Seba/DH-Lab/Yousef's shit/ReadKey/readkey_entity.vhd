LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY readkey IS
  PORT (
    clk        : IN std_logic; -- high freq. clock (~ 50 MHz)
    reset      : IN std_logic;
    kbdata     : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
    kbclock    : IN STD_LOGIC; -- clock from the keyboard
	  key        : OUT std_logic_vector(7 DOWNTO 0);
	  -- I/O check via 7-segment displays    
    dig0, dig1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display
    dig2, dig3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) -- show key pressed on display; after processed by constant key
   );
END readkey;

ARCHITECTURE bhv of readkey IS
signal byte_read : std_logic := '0';
signal scancode : std_logic_vector(7 DOWNTO 0);

BEGIN 
-- Mapping the in and outputs of showkey to readkey
showkey : entity work.showkey port map (
  reset => reset,
  kbdata => kbdata,
  kbclock => kbclock,
  --outputs
  dig0 => dig0,
  dig1 => dig1,
  byte_read => byte_read,
  scancode => scancode
  );

constantkey : entity work.constantkey port map (
  reset => reset,
  clk => clk,
  byte_read => byte_read,
  scancode => scancode,
  --outputs
  dig2 => dig2,
  dig3 => dig3,
  key => key
  );

END;
