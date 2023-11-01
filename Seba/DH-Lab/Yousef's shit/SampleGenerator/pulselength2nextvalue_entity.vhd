LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pulselength2nextvalue IS
  GENERIC (max_length : integer := 20000);
  PORT  (clk           : IN std_logic;
         reset         : IN std_logic;
         sine_complete : IN std_logic;
         pulse_length  : IN INTEGER RANGE 0 TO max_length;
         next_value    : OUT std_logic:='0'
  );
END pulselength2nextvalue;

ARCHITECTURE bhv OF pulselength2nextvalue IS
  constant maxcycle : integer:= 20000;
  constant clkspeed : integer:= 50000000;
  signal cntsize : integer RANGE 0 to maxcycle:=0;
  signal cnt : integer RANGE 0 to maxcycle :=0;
  signal old_pulse_length : INTEGER RANGE 0 TO max_length;
BEGIN 

PROCESS(clk,reset,sine_complete)
variable changecnt : std_logic:='1';
BEGIN
-- NO VHDL CODE HERE
    IF reset='0' THEN
      cnt <= 0;
      next_value<='0';
      cntsize<=0;
      changecnt:='0';
    ELSIF rising_edge(clk) THEN 
        -- check if the sine frequency should change when current sine is completed
        IF (pulse_length /= old_pulse_length) THEN
          changecnt:= '1';
        END IF;
        -- change the countersize when the sine is completed and the frequency changed in the mean time
        IF (changecnt='1' AND sine_complete='1') THEN
          changecnt:='0';
          cntsize<= pulse_length;
          cnt<=0;
        END IF;
        -- save the current pulse_length to the old pulse_length
        old_pulse_length<= pulse_length;
       
       -- counter & next_value assignement 
        IF cnt < cntsize THEN
            cnt <= cnt +1;
            next_value<='0';
        ELSE --  on count 10
            cnt <=0;
            next_value<='1';
        END IF;
    END IF;
-- NO VHDL CODE HERE
END PROCESS;
END;
