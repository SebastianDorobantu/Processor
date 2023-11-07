LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY InstructionMemory IS
PORT (
    clk, reset          : in std_logic                          ;

    --- BUS CONNECTIONS

    DB_a1                   : OUT std_logic_vector(10 DOWNTO 0) ;
    BUS_sync_a1             : IN  std_logic                     ;

    BUS_gnt                 : IN  std_logic                     ;
    BUS_bsy,BUS_req                : OUT std_logic                     ;
    BUS_Data                : IN  std_logic_vector(15 DOWNTO 0) ;

    -- IR outputs

    IR_instruction          : OUT std_logic_vector(15 DOWNTO 0) ;
    IR_imm                  : OUT std_logic_vector(7  DOWNTO 0) ;

    -- CONTROL
    
    CU_control              : IN  std_logic_vector (1  DOWNTO 0);
    CU_wait,CU_confirm      : OUT std_logic          

);
END InstructionMemory;

ARCHITECTURE bhv OF InstructionMemory IS 

COMPONENT instructionFetcher IS
PORT (
    -- Logic inputs
    PC                      : IN  std_logic_vector(7 DOWNTO 0)  ;
    CU_control              : IN  std_logic_vector(1 DOWNTO 0)  ;
    CU_confirm,CU_wait      : OUT std_logic                     ;
    clk, reset              : IN  std_logic                     ;
    -- BUS CONNECTIONS
    BUS_a1                  : OUT std_logic_vector(10 DOWNTO 0) ;
    BUS_sync_a1             : IN  std_logic                     ;

    BUS_grant               : IN  std_logic                     ;
    BUS_request             : OUT std_logic                     ;
    BUS_busy                : OUT std_logic                     ;
    BUS_data                : IN  std_logic_vector(15 DOWNTO 0) ;

    -- IRegister connections
    
    reg_data                : OUT std_logic_vector(15 DOWNTO 0) ;
    reg_addr                : OUT std_logic_vector(4 DOWNTO 0)  ;
    port_sel,IF_WR,IF_CS    : OUT std_logic := '0'              ;
    IR_WR,IR_CS             : OUT std_logic := '0'              
);
END COMPONENT;


COMPONENT IR IS
PORT (
    clk, reset, CS, WR  : in std_logic                          ;
    Data                : inout std_logic_vector(15 DOWNTO 0)
);
END COMPONENT;


COMPONENT instructionFile IS
PORT (
    clk, reset, CS, WR  : in std_logic                                          ;
    address             : in std_logic_vector   (4  DOWNTO 0)                   ;
    Data                : inout std_logic_vector(15 DOWNTO 0)
);
END COMPONENT ;


COMPONENT ProgramCounter IS
PORT (
    reset,clk   : in std_logic;
    CU_control  : in std_logic_vector (1 DOWNTO 0);
    jmp_addr    : in std_logic_vector (7 DOWNTO 0);
    PC          : out std_logic_vector(7 DOWNTO 0)
);
END COMPONENT;

signal hl_clk,hl_reset  : std_logic;

-- CU connections
signal hl_CU_control    : std_logic_vector (1 DOWNTO 0);
signal hl_CU_wait       : std_logic;
signal hl_CU_confirm    : std_logic;

-- PC connections
signal hl_PC_out        : std_logic_vector(7 DOWNTO 0);

--- BUS connections

signal hl_BUS_a1        : std_logic_vector(10 DOWNTO 0) ; 
signal hl_BUS_sync_a1   : std_logic                     ; 
 
signal hl_BUS_grant     : std_logic                     ; 
signal hl_BUS_request   : std_logic                     ; 
signal hl_BUS_busy      : std_logic                     ; 
signal hl_BUS_data      : std_logic_vector(15 DOWNTO 0) ; 

--- IR connectons

signal hl_IFetch_IF_sig           : std_logic_vector(15 DOWNTO 0) ;
signal hl_reg_addr                : std_logic_vector(4 DOWNTO 0)  ;
signal hl_port_sel                : std_logic := '0'              ;
signal hl_IR_CS,hl_IR_WR          : std_logic := '0'              ; 
signal hl_IF_WR,hl_IF_CS          : std_logic := '0'              ;
signal hl_imm                     : std_logic_vector (7 DOWNTO 0) ;
signal hl_IR_data                 : std_logic_vector (15 DOWNTO 0);

--- IF connections

signal hl_reg_data                : std_logic_vector(15 DOWNTO 0) ;




BEGIN

InstructionFetchers : instructionFetcher 
PORT MAP(
clk                     => hl_clk           ,
reset                   => hl_reset         ,

-- Logic inputs
PC                      => hl_PC_out        ,
CU_control              => hl_CU_control    ,
CU_wait                 => hl_CU_wait       ,
CU_confirm              => hl_CU_confirm    ,
-- BUS CONNECTIONS 
BUS_a1                  => hl_BUS_a1        ,
BUS_sync_a1             => hl_BUS_sync_a1   ,
 
BUS_grant               => hl_BUS_grant     ,
BUS_request             => hl_BUS_request   ,
BUS_busy                => hl_BUS_busy      ,
BUS_data                => hl_BUS_data      ,
 
-- IRegister connectios
                   
reg_data               => hl_IFetch_IF_sig  ,
reg_addr               => hl_reg_addr       , 
port_sel               => hl_port_sel       ,
IR_CS                  => hl_IR_CS          ,
IR_WR                  => hl_IR_WR          ,
IF_CS                  => hl_IF_CS          ,
IF_WR                  => hl_IF_WR
);

ProgramCounters : ProgramCounter
PORT MAP(
    reset       => hl_reset                 ,
    clk         => hl_clk                   ,
    CU_control  => hl_CU_control            ,
    jmp_addr    => hl_imm                   ,
    PC          => hl_PC_out
);

InstructionRegister : IR 
PORT MAP(
    clk         => hl_clk                   ,
    reset       => hl_reset                 ,
    CS          => hl_IR_CS                 ,
    WR          => hl_IR_WR                 ,
    Data        => hl_IR_data     
);


InstructionFiles: instructionFile
PORT MAP(
    clk         => hl_clk                   ,
    reset       => hl_reset                 , 
    CS          => hl_IR_CS                 , 
    WR          => hl_IR_WR                 , 
    address     => hl_reg_addr              , 
    Data        => hl_reg_data              
);

hl_imm <= hl_IR_data(7 DOWNTO 0);

-- WITH hl_port_sel select
-- hl_reg_data <=
--     hl_IFetch_IF_sig    WHEN '0',
--     hl_IR_Out           WHEN '1',
--     (OTHERS => 'Z')     WHEN others;

hl_reg_data <= hl_IFetch_IF_sig ;--WHEN hl_port_sel = '0';
--hl_IR_data  <= hl_reg_data      ; --WHEN hl_port_sel = '1';


hl_clk         <= clk  ;
hl_reset       <= reset ;
DB_a1          <= hl_BUS_a1 ;      
hl_BUS_sync_a1 <= BUS_sync_a1 ;        
hl_BUS_grant   <= BUS_gnt;      
BUS_req        <= hl_BUS_request;  
BUS_bsy        <= hl_BUS_busy;  
hl_BUS_data    <= BUS_Data;  
IR_instruction <= hl_IR_data;  
IR_imm         <= hl_imm;       
hl_CU_control  <= CU_control;       
CU_wait        <= hl_CU_wait;      
CU_confirm     <= hl_CU_confirm;     

END ARCHITECTURE;