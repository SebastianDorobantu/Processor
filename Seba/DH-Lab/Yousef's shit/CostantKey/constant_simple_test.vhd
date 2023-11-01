-- In this version scancode is read on the negative edge of kbclock.
-- It counts the number of negative edges. IF 11 edges are detected the byte is read and byte_read is '1'.
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY constant_simple_test IS
END constant_simple_test;

ARCHITECTURE test OF constant_simple_test IS

  SIGNAL reset     : std_logic := '0';
  SIGNAL clk       : std_logic := '1';
  SIGNAL scancode  : std_logic_vector(7 DOWNTO 0);  
  SIGNAL byte_read : std_logic := '0';
  SIGNAL dig2, dig3: std_logic_vector(6 DOWNTO 0);
  SIGNAL key       : std_logic_vector(7 DOWNTO 0);
  SIGNAL finished  : boolean := FALSE; 

  FUNCTION hex2display (n:std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
  BEGIN
    CASE n IS  --       hgfedcba
	  WHEN "0000" => RETURN "00111111";
	  WHEN "0001" => RETURN "00000110";
	  WHEN "0010" => RETURN "01011011";
	  WHEN "0011" => RETURN "01001111";
	  WHEN "0100" => RETURN "01100110";
	  WHEN "0101" => RETURN "01101101";
	  WHEN "0110" => RETURN "01111101";
	  WHEN "0111" => RETURN "00000111";
	  WHEN "1000" => RETURN "01111111";
	  WHEN "1001" => RETURN "01101111";
	  WHEN "1010" => RETURN "01110111";
	  WHEN "1011" => RETURN "01111100";
	  WHEN "1100" => RETURN "00111001";
	  WHEN "1101" => RETURN "01011110";
	  WHEN "1110" => RETURN "01111001";
	  WHEN OTHERS => RETURN "01110001";			
    END CASE;
  END hex2display;
  
  PROCEDURE wait_N_clk_cyles( SIGNAL clk : std_logic; N : positive) IS
  BEGIN
    FOR i IN 1 TO N LOOP
      WAIT UNTIL falling_edge(clk); -- changes on falling edge.
    END LOOP;
  END wait_N_clk_cyles;
  
  PROCEDURE press_key(SIGNAL clk : std_logic; sc : std_logic_vector(7 DOWNTO 0); 
                      SIGNAL read_key : OUT std_logic; SIGNAL scancode : OUT std_logic_vector(7 DOWNTO 0)) IS
  BEGIN
    read_key <='0';
    wait_N_clk_cyles(clk,7);
    scancode <= sc;
    read_key <='1';
    wait_N_clk_cyles(clk,5);    
  END press_key;

  PROCEDURE release_key(SIGNAL clk : std_logic; sc : std_logic_vector(7 DOWNTO 0); 
                      SIGNAL read_key : OUT std_logic; SIGNAL scancode : OUT std_logic_vector(7 DOWNTO 0)) IS
  BEGIN
    press_key(clk,X"F0",read_key,scancode);
    press_key(clk,sc,read_key,scancode);    
  END release_key;

BEGIN

  clk <= NOT clk AFTER 10 ns WHEN not finished; -- "fast clock"; 50 MHz klok

  ck: ENTITY work.constantkey PORT MAP (
    reset      => reset,
    clk        => clk,
    scancode   => scancode,
    byte_read  => byte_read,
    dig2       => dig2,
    dig3       => dig3,
    key        => key    
    );
  
  PROCESS
  BEGIN
    wait_N_clk_cyles(clk, 3);
    reset<='1';
    
    assert false report "1C" severity note;
    press_key(clk,X"1C",byte_read,scancode);
    press_key(clk,X"1C",byte_read,scancode);   -- repetition of key code; key output should not change
    press_key(clk,X"1C",byte_read,scancode);   -- repetition of key code; key output should not change
    release_key(clk,X"1C",byte_read,scancode); -- key should be X"00";   

    assert false report "32" severity note;
    press_key(clk,X"32",byte_read,scancode);
    release_key(clk,X"32",byte_read,scancode); -- key should be X"00";       

    assert false report "00, no key pressed" severity note;
    press_key(clk,X"00",byte_read,scancode);   -- no key pressed; -- key should be X"00";  
    
    assert false report "4D" severity note;
    press_key(clk,X"4D",byte_read,scancode);
    release_key(clk,X"4D",byte_read,scancode); -- key should be X"00";   
    
    finished <= TRUE;
    WAIT;
  END PROCESS;

END test;