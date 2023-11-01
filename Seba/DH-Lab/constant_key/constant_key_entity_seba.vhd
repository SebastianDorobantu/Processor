LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY constantkey IS
  PORT (
    reset                 : IN std_logic;
    clk                   : IN std_logic; -- 50MHz clock
    scancode              : IN std_logic_vector(7 DOWNTO 0);
    byte_read             : IN std_logic;
    dig2, dig3            : OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display dig2 en dig3 (resp high & low).
    key                   : OUT std_logic_vector(7 DOWNTO 0)
    );
END constantkey;

ARCHITECTURE bhv OF constantkey IS
	SIGNAL previous : std_logic := '0';
	SIGNAL new_scancode_detected : std_logic := '0';
	SIGNAL old_scancode : std_logic_vector(7 downto 0) := (OTHERS => '0');

BEGIN
    -- detection of a new scancode; with BYTE_READ synchronization
	PROCESS(clk,reset)
	BEGIN
	IF reset='0' THEN
		new_scancode_detected <= '0';
		previous <= byte_read;
	ELSIF rising_edge(clk) THEN
		IF byte_read = '1' AND previous = '0' THEN
			new_scancode_detected <= '1';
		ELSIF previous = '1' THEN
			new_scancode_detected <= '0';
		END IF;
		previous <= byte_read;
	END IF;
	END PROCESS;
  
	  
	PROCESS(clk,reset)	
	BEGIN
	IF reset='0' THEN
		key <= (OTHERS '0')
	ELSIF rising_edge(clk) THEN
		IF new_scancode_detected = '1' THEN 
			IF scancode = "11110000" OR old_scancode = '11110000' THEN
				key <= (OTHERS '0');
			ELSE
				key <= scancode;
			END IF;
		old_scancode <= scancode;
		END IF;
	END IF;
	END PROCESS;

-- I want to implement functionality for multiple keys being pressed but I need
-- to adapt showkey for that? Are we allowed to do that yet? cuz if soo I'll get on that


END;