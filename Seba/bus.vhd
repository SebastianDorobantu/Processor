
ENTITY IR IS
PORT (


IM_data             : INOUT std_logic_vector(15 DOWNTO 0)   ;
IM_addr1,IM_addr2   : INOUT std_logic_vector(10 DOWNTO 0)   ;
IM_sync1,IM_sync2   : INOUT std_logic                       ;

CU_data             : INOUT std_logic_vector(15 DOWNTO 0)   ;
CU_addr1,CU_addr2   : INOUT std_logic_vector(10 DOWNTO 0)   ;
CU_sync1,CU_sync2   : INOUT std_logic                       ;

RF_data             : INOUT std_logic_vector(15 DOWNTO 0)   ;
RF_addr1,RF_addr2   : INOUT std_logic_vector(10 DOWNTO 0)   ;
RF_sync1,RF_sync2   : INOUT std_logic                       ;

RAM_data            : INOUT std_logic_vector(15 DOWNTO 0)   ;
RAM_addr1,RAM_addr2 : INOUT std_logic_vector(10 DOWNTO 0)   ;
RAM_sync1,RAM_sync2 : INOUT std_logic                       ;

ALU_data            : INOUT std_logic_vector(15 DOWNTO 0)   ;
ALU_addr2           : INOUT std_logic_vector(10 DOWNTO 0)   ;

IO_data             : INOUT std_logic_vector(15 DOWNTO 0)   ;
IO_addr1,IO_addr2   : INOUT std_logic_vector(10 DOWNTO 0)   ;
IO_sync1,IO_sync2   : INOUT std_logic                       ;  

);
END IR ;


ARCHITECTURE bhv OF CU IS
signal data         : std_logic_vector(15 DOWNTO 0)         ;
signal addr1,addr2  : std_logic_vector(10 DOWNTO 0)         ;
signal sync1,sync2  : std_logic                             ;

BEGIN

data  <= IM_data                                            ;
addr1 <= IM_addr1                                           ;
addr2 <= IM_addr2                                           ;
sync1 <= IM_sync1                                           ; 
sync2 <= IM_sync2                                           ;     

data  <= CU_data                                            ;
addr1 <= CU_addr1                                           ;
addr2 <= CU_addr2                                           ;
sync1 <= CU_sync1                                           ; 
sync2 <= CU_sync2                                           ; 

data  <= RF_data                                            ;
addr1 <= RF_addr1                                           ;
addr2 <= RF_addr2                                           ;
sync1 <= RF_sync1                                           ; 
sync2 <= RF_sync2                                           ; 

data  <= RAM_data                                           ;
addr1 <= RAM_addr1                                          ;
addr2 <= RAM_addr2                                          ;
sync1 <= RAM_sync1                                          ; 
sync2 <= RAM_sync2                                          ;  

data  <= ALU_data                                           ;
addr2 <= ALU_addr2                                          ;

data  <= IO_data                                            ;
addr1 <= IO_addr1                                           ;
addr2 <= IO_addr2                                           ;
sync1 <= IO_sync1                                           ;   
sync2 <= IO_sync2                                           ; 

END bhv;