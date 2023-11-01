LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pulselength2nextvalue IS
  GENERIC (max_length : integer := 20000);
  PORT  (clk           : IN std_logic;
         reset         : IN std_logic;
         sine_complete : IN std_logic;
         pulse_length  : IN INTEGER RANGE 0 TO max_length;
         next_value    : OUT std_logic
  );
END pulselength2nextvalue;

