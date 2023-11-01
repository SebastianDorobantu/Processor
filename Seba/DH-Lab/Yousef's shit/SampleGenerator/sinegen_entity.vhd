LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
ENTITY sinegen IS
  PORT(
    next_value    : in std_logic;
    clk           : in std_logic;
    reset         : in std_logic;
    sine_complete : OUT std_logic;
    DATA          : OUT std_logic_vector(15 downto 0)
  );
END sinegen;

architecture behaviour OF sinegen IS 
SIGNAL counter: integer RANGE 0 to 63;
SIGNAL temp_DATA : signed(15 DOWNTO 0); 

-- We are making an ARRAY  
-- 16 Values [ A quarter of a Wave ] 
TYPE LUT_TYPE IS ARRAY ( 0 to 15) OF INTEGER;  

--- CONSTANT [Variable Name] : <TYPE> := 

CONSTANT LUT : LUT_TYPE := (
0,836,1663,2472,3254,4000,4702,5353,5945,6472,6928,7308,7609,7825,7956,8000
);  


BEGIN

PROCESS(clk,reset,next_value)
BEGIN

IF reset = '0' THEN 
counter <= 0;
temp_DATA <= ( others => '0');
sine_complete <= '0';
ELSIF falling_edge(clk) THEN

CASE counter IS 
WHEN 0 to 15 => temp_DATA<=  to_signed(LUT(counter),16);  -- DIS GUY is Unsigned, We are using a integer to to make unsigned 
WHEN 16 to 31 => temp_DATA<= to_signed(LUT(31 - counter),16);
WHEN 32 to 47 => temp_DATA<= -to_signed(LUT(counter - 32),16); -- Explain why sign outside
WHEN 48 to 63 => temp_DATA<= -to_signed(LUT(63 - counter) ,16) ; -- Sign has to be outside, can't do arithmetic inside function
WHEN OTHERS  =>  temp_DATA<= ( others => '0');
END CASE;


IF (counter < 63 AND next_value = '1')  THEN
counter <= counter + 1;
sine_complete <= '0';

ElSIF( counter >= 63) THEN
counter <= 0;
sine_complete <= '1';

END IF;
END IF;

END PROCESS;
DATA <= std_logic_vector(temp_DATA);

END;

