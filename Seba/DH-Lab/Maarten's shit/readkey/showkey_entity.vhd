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
    scancode  : INOUT std_logic_vector(7 DOWNTO 0);
    byte_read : INOUT std_logic
    );
END showkey;

ARCHITECTURE bhv OF showkey IS
FUNCTION hexConvert (n : std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
    VARIABLE res : std_logic_vector(6 DOWNTO 0);
  BEGIN
    CASE n IS          --        gfedcba; low active
	    WHEN "0000" => RETURN NOT "0111111";
	    WHEN "0001" => RETURN NOT "0000110";
	    WHEN "0010" => RETURN NOT "1011011";
	    WHEN "0011" => RETURN NOT "1001111";
	    WHEN "0100" => RETURN NOT "1100110";
	    WHEN "0101" => RETURN NOT "1101101";
	    WHEN "0110" => RETURN NOT "1111101";
	    WHEN "0111" => RETURN NOT "0000111";
	    WHEN "1000" => RETURN NOT "1111111";
	    WHEN "1001" => RETURN NOT "1101111";
	    WHEN "1010" => RETURN NOT "1110111";
	    WHEN "1011" => RETURN NOT "1111100";
	    WHEN "1100" => RETURN NOT "0111001";
	    WHEN "1101" => RETURN NOT "1011110";
	    WHEN "1110" => RETURN NOT "1111001";
	    WHEN OTHERS => RETURN NOT "1110001";			
    END CASE;
  END hexConvert;
	
BEGIN
	PROCESS(kbclock, reset)
    VARIABLE keycode : std_logic_vector(8 downto 0) := (OTHERS => '0'); -- storage of kbdata + singular startbit
	VARIABLE bitcnt : std_logic_vector(3 downto 0) := (OTHERS => '0'); -- cnt to increment keycode
	BEGIN
		IF reset = '0' THEN -- set all val -> 0 if reset active
			keycode := (OTHERS => '0');
			bitcnt := (OTHERS => '0');
			byte_read <= '0';
			scancode <= (OTHERS => '0');
		ELSIF falling_edge(kbclock) THEN
			IF bitcnt < "1001" THEN
				scancode <= (OTHERS => '0'); -- reset scancode
				keycode(to_integer(unsigned(bitcnt))) := kbdata;
				byte_read <= '0'; -- byte has not been read
			ELSIF bitcnt = "1001" THEN
				scancode <= keycode(8 downto 1); -- read kbdata into scancode
			ElSIF bitcnt = "1010" THEN
				bitcnt := "1111"; -- overflow bitcnt after this statement to 0
				keycode := (OTHERS => '0'); -- reset keycode for next input
				byte_read <= '1'; -- byte has been read
				END IF;			
            bitcnt := std_logic_vector(unsigned(bitcnt) + 1);
		END IF;
	END PROCESS;

	PROCESS(kbclock,reset)
	BEGIN
		IF reset = '0' THEN
			dig0 <= hexConvert("0000");
      		dig1 <= hexConvert("0000");
		ELSIF rising_edge(byte_read) AND scancode /= "11110000" THEN
			dig0 <= hexConvert(scancode(3 downto 0)); -- read scancode into dig0
			dig1 <= hexConvert(scancode(7 downto 4)); -- read scancode into dig1
		END IF;
	END PROCESS;
END;		