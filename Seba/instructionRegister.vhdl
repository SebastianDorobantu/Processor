LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY instructionFile IS
PORT (
    clk, reset, CS, WR  : in std_logic                                          ;
    address             : in std_logic_vector   (4  DOWNTO 0)                   ;
    Data                : inout std_logic_vector(15 DOWNTO 0)
);
END instructionFile ;


ARCHITECTURE bhv of instructionFile IS

TYPE instructionFile IS ARRAY (31 DOWNTO 0) OF std_logic_vector(15 DOWNTO 0)    ;
Signal registers : instructionFile := (OTHERS => (OTHERS => '0'))               ;

BEGIN    
PROCESS (clk, reset)
BEGIN
    IF (reset = '0') THEN
        Data <= (OTHERS => '0')                                                 ;
    ELSIF rising_edge(clk) AND CS = '1' AND WR = '1' THEN
        registers(to_integer(unsigned(address))) <= Data                        ;
    ELSIF rising_edge(clk) AND CS = '1' AND WR = '0' THEN
        Data <= registers(to_integer(unsigned(address)))                        ;
    END IF;
END PROCESS;

END ARCHITECTURE;