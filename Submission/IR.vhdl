LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY IR IS
PORT (
    clk, reset, WR      : in  std_logic                       ;
    Data                : out std_logic_vector(15 DOWNTO 0)   ;
    Data_in             : in  std_logic_vector(15 DOWNTO 0)
);
END IR ;


ARCHITECTURE bhv of IR IS

signal data_stored      : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');

BEGIN    
PROCESS (clk, reset, data_stored)
BEGIN
    IF (reset = '0') THEN
        data_stored <= (OTHERS => '0')                          ;
        Data        <= data_stored                              ;
    ELSIF rising_edge(clk) THEN
        IF WR = '1' THEN
            data_stored <= Data_in                              ;
            Data        <= Data_in                              ;
        ELSE 
            Data <= data_stored                                 ;
        END IF;
    END IF;
END PROCESS;



END ARCHITECTURE;
