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

ARCHITECTURE bhv OF pulselength2nextvalue IS
  SIGNAL cnt_pulse,temp : integer RANGE 0 TO max_length := 0;
  SIGNAL cnt_sine : std_logic_vector (5 DOWNTO 0) := (OTHERS => '0');
BEGIN

PROCESS(clk,reset)
BEGIN
	IF reset = '0' THEN
	  next_value <= '0';
	ELSIF falling_edge(clk) THEN         
		IF temp = 0 THEN
			temp <= pulse_length;
			next_value <= '0';
		ELSIF cnt_sine /= "111111" THEN
			cnt_pulse <= cnt_pulse + 1;
			next_value <= '0';
			IF cnt_pulse = temp THEN
				next_value <= '1';
				cnt_pulse <= 0;
				cnt_sine <= std_logic_vector(unsigned(cnt_sine) + 1);
			END IF;
	  
		ELSIF cnt_sine = "111111" THEN
			IF sine_complete = '1' THEN
				cnt_sine <= std_logic_vector(unsigned(cnt_sine) + 1);
			END IF;
		END IF;
	END IF;
END PROCESS;
END;