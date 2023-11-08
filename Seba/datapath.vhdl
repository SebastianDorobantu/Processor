LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY datapath is
PORT(
    clk,reset       : std_logic ;
    button1, button2, button3 : IN std_logic;
    switch0, switch1, switch2, switch3, switch4, switch5, switch6, switch7, switch8, switch9: IN std_logic;
    LED9, LED8, LED7, LED6, LED0 : OUT std_logic
);
END datapath;

ARCHITECTURE bhv OF datapath IS

BEGIN




END ARCHITECTURE;z