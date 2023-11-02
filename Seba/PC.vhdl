LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ProgramCounter IS
PORT (
    reset,clk   : in std_logic;
    CU_control  : in std_logic_vector (1 DOWNTO 0);
    jmp_addr    : in std_logic_vector (7 DOWNTO 0);
    PC          : out std_logic_vector(7 DOWNTO 0)
);
END ProgramCounter;

ARCHITECTURE bhv of ProgramCounter IS

signal PC_temp         : unsigned(7 DOWNTO 0) := (OTHERS => '0');

BEGIN

PROCESS(clk,reset)

BEGIN

    WITH CU_control SELECT
    PC_temp <=
        PC_temp             WHEN "00",
        PC_temp + 1         WHEN "01",
        PC_temp - 1         WHEN "10",
        unsigned(jmp_addr)  WHEN "11",
        "ZZZZZZZZ"          WHEN OTHERS ;


    PC <= std_logic_vector(PC_temp) WHEN reset /= '0';
    
    PC <= (OTHERS => '0') WHEN reset = '0';
END;