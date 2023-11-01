LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY key2pulselength IS
  GENERIC (max_length : integer := 20000);
  PORT (key    : IN std_logic_vector(7 DOWNTO 0);
        pulse_length : OUT INTEGER RANGE 0 TO max_length
       );
END key2pulselength;

ARCHITECTURE bhv OF key2pulselength IS
FUNCTION key2samples (n : std_logic_vector(7 DOWNTO 0)) RETURN INTEGER RANGE 0 TO max_length IS
    VARIABLE res : INTEGER;
  BEGIN
    CASE n IS
	    WHEN X"0D" => RETURN 1776;  -- TAB
	    WHEN X"16" => RETURN 1676;  -- 1
	    WHEN X"15" => RETURN 1582;  -- Q
	    WHEN X"1D" => RETURN 1493;  -- W
      WHEN X"26" => RETURN 1409;  -- 3
      WHEN X"24" => RETURN 1330;  -- E
      WHEN X"25" => RETURN 1255;  -- 4
      WHEN X"2D" => RETURN 1185;  -- R
      WHEN X"2C" => RETURN 1118;  -- T
      WHEN X"36" => RETURN 1055;  -- 6
      WHEN X"35" => RETURN 996;   -- Y
      WHEN X"3D" => RETURN 940;   -- 7
      WHEN X"3C" => RETURN 888;   -- U
      WHEN X"3E" => RETURN 838;   -- 8
      WHEN X"43" => RETURN 791;   -- I
      WHEN X"44" => RETURN 747;   -- O
      WHEN X"45" => RETURN 705;   -- 0
      WHEN X"4D" => RETURN 665;   -- P
      WHEN X"4E" => RETURN 628;   -- -
      WHEN X"54" => RETURN 593;   -- [
      WHEN X"5B" => RETURN 559;   -- ]
      WHEN X"5D" => RETURN 528;   -- \
	    WHEN OTHERS => RETURN 0;			
    END CASE;
  END key2samples;

  BEGIN
    pulse_length <= key2samples(key);  
  END;

