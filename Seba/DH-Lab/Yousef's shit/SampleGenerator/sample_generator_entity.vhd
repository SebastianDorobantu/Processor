LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY sample_generation IS
  PORT (
    clk   : IN std_logic;
    reset : IN std_logic;
    key   : IN std_logic_vector(7 DOWNTO 0);
    DATA  : OUT std_logic_vector(15 downto 0) 
		  );		
END ENTITY sample_generation;

ARCHITECTURE bhv of sample_generation IS
  constant max_length : integer := 20000;
  signal pulse_length : integer RANGE 0 TO max_length;
  signal pulse_length_multiplied : integer RANGE 0 to max_length*32;
  signal sine_complete : std_logic;
  signal next_value: std_logic;
  BEGIN
    key2pulselength : entity work.key2pulselength port map (
      key => key,
      --outputs
      pulse_length => pulse_length
    );  

    mul_power_of_2 : entity work.mul_power_of_2 port map (
      clk => clk,
      reset => reset,
      key => key,
      pulse_length => pulse_length,
      --output
      pulse_length_multiplied => pulse_length_multiplied
    );

    pulselength2nextvalue : entity work.pulselength2nextvalue port map (
      clk => clk,
      reset => reset,
      sine_complete =>sine_complete,
      pulse_length => pulse_length,
      --output
      next_value => next_value
    );

    sinegen: entity work.sinegen port map (
      clk => clk,
      reset => reset,
      next_value => next_value,
      --outputs
      sine_complete => sine_complete,
      DATA => DATA
    );
  
  END;
