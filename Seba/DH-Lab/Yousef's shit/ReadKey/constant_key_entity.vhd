LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY constantkey IS
  PORT (
    reset      : IN std_logic;
    clk        : IN std_logic; -- 50MHz clokc
    scancode   : IN std_logic_vector(7 DOWNTO 0);
    byte_read  : IN std_logic;
    dig2, dig3 : OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display dig2 en dig3 (resp high & low).
    key        : OUT std_logic_vector(7 DOWNTO 0)    
    );
END constantkey;

ARCHITECTURE bhv OF constantkey IS

signal new_scancode_detected : boolean := false;
signal temp_key: std_logic_vector(7 DOWNTO 0);
signal old_byte_read: std_logic;
 TYPE states IS(waiting,pressing,break);
 SIGNAL state : states;
 
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

-- detection of a new scancode; with BYTE_READ synchronization
  PROCESS(clk,reset,byte_read) --byte_read_synchronization
  BEGIN
    IF reset='0'THEN
  -- some other variables must be reset
    new_scancode_detected<=false;
    
    
    ELSIF rising_edge(clk) THEN 
    -- IF rising_edge(byte_read) THEN
    IF (old_byte_read='0' AND byte_read='1') THEN
      -- iff the rising_edge of byte_read is detected new_scancode_detected is true.
      
        new_scancode_detected<= true;
        old_byte_read<= byte_read;
      ELSE 
      new_scancode_detected<= false;
      old_byte_read<= byte_read;
      END IF;
    END IF;
  END PROCESS;
   
PROCESS(clk,reset) -- Process for evaluating the state machine
  BEGIN
	
  IF reset = '0' THEN 
   state <=  waiting;
   
  ELSIF rising_edge(clk) THEN 
   
    CASE state IS 
    WHEN waiting =>
      IF  (new_scancode_detected) THEN
        state<=pressing;
        temp_key <= ( others =>'0');
        
      ELSE
        state<=waiting;
        temp_key <= ( others =>'0');
        
      END IF; --- At Waiting GO Pressed if n_s_d = 1 or STAY at Waiting
      
    WHEN pressing => 
      IF  ( (new_scancode_detected) and ( scancode = "11110000" ) ) THEN ---F0
        state<=break;
        temp_key <= ( others =>'0');
      ELSE 
        state<=pressing;
        temp_key <= scancode;
      END IF; --- At Pressing GO to Break if n_s_d = 1 and SCANSCODE = F0
      
    WHEN break => 
      IF (new_scancode_detected) THEN 
        state<=waiting;
        temp_key <= ( others =>'0');
        
      ELSE 
        state <= break;
        temp_key <= ( others =>'0');
        
      END IF; --- At BREAK GO to Waiting if n_s_d = 1 a
  
    WHEN OTHERS => 
      state <= waiting;
      temp_key<= (others =>'0');
    END CASE;
	key<=temp_key;
END IF;
  END PROCESS;
  
  dig2<= HEX2DISPLAY(temp_key(3 DOWNTO 0));
  dig3<= HEX2DISPLAY(temp_key(7 DOWNTO 4)); 
END;
	
