-- In this version scancode is read on the negative edge of kbclock.
-- It counts the number of negative edges. IF 11 edges are detected the byte is read and byte_read is '1'.
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY readkey_simple_test IS
END readkey_simple_test;

ARCHITECTURE test OF readkey_simple_test IS
  SIGNAL reset : std_logic := '0';
  SIGNAL kbclock : std_logic := '1';
  SIGNAL kbdata : std_logic := '0';  
  SIGNAL dig0, dig1, dig2, dig3: std_logic_vector(6 DOWNTO 0);
  SIGNAL key : std_logic_vector(7 DOWNTO 0);
  SIGNAL clk : std_logic := '0';
  SIGNAL finished : boolean := FALSE;

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
  
  PROCEDURE send_byte (
      CONSTANT byte    : IN std_logic_vector(7 DOWNTO 0);
      SIGNAL kbclock   : OUT std_logic;
      SIGNAL kbdata    : OUT std_logic)
  IS
    VARIABLE odd_parity : std_logic;
    VARIABLE data     : std_logic_vector(10 DOWNTO 0);
    CONSTANT half_period_kbclock : time := 18 us; -- kbclock ~ 27 KHz
  BEGIN
    -- parity
    odd_parity:='1'; -- needed in the next loop to generate ODD parity
    FOR i IN 7 DOWNTO 0 LOOP
      odd_parity := odd_parity XOR byte(i);
    END LOOP;
    data := '1' & odd_parity & byte & '0';
    -- send data
    FOR i IN 0 TO 10 LOOP
	  kbdata <= data(i);
	  kbclock <= '1';
	  WAIT FOR half_period_kbclock;
	  kbclock <= '0';
      WAIT FOR half_period_kbclock;
    END LOOP;
	  kbclock <= '1';
  END send_byte;  
BEGIN

  clk <= NOT clk AFTER 10 ns WHEN not finished; -- "fast clock"; 50 MHz klok

  rk: ENTITY work.readkey PORT MAP (
    clk         => clk,
    reset       => reset,
    kbdata      => kbdata,
    kbclock     => kbclock,
	  key         => key,
	  -- I/O check via 7-segment displays    
    dig0        => dig0, -- show key pressed on display; low nibble
    dig1        => dig1, -- show key pressed on display; high nibble
    dig2        => dig2, -- show key pressed after processed bij FSM; low nibble
    dig3        => dig3  -- show key pressed after processed bij FSM; high nibble    
   );

  PROCESS
  BEGIN
    reset <='0';
    WAIT FOR 40 ns;
    reset <= '1';

    REPORT "key A is pressed and released" SEVERITY note;    
    -- key A: 1C (hex) => 0001 1100 of hexadecimaal X"1C"
    send_byte(X"1C", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"1") AND dig0=hex2display(X"C")) REPORT "expected: 1C (hex)" SEVERITY error;
    WAIT FOR 400 us;
    -- after some time:
    ASSERT (dig3=hex2display(X"1") AND dig2=hex2display(X"C")) REPORT "expected: 1C (hex)" SEVERITY error;
    
    send_byte(X"1C", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"1") AND dig0=hex2display(X"C")) REPORT "expected: 1C (hex)" SEVERITY error;
    WAIT FOR 400 us;
    -- still
    ASSERT (dig3=hex2display(X"1") AND dig2=hex2display(X"C")) REPORT "expected: 1C (hex)" SEVERITY error;   
    
    -- key released started: F0 (hex) => 1111 0000 -- key is released
    send_byte(X"F0", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"F") AND dig0=hex2display(X"0")) REPORT "expected: 32 (hex)" SEVERITY error;    
    WAIT FOR 400 us;    
    -- after some time
    ASSERT (dig3=hex2display(X"0") AND dig2=hex2display(X"0")) REPORT "expected: 00 (hex)" SEVERITY error;      

    -- key A released finished: 1C (hex) => 0001 1100 
    send_byte(X"1C", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"1") AND dig0=hex2display(X"C")) REPORT "expected: 4D (hex)" SEVERITY error;    
    WAIT FOR 400 us;	
 
    -- still
    ASSERT (dig3=hex2display(X"0") AND dig2=hex2display(X"0")) REPORT "expected: 00 (hex)" SEVERITY error;      

    --  press and release another key
    WAIT FOR 1 ms;
    REPORT "key V is pressed and released" SEVERITY note;
    
    -- key V: 2A (hex) => 0010 1010 of hexadecimaal X"2A"
    send_byte(X"2A", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"2") AND dig0=hex2display(X"A")) REPORT "expected: 2A (hex)" SEVERITY error;
    WAIT FOR 400 us;
    -- after some time:
    ASSERT (dig3=hex2display(X"2") AND dig2=hex2display(X"A")) REPORT "expected: 2A (hex)" SEVERITY error;
    
    send_byte(X"2A", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"2") AND dig0=hex2display(X"A")) REPORT "expected: 2A (hex)" SEVERITY error;
    WAIT FOR 400 us;
    -- still
    ASSERT (dig3=hex2display(X"2") AND dig2=hex2display(X"A")) REPORT "expected: 2A (hex)" SEVERITY error;   
    
    -- key released started: F0 (hex) => 1111 0000 -- key is released
    send_byte(X"F0", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"F") AND dig0=hex2display(X"0")) REPORT "expected: 32 (hex)" SEVERITY error;    
    WAIT FOR 400 us;    
    -- after some time
    ASSERT (dig3=hex2display(X"0") AND dig2=hex2display(X"0")) REPORT "expected: 00 (hex)" SEVERITY error;      

    -- key A released finished: 1C (hex) => 0001 1100 
    send_byte(X"2A", kbclock, kbdata);
    ASSERT (dig1=hex2display(X"2") AND dig0=hex2display(X"A")) REPORT "expected: 2A (hex)" SEVERITY error;    
    WAIT FOR 400 us;	
    -- still
    ASSERT (dig3=hex2display(X"0") AND dig2=hex2display(X"0")) REPORT "expected: 00 (hex)" SEVERITY error;  

    WAIT FOR 400 us;
    finished <= TRUE;
    WAIT;
  END PROCESS;

END test;