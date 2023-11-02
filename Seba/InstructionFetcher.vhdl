LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY instructionFetcher IS
PORT (
    PC                  : IN std_logic_vector(7 DOWNTO 0)
    clk, reset          : IN std_logic;
    Data_req,Data_sub   : INOUT std_logic_vector(15 DOWNTO 0);
    address             : OUT std_logic_vector(7 DOWNTO 0)
);
END instructionFetcher ;

signal PCL : INTEGER RANGE 0 to 31 := 0; --Program Counter Location



ARCHITECTURE bhv of instructionFetcher IS

BEGIN    
PROCESS (clk, reset)
BEGIN
    IF (reset = '0') THEN

    ELSIF rising_edge(clk) THEN
        
END PROCESS;

END ARCHITECTURE;