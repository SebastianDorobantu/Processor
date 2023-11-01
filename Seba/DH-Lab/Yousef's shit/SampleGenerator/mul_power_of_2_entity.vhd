LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY mul_power_of_2 IS
  GENERIC (max_length : integer := 20000);
  PORT ( clk                     : IN std_logic;
         reset                   : IN std_logic;
         key                     : IN std_logic_vector(7 DOWNTO 0);
	       pulse_length            : IN integer RANGE 0 TO max_length;
	       pulse_length_multiplied : OUT integer RANGE 0 TO max_length*32
	      ); 
END mul_power_of_2;


ARCHITECTURE behaviour OF mul_power_of_2 IS

CONSTANT KeyA : std_logic_vector(7 DOWNTO 0) := X"1C"; 
CONSTANT KeyZ : std_logic_vector := X"1A"; 
SIGNAL octave : INTEGER RANGE 0 to 5 := 2; 

-- A is up an octave
-- Z is down an octave 

BEGIN
PROCESS(clk,reset,key)  --- I am changing octave but it does not depend on octave. 
VARIABLE previousKey : std_logic_vector( 7 DOWNTO 0);
BEGIN

IF reset='0' THEN 
octave <= 2;
previousKey := ( others => '0');

ELSIF falling_edge(clk) THEN 

IF ( previousKey /= key ) THEN 

IF ( key = KeyA AND octave /= 0 ) THEN 
octave <= octave - 1;

ELSIF  ( key = KeyZ AND octave /= 5 ) THEN 
octave <= octave + 1;
END IF;

previousKey := key;
END IF;
END IF;
-- THe process doesn't change when octave gets updated
-- Clock updates on its own.
-- Variable doesn't have a history
END process;
  
PROCESS(octave,pulse_length)  --- Here 
-- I want to change pulse length multiplied BUT I don't want to change pulse length so I can't keep multplying by 8 or dividing by 4 in the end 
-- WE NEED in Brackets The Variables that WE Are USING  
BEGIN
-- CASE
CASE octave IS 
WHEN  0 =>  pulse_length_multiplied <= pulse_length/4;
WHEN  1 =>  pulse_length_multiplied <= pulse_length/2;
WHEN  2 =>  pulse_length_multiplied <= pulse_length;
WHEN  3 =>  pulse_length_multiplied <= pulse_length*2;
WHEN  4 =>  pulse_length_multiplied <= pulse_length*4;
WHEN  5 =>  pulse_length_multiplied <=  pulse_length*8;
WHEN OTHERS =>  pulse_length_multiplied <= pulse_length;
END CASE;
END PROCESS;
END;
