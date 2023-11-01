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

ARCHITECTURE bhv OF readkey IS 
  SIGNAL byte_read_inte : std_logic;
  SIGNAL scancode_inte : std_logic_vector(7 downto 0);

  COMPONENT constantkey IS
    PORT (
      reset       : IN std_logic;
      clk         : IN std_logic; -- 50MHz clock
      scancode    : IN std_logic_vector(7 DOWNTO 0);
      byte_read   : IN std_logic;
      dig2, dig3  : OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display dig2 en dig3 (resp high & low).
      key         : OUT std_logic_vector(7 DOWNTO 0)
      );
  END COMPONENT;

  COMPONENT showkey IS
    PORT (
      reset     : IN std_logic;
      kbclock   : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) from keyboard
      kbdata    : IN STD_LOGIC; -- serial data from the keyboard
      dig0, dig1: OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display in Hex dig1 (upper 4 bits) dig0 (lower 4 bits)
      scancode  : OUT std_logic_vector(7 DOWNTO 0);
      byte_read : OUT std_logic
      );
  END COMPONENT;

BEGIN
  component1: ENTITY work.showkey
  PORT MAP(
    kbdata    => kbdata,
    kbclock   => kbclock,
    byte_read => byte_read_inte,
    scancode  => scancode_inte,
    reset     => reset,
    dig0      => dig0,
    dig1      => dig1
  );

  component2: ENTITY work.constantkey
  PORT MAP(
    byte_read => byte_read_inte,
    clk       => clk,
    reset 	  => reset,
    scancode  => scancode_inte,
    key       => key,
    dig2      => dig2,
    dig3      => dig3
  );
END;