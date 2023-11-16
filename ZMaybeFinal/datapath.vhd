LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity datapath IS 
PORT( clk, reset : IN std_logic;
		button1, button2, button3 : IN std_logic;
        switch0, switch1, switch2, switch3 : IN std_logic;
        switch9, switch8, switch7, switch6 : IN std_logic
);
END datapath;





---------------------------------------------ARCHITECTURE---------------------------

Architecture bhv of datapath IS

-------------------------------------- COMPONENTS -----------------------	

COMPONENT CU IS
PORT (
clk, reset, debug       : IN  std_logic                                             ;
--Lobster File
LF_addr1,LF_addr2       : OUT std_logic_vector(2 DOWNTO 0)                          ;
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
END COMPONENT;

COMPONENT IO_Unit IS
    PORT (
		clk   : IN std_logic;
		reset : IN std_logic;
		button1, button2, button3 : IN std_logic;
		data_out : OUT STD_LOGIC_VECTOR(15 downto 0); --data from memory (debug)
		switch0, switch1, switch2, switch3, switch4, switch5, switch6, switch7, switch8, switch9: IN std_logic;
		dig0, dig1, dig2, dig3, dig4, dig5: OUT std_logic_vector(6 DOWNTO 0);
		debug: OUT std_logic;
		btn_inc : IN STD_LOGIC; -- Increment button
		btn_dec : IN STD_LOGIC; -- Decrement button
		enter: IN STD_LOGIC:= '0';
		address : OUT STD_LOGIC_VECTOR(7 downto 0);
		function_code : OUT std_logic_vector(3 DOWNTO 0);
		LED9, LED8, LED7, LED6, LED0 : OUT std_logic
    );
END COMPONENT;

COMPONENT register_file IS 
PORT(
	clk: IN std_logic;
	--16 bit address from memory/ALU
	BUS_data: INOUT std_logic_vector(15 DOWNTO 0); 
	--selects registers (from bus)
	BUS_addr1: IN std_logic_vector(10 DOWNTO 0); 
	BUS_addr2: IN std_logic_vector(10 DOWNTO 0); 
	---Assigns register with address (from control unit)
	regA: IN std_logic_vector(2 DOWNTO 0); 
	regB: IN std_logic_vector(2 DOWNTO 0); 
	---16 bit output(out A and B to ALU, BUS_output to main bus)
	outA: OUT std_logic_vector(15 DOWNTO 0); 
	outB: OUT std_logic_vector(15 DOWNTO 0); 
	---Indicate if output is complete
	BUS_sync1: OUT std_logic;
	BUS_sync2: OUT std_logic
	); 
END COMPONENT;

COMPONENT arbiter is
	PORT (
		clk  			: IN  std_logic;
		rst  			: IN  std_logic;
		-- inputs --data bus requests
		req0,req1,req2	: IN  std_logic;
		busy 			: IN  std_logic;
		BUS_sync_a1,BUS_sync_a2 : OUT  std_logic;			
			-- outputs   
		gnt0 			: OUT std_logic;
		gnt1 			: OUT std_logic;
		gnt2			: OUT std_logic
	);
END COMPONENT;

COMPONENT Memory is
	PORT(
		clk, reset: IN std_logic; 
	    cnt			: in std_logic_vector(1 DOWNTO 0); --IF 00 reading whole word; 10 => first 8 bits; 01 => last 8 bits
		BUS_data: INOUT std_logic_vector(15 DOWNTO 0); 
		--selects memory (from bus)
		BUS_addr1: IN std_logic_vector(10 DOWNTO 0); 
		BUS_addr2: IN std_logic_vector(10 DOWNTO 0); 
		---Indicate IF output IS complete
		BUS_sync1: OUT std_logic;
		BUS_sync2: OUT std_logic
	
	);
	END COMPONENT;

COMPONENT ALU IS
PORT(		
		reset : IN std_logic;					
		ALU_cntrl : IN std_logic_vector (3 downto 0);				-- OP field
		ALU_A : IN std_logic_vector (15 downto 0);				-- input A
		ALU_B : IN std_logic_vector (15 downto 0);				-- input B
		flag_vector : OUT std_logic_vector (2 downto 0) := (others => '0');	-- 3bit flag vector					
		ALU_out : OUT std_logic_vector (15 downto 0):= (others => '0')		-- output of ALU
								
		);	
END COMPONENT;

COMPONENT InstructionMemory IS
PORT (
    clk, reset, debug          : IN std_logic                          ;
    --- BUS CONNECTIONS
    DB_a1                   : OUT std_logic_vector(10 DOWNTO 0) ;
    BUS_sync_a1             : IN  std_logic                     ;

    BUS_gnt                 : IN  std_logic                     ;
    BUS_bsy,BUS_req         : OUT std_logic                     ;
    BUS_Data                : IN  std_logic_vector(15 DOWNTO 0) ;
    -- IR outputs
    IR_instruction          : OUT std_logic_vector(15 DOWNTO 0) ;
    IR_imm                  : OUT std_logic_vector(7  DOWNTO 0) ;

    -- CONTROL
    
    CU_control              : IN  std_logic_vector (1  DOWNTO 0);
    CU_wait,CU_confirm      : OUT std_logic          

);
END COMPONENT;

-------------------------------------- END OF COMPONENTS ----------

--CU buffer signals
signal LF_addr1,LF_addr2 : std_logic_vector(2 downto 0);
signal BUS_addr1,BUS_addr2 : std_logic_vector(10 DOWNTO 0);
signal address : std_logic_vector(10 DOWNTO 0);
signal BUS_sync1 : std_logic;
signal BUS_sync2 : std_logic;
signal ALU_control : std_logic_vector(3 downto 0);
signal ALU_OUTPUT : std_logic_vector(15 downto 0);
signal ALU_A_sel : std_logic_vector(15 downto 0);
signal ALU_B_sel : std_logic_vector(15 downto 0);
signal ALU_A_MUX  : std_logic;
signal ALU_B_MUX  : std_logic;
signal ALU_OUTPUT_SEL : std_logic := '0';
signal req0, req1, req2 : std_logic := '0';
signal gnt0, gnt1, gnt2 : std_logic := '0';

signal BUS_busy_line : std_logic := '0';

signal BUS_data : std_logic_vector(15 downto 0) := (OTHERS => '0');

signal ALU_A_REG : std_logic_vector(15 downto 0) := (OTHERS => '0');
signal ALU_B_REG : std_logic_vector(15 downto 0) := (OTHERS => '0');

signal CU_IM_confirm, CU_IM_wait : std_logic;
signal CU_IM_control		: std_logic_vector(1  DOWNTO 0) := (OTHERS => '0');
signal IR_instruction		: std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
signal IR_imm				: std_logic_vector(7  DOWNTO 0) := (OTHERS => '0');

signal ALU_flags : std_logic_vector(2 downto 0);

-- IO signals
signal cnt	 : std_logic_vector(1 DOWNTO 0) := "00"; 
signal debug : std_logic;

BEGIN

-- BUS_busy_line <= '1' when BUS_busy_CU = '1' or BUS_busy_IO = '1' or BUS_busy_IM = '1';

ALU_A_sel <= 	ALU_A_REG when ALU_A_MUX = '0' else
		"00000000" & IR_imm when ALU_A_MUX = '1';
ALU_B_sel <= 	ALU_B_REG when ALU_B_MUX = '0' else
		"00000000" & IR_imm when ALU_B_MUX = '1';

 ControlUnit: CU
	PORT MAP(
	clk   		=> clk,
	reset 		=> reset,
	debug 		=> debug,
	---LOBSTER FILE---
	LF_addr1 	=> LF_addr1,
	LF_addr2 	=> LF_addr2, 
	---Arbiter---
	BUS_busy 	=> BUS_busy_line, 
	BUS_request => req0,
	BUS_grant 	=> gnt0,
	BUS_addr1 	=> BUS_addr1,
	BUS_addr2	=> BUS_addr2,
	--BUS_data 	=> BUS_data,
	---BUS sync---
	BUS_sync_a1 => BUS_sync1,
	BUS_sync_a2 => BUS_sync2, 
	
	--Instruction memory

	IM_confirm 		=> CU_IM_confirm,
	IM_wait	 	  	=> CU_IM_wait,
	IM_control 		=> CU_IM_control,
	IM_instruction 	=> IR_instruction,
	
	---ALU---
	ALU_control 	=> ALU_control,
	ALU_A_MUX 		=> ALU_A_MUX,
	ALU_B_MUX 		=> ALU_B_MUX ,
	ALU_OUTPUT_SEL 	=> ALU_OUTPUT_SEL,
	ALU_flags      	=> ALU_flags
	
	);

	
LobsterFile: register_file 
PORT MAP (
	clk => clk, 
	BUS_addr1 => BUS_addr1, 
	BUS_addr2 => BUS_addr2, 
	BUS_data => BUS_data, 
	regA => LF_addr1,
	regB => LF_addr2,
	outA => ALU_A_REG,
	outB => ALU_B_REG,
	BUS_sync1 => BUS_sync1,
	BUS_sync2 => BUS_sync2
);


BUSarbiter: arbiter 
	PORT MAP(
	clk 		=> clk, 
	rst 		=> reset,	
	busy 		=> BUS_busy_line, 
	req0 		=> req0,
	req1 		=> req1,
	req2 		=> req2,
	BUS_sync_a1 => BUS_sync1,
	BUS_sync_a2 => BUS_sync2, 
	gnt0 		=> gnt0,  
	gnt1 		=> gnt1,
	gnt2 		=> gnt2
); 

MemoryUnit: Memory 
	PORT MAP (
	clk 	  => clk,
	cnt 	  => cnt,
	reset	  => reset,
	BUS_addr1 => BUS_addr1, 
	BUS_addr2 => BUS_addr2,
	BUS_data  => BUS_data,
	BUS_sync1 => BUS_sync1,
	BUS_sync2 => BUS_sync2
	);



ALU_instance: ALU 
	PORT MAP(
	reset => reset,
	ALU_cntrl => ALU_control,
	ALU_A => ALU_A_sel,
	ALU_B => ALU_B_sel,
	flag_vector => ALU_flags, 
	ALU_out => ALU_OUTPUT
	);

IM: InstructionMemory 
	PORT MAP(
	clk 			=> clk,
	reset 			=> reset,
	debug 			=> debug,
	DB_a1   		=> BUS_addr1,
	BUS_sync_a1 	=> BUS_sync1,
	BUS_gnt 		=> gnt1,
	BUS_bsy 		=> BUS_busy_line,
	BUS_req 		=> req1,
	BUS_Data		=> BUS_data,
	IR_instruction	=> IR_instruction,
	IR_imm			=> IR_imm,
    CU_control     	=> CU_IM_control,
	CU_wait			=> CU_IM_wait,
	CU_confirm		=> CU_IM_confirm
);


Interface: IO_Unit 
	PORT MAP(
	clk => clk,
	button1 => button1,
	button2 => button2,
	button3 => button3,
	switch0 => switch0,
	switch1 => switch1,
	switch2 => switch2,
	switch3 => switch3,
	switch6 => switch6,
	switch7 => switch7,
	switch8 => switch8,
	switch9 => switch9,
	reset => reset,
	data => BUS_data,
	BUS_busy => BUS_busy_line,
	BUS_grant => gnt2,
	busreq => req2,
	address => BUS_addr1
	);

	
	
END bhv;
