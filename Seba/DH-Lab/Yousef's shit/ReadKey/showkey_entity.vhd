-- In this version scancode is read on the negative edge of kbclock.
-- It counts the number of negative edges. IF 11 edges are detected the byte is read and byte_read is '1'.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY showkey IS
  PORT (
    reset     : In std_logic; -- asynchronous reset
    kbclock   : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) from keyboard
    kbdata    : IN STD_LOGIC; -- serial data from the keyboard | stable on falling edge of the clock
    dig0, dig1: OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display in Hex dig1 (upper 4 bits) dig0 (lower/least 4 bits)
    scancode  : OUT std_logic_vector(7 DOWNTO 0);
    byte_read : OUT std_logic -- '1' when receiving keyboard bits
    );
END showkey;

ARCHITECTURE bhv OF showkey IS
  constant maxcycle : integer := 10;
  signal cnt : integer RANGE 0 to maxcycle;
  signal key_array: std_logic_vector(10 DOWNTO 0);
  signal temp_scancode: std_logic_vector(7 DOWNTO 0);
  signal temp_byte_read: std_logic :='0';
  signal temp_dig0, temp_dig1 : std_logic_vector(3 DOWNTO 0);
 
   FUNCTION hex2display (n:std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
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
  END hex2display;
BEGIN
PROCESS(kbclock,reset)
BEGIN
-- NO VHDL CODE HERE
    IF reset='0' THEN
        cnt <= 0; 
        key_array <= (others => '0');
        temp_dig0 <= (others => '0');
        temp_dig1 <= (others => '0');
        temp_scancode <= (others => '0');
        temp_byte_read <= '0';
        -- Todo set everything to zero
    ELSIF falling_edge(kbclock) THEN --Since the kbdata is stable on the falling edge of kbclock 
      --collecting the 11 bits  
      key_array(cnt) <= kbdata;
      
       -- counter from 0 to 10
        IF cnt < maxcycle THEN
            cnt <= cnt +1;
        ELSE --  on count 10
            cnt <=0;
            --Copy bits to the output
            temp_scancode <= key_array(8 DOWNTO 1);
            temp_dig1 <= key_array(8 DOWNTO 5);
            temp_dig0 <= key_array(4 DOWNTO 1);
        END IF;
        
      -- byte read detection
        IF cnt = 10 THEN -- last byte received
          temp_byte_read <= '1';
        ELSE -- busy transmitting
          temp_byte_read <='0';
        END IF;  
       
    END IF;
-- NO VHDL CODE HERE
END PROCESS;
-- display scan code
       dig0<= HEX2DISPLAY(temp_dig0);
       dig1<= HEX2DISPLAY(temp_dig1);
       scancode <= temp_scancode;
       byte_read <= temp_byte_read;
-- assign byte_read

END;
