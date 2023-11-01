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
  SIGNAL old_scancode : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');

FUNCTION hexConvert (n : std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
    VARIABLE res : std_logic_vector(6 DOWNTO 0);
  BEGIN
    CASE n IS         --         gfedcba; low active
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
    -- detection of a new scancode; with BYTE_READ synchronization
  PROCESS(clk,reset)
  BEGIN
    IF reset = '0' THEN
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
    IF reset = '0' THEN
      key <= (OTHERS => '0');
      dig2 <= hexConvert("0000");
      dig3 <= hexConvert("0000");
    ELSIF rising_edge(clk) THEN
      IF new_scancode_detected = '1' THEN
        IF scancode = "11110000" OR old_scancode = "11110000" THEN
          key <= (OTHERS => '0');
          dig2 <= hexConvert("0000");
          dig3 <= hexConvert("0000");
        ELSE
          key <= scancode;
          dig2 <= hexConvert(scancode(3 DOWNTO 0));
          dig3 <= hexConvert(scancode(7 DOWNTO 4));
        END IF;
      old_scancode <= scancode;
      END IF;
    END IF;
  END PROCESS;
END;