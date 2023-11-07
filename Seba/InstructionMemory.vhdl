LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY IM IS
PORT (
    clk, reset          : in std_logic                          ;

    --- BUS CONNECTIONS

    DB_a1                   : OUT std_logic_vector(10 DOWNTO 0) ;
    BUS_sync_a1             : IN  std_logic                     ;

    BUS_gran,BUS_request    : IN  std_logic                     ;
    BUS_busy                : OUT std_logic                     ;
    BUS_data                : IN  std_logic_vector(15 DOWNTO 0) ;

    -- IR outputs

    IR_instruction          : OUT std_logic_vector(15 DOWNTO 0) ;
    IR_imm                  : OUT std_logic_vector(7  DOWNTO 0) ;

    -- CONTROL
    
    CU_control              : IN  std_logic_vector (1  DOWNTO 0);
    CU_wait,CU_confirm      : OUT std_logic          

);
END IM ;



ARCHITECTURE bhv OF IM IS 

BEGIN






END ARCHITECTURE;