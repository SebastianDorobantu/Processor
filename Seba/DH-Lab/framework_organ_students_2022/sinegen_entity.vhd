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
