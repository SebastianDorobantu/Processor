LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY sample_generation IS
	GENERIC (high_level_max_length : integer := 20000);
	PORT (
		clk : IN std_logic;
		reset : IN std_logic;
		key : IN std_logic_vector (7 DOWNTO 0);
		DATA : OUT std_logic_vector(15 downto 0)
	);
END ENTITY sample_generation;


ARCHITECTURE bhv OF sample_generation IS 

	SIGNAL pulse_length 			: INTEGER RANGE 0 TO high_level_max_length;
	SIGNAL pulse_length_multiplied  : integer RANGE 0 TO high_level_max_length*32;
	SIGNAL sine_complete 			: std_logic;
	SIGNAL next_value 				: std_logic;

COMPONENT key2pulselength IS
	PORT (
		key : IN std_logic_vector(7 DOWNTO 0);
		pulse_length : OUT INTEGER RANGE 0 TO max_length
	);
END key2pulselength;

COMPONENT mul_power_of_2 IS
	PORT ( clk : IN std_logic;
		reset : IN std_logic;
		key : IN std_logic_vector(7 DOWNTO 0);
		pulse_length : IN integer RANGE 0 TO max_length;
		pulse_length_multiplied : OUT integer RANGE 0 TO max_length*32
	);
END mul_power_of_2;

COMPONENT pulselength2nextvalue IS
	PORT (clk : IN std_logic;
		reset : IN std_logic;
		sine_complete : IN std_logic;
		pulse_length : IN INTEGER RANGE 0 TO max_length;
		next_value : OUT std_logic
	);
END pulselength2nextvalue;

COMPONENT sinegen IS
	PORT(
		next_value : in std_logic;
		clk : in std_logic;
		reset : in std_logic;
		sine_complete : OUT std_logic;
		DATA : OUT std_logic_vector(15 downto 0)
	);
END sinegen;

BEGIN

component1 : key2pulselength
	GENERIC MAP (max_length => high_level_max_length);
	port map(
		key => key,
		pulse_length => pulse_length
);

component2 : mul_power_of_2
	GENERIC MAP (max_length => high_level_max_length);
	port map(
		reset => reset,
		key => key,
		pulse_length => pulse_length,
		pulse_length_multiplied => pulse_length_multiplied

);


component3 : pulselength2nextvalue
	GENERIC MAP (max_length => high_level_max_length);
	port map(
		clk => clk,
		reset => reset,
		sine_complete => sine_complete,
		pulse_length => pulse_length_multiplied,
		next_value => next_value
);

component3 : pulselength2nextvalue
	port map(
		next_value => next_value,
		clk => clk,
		reset => reset,
		sine_complete => sine_complete,
		DATA => DATA
);