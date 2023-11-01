-- In this version scancode is read on the negative edge of kbclock.
-- It counts the number of negative edges. IF 11 edges are detected the byte is read and byte_read is '1'.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY showkey IS
  PORT (
    reset     : in std_logic;
    kbclock   : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) from keyboard
    kbdata    : IN STD_LOGIC; -- serial data from the keyboard
    dig0, dig1: OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display in Hex dig1 (upper 4 bits) dig0 (lower 4 bits)
    scancode  : OUT std_logic_vector(7 DOWNTO 0);
    byte_read : OUT std_logic
    );
END showkey;

ARCHITECTURE bhv OF showkey IS
	SIGNAL keycode : std_logic_vector(9 downto 0) := (OTHERS => '0');--make an array of the different keys we need here (top row of keys needed for program)
	SIGNAL bitcnt : std_logic_vector(3 downto 0) := (OTHERS => '0');
BEGIN
	PROCESS (kbclock, reset)
	-- After 0 bit in kbdata process will read following 8 bits
	-- If no value output by kbdata then run process again
	BEGIN
		IF reset = '0' THEN
			keycode <= (OTHERS => '0');
			bitcnt <= (OTHERS => '0');
			byte_read <= '0';
			scancode <= (OTHERS => '0');

		ELSIF falling_edge(kbclock) THEN
			IF bitcnt < "1001" THEN
				scancode <= (OTHERS => '0');
				keycode(to_integer(unsigned(bitcnt))) <= kbdata;
				bitcnt <= std_logic_vector(unsigned(bitcnt) + 1);
				byte_read <= '0';

			ELSIF bitcnt = "1001" THEN
				scancode <= keycode(8 downto 1);
				bitcnt <= "1111";
				byte_read <= '1';

			ELSE
				bitcnt <= std_logic_vector(unsigned(bitcnt) + 1);
				keycode <= (OTHERS => '0');

			END IF;
			
		END IF;
		-- SCANCODE is now written based on data sent out by KBDATA
		-- So now it can be split into dig0 and dig1 which can then be compared in a LUT
	END PROCESS;
END;				