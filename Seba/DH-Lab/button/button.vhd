LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY button IS
  PORT (k : IN std_logic; l : OUT std_logic);
END button;

ARCHITECTURE bhv OF button IS
BEGIN
  l <= NOT k;
END bhv;