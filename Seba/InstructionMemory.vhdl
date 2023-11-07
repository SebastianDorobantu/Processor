LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY IM IS
PORT (
    clk, reset, CS, WR  : in std_logic                                          ;
    address             : in std_logic_vector   (4  DOWNTO 0)                   ;
    Data                : inout std_logic_vector(15 DOWNTO 0)
);
END IM ;



ARCHITECTURE bhv OF IM IS 

BEGIN






END ARCHITECTURE;