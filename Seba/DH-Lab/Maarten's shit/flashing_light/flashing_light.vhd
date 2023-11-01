LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY flashing_light IS
  PORT (clk, reset : IN std_logic;
        led : INOUT std_logic);
END ENTITY flashing_light;

ARCHITECTURE bhv OF flashing_light IS
  	SIGNAL cnt : std_logic_vector(2 downto 0) := (OTHERS => '0');
BEGIN
  PROCESS(clk,reset)
  BEGIN
    -- NO VHDL CODE HERE
    IF reset='0' THEN
		led <= '0';
	 
    ELSIF falling_edge(clk) THEN
		IF cnt = "11111111111111111111111111" THEN
			IF led = '0' THEN
				led <= '1';
			ELSIF led = '1' THEN
				led <= '0';
			ELSE
				led <= '0';
			END IF;
		END IF;
		cnt <= std_logic_vector(unsigned(cnt)+1);

    END IF;
    -- NO VHDL CODE HERE	
  END PROCESS;
END;
