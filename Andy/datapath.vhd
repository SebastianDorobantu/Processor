LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity datapath is 
PORT( clk, reset : IN std_logic
);
end datapath;

component CU IS
PORT (

clk, reset              : IN  std_logic                                             ;
--Lobster File
LF_addr1,LF_addr2        : OUT std_logic_vector(2 DOWNTO 0)                         ;
--BUS 
BUS_addr1,BUS_addr2     : OUT std_logic_vector(10 DOWNTO 0)                         ;
BUS_sync_a1,BUS_sync_a2 : IN  std_logic                                             ;
BUS_grant               : IN  std_logic                                             ;
BUS_request             : OUT std_logic                                             ;
BUS_busy                : OUT std_logic                                             ;
--Instruction memory
IM_confirm,IM_wait      : IN  std_logic                                             ;
IM_control              : OUT std_logic_vector(1 DOWNTO 0)                          ;
IM_instruction          : IN  std_logic_vector(15 DOWNTO 0)                         ; 
--ALU 
ALU_flags               : IN  std_logic_vector(2 DOWNTO 0)                          ;                         -- THESE ARE THE STATUS FLAGS: Z,N,V
ALU_control             : OUT std_logic_vector(3 DOWNTO 0)                          ;
ALU_A_MUX,ALU_B_MUX     : OUT std_logic                                             ;
ALU_OUTPUT_SEL          : OUT std_logic                           -- 0 for data and 1 for address
);
END component;

component buttonss IS
    PORT (
        clk   : IN std_logic;
        reset : IN std_logic;
        button1, button2, button3 : IN std_logic;
	data_out : OUT STD_LOGIC_VECTOR(15 downto 0); --data from memory (debug)
        switch0, switch1, switch2, switch3, switch4, switch5, switch6, switch7, switch8, switch9: IN std_logic;
        dig0, dig1, dig2, dig3, dig4, dig5: OUT std_logic_vector(6 DOWNTO 0);
	debug: OUT std_logic;
	btn_inc : in STD_LOGIC; -- Increment button
        btn_dec : in STD_LOGIC; -- Decrement button
	enter: in STD_LOGIC:= '0';
        address : out STD_LOGIC_VECTOR(7 downto 0);
	function_code : OUT std_logic_vector(3 DOWNTO 0);
        LED9, LED8, LED7, LED6, LED0 : OUT std_logic
    );
END component;

component register_file IS 
	PORT(
	clk: IN std_logic;
	wr_enable: IN std_logic;
	--16 bit address from memory/ALU
	data: IN std_logic_vector(15 DOWNTO 0); 
	--selects registers (8 registers)(from bus)
	address: IN std_logic_vector(7 DOWNTO 0); 
	---Assigns register with address (from control unit)
	regA: IN std_logic_vector(2 DOWNTO 0); 
	regB: IN std_logic_vector(2 DOWNTO 0); 
	---16 bit output(out A and B to ALU, outC to main bus)
	outA: OUT std_logic_vector(15 DOWNTO 0); 
	outB: OUT std_logic_vector(15 DOWNTO 0); 
	outC: OUT std_logic_vector(15 DOWNTO 0); 
	---Indicate if output is complete
	outD: OUT std_logic
	); 
END component;

component arbiter is
  port (
   	clk  : in  std_logic;
    	rst  : in  std_logic;
-- inputs --data bus requests
	req0,req1  : in  std_logic;
	busy : in  std_logic;
	BUS_sync_a1,BUS_sync_a2 : OUT  std_logic;			
-- outputs   
   	gnt0 : out std_logic;
	gnt1 : out std_logic
  );
end arbiter;

component RAM_256X16 is
port(
 address: in std_logic_vector(7 downto 0); 
 data_in: in std_logic_vector(15 downto 0);
 write_in: in std_logic; 
 clock: in std_logic; 
 data_out: out std_logic_vector(15 downto 0)
);
end component;

component ALU IS
port(		reset : in std_logic;					
		ALU_cntrl : in std_logic_vector (3 downto 0);				-- OP field
		ALU_A : in std_logic_vector (15 downto 0);				-- input A
		ALU_B : in std_logic_vector (15 downto 0);				-- input B
		complete : in boolean;							-- instruction complete => reset 
		flag_vector : out std_logic_vector (2 downto 0) := (others => '0');	-- 3bit flag vector					
		ALU_out : out std_logic_vector (15 downto 0):= (others => '0')		-- output of ALU
								
		);	
end component;
Architecture bhv of datapath is


--CU buffer signals
signal LF_addr1,LF_addr2 : std_logic_vector(2 downto 0);
signal BUS_addr1,BUS_addr2 : std_logic_vector(10 DOWNTO 0);
signal address : std_logic_vector(10 DOWNTO 0);
signal BUS_sync_a1 : std_logic;
signal BUS_sync_a2 : std_logic;
signal ALU_cntrl : std_logic_vector(3 downto 0);
signal ALU_A_MUX : std_logic;
signal ALU_B_MUX : std_logic;
signal ALU_OUTPUT_SEL : std_logic;
signal busy : std_logic;
signal req0 : std_logic;
signal gnt0, gnt1 : std_logic;
signal CS : std_logic_vector(1 downto 0);
signal wr_in : std_logic;

signal BUS_busy_CU : std_logic;
signal BUS_request_CU : std_logic;

signal BUS_data : std_logic_vector(15 downto 0);

Begin

BUS_busy <= '1' when BUS_busy_CU = '1' or BUS_busy_IO = '1' 

ALU_A_sel <= 	ALU_A_REG when ALU_A_MUX = '0' else
		ALU_A_IREG when ALU_A_MUX = '1';
ALU_B_sel <= 	ALU_B_REG when ALU_B_MUX = '0' else
		ALU_B_IREG when ALU_B_MUX = '1';
BUS_addr2 <=	ALU_out when ALU_OUTPUT_SEL = '1' else --shouldnt be ALU_out
		"ZZZZZZZZZZZZ";
BUS_data <=	ALU_out when ALU_OUTPUT_SEL = '0' else
		"ZZZZZZZZZZZZ";

 CU_port: CU
	port map(
	---LOBSTER FILE---
	LF_addr1 => LF_addr1,
	LF_addr2 => LF_addr2, 
	---ALU---
	ALU_control => ALU_cntrl,
	ALU_A_MUX => ALU_A_MUX,
	ALU_B_MUX => ALU_B_MUX ,
	ALU_OUTPUT_SEL => ALU_OUTPUT_SEL,
	---Arbiter---
	BUS_busy => BUS_busy_CU, 
	BUS_request => BUS_request_CU,
	BUS_grant <= gnt0,
+	---BUS ADDRESS 1--
	---TO LF/RAM/I|O--- 
	BUS_addr1(7 downto 0) => address, 
	BUS_addr1(10)=> wr_in,
	BUS_addr1(9 DOWNTO 8)=> CS,
	BUS_data => data_in,
	---BUS sync---
	BUS_sync_a1 => BUS_sync_a1,
	BUS_sync_a2 => BUS_sync_a2
	);

arbiter_port: arbiter 
	port map(
	busy <= BUS_busy, 
	req0 <= BUS_request,
	req1 <= BUS_request, -- ?
	BUS_sync_a1 => BUS_sync_a1,
	BUS_sync_a2 => BUS_sync_a2, 
	gnt0 => gnt0,  
	gnt1 => gnt1,
	clk <= clk, 
	reset <= reset,
	); 

RAM_port: ram 
	port map (
	clock <= clk,
	BUS_addr1 <= BUS_addr1, 
	BUS_addr2 <= BUS_addr2,
	data_in <= BUS_data,  
    data_out => Bus_data,
	BUS_sync1 => BUS_sync,
	BUS_sync2 => BUS_sync,
	);

interface_port: buttonss 
	port map(
	clk <= clk,
	binaryValue => BUS_data,
	function_code => BUS_data,
	BUS_busy => BUS_busy_CU,
	wr_in <= BUS_addr1(10),
	CS    <= BUS_addr1(9 DOWNTO 8),
	address <= BUS_addr1(7 downto 0)
	data_in <= BUS_data,
    data_out => ram_data_out,
	);

LF_port: register_file 
	port map (
	address <= BUS_addr1(7 downto 0), 
	wr_in <= BUS_addr1(10),
	CS    <= BUS_addr1(9 DOWNTO 8), 
	data_in <= BUS_data, 
	clk <= clk, 
	regA <= LF_addr1,
	regB <= LF_addr2,
	outA => ALU_A_REG,
	outB => ALU_B_REG,
	outC => BUS_addr2
	);

ALU_port: ALU 
	port map(
	flag_vector => ALU_flags, 
	ALU_out => ALU_OUTPUT,
	ALU_cntrl <= ALU_control,
	ALU_A_sel => ALU_A,
	ALU_B_sel => ALU_B
	);
	
end bhv;
