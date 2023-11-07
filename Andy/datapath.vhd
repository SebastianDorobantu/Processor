LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

Architecture bhv of datapath is

signal ALU_A_MUX : std_logic;
signal ALU_B_MUX : std_logic;
signal ALU_OUTPUT_SEL : std_logic;

Begin

ALU_A_sel <= 	ALU_A_REG when ALU_A_MUX = '0' else
		ALU_A_IREG when ALU_A_MUX = '1';
ALU_B_sel <= 	ALU_B_REG when ALU_B_MUX = '0' else
		ALU_B_IREG when ALU_B_MUX = '1';
BUS_addr2 <=	ALU_out when ALU_OUTPUT_SEL = '1' else
		"ZZZZZZZZZZZZ";
BUS_data <=	ALU_out when ALU_OUTPUT_SEL = '0' else
		"ZZZZZZZZZZZZ";

 CU_port: CU
	port map(
	---LOBSTER FILE---
	LF_addr1 => regA,
	LF_addr2 => regB, 
	---ALU---
	ALU_control => ALU_cntrl,
	ALU_A_MUX => ALU_A_MUX,
	ALU_B_MUX => ALU_B_MUX ,
	ALU_OUTPUT_SEL => BUS_addr1,
	ALU_OUTPUT_SEL => BUS_data,
	---Arbiter---
	BUS_busy => busy, 
	BUS_request => req0,
	BUS_grant <= gnt0,
+	---BUS ADDRESS 1--
	---TO LF/RAM/I|O--- 
	BUS_addr1 => address, 
	BUS_addr1(11)=> wr_in,
	BUS_addr1(10 DOWNTO 9)=> CS,
	BUS_data => data_in,
	---BUS sync---
	BUS_sync_a1 => BUS_sync_a1,
	BUS_sync_a2 => BUS_sync_a2
	);

arbiter_port: arbiter 
	port map(
	busy <= BUS_busy, 
	req0 <= BUS_request,
	req1 <= BUS_request,
	BUS_sync_a1 => BUS_sync_a1,
	BUS_sync_a2 => BUS_sync_a2, 
	gnt0 => BUS_grant,  
	gnt1 => BUS_grant,
	clk <= clk, 
	reset <= reset,
	); 

RAM_port: ram 
	port map (
	reset => reset
	clk <= clk,
	address <= BUS_addr1, 
	wr_in <= BUS_addr1(11),
	CS    <= BUS_addr1(10 DOWNTO 9),
	data_in <= BUS_data,  
      	data_out => Bus_data
	);
interface_port: interface 
	port map(
	clk <= clk,
	binaryValue => BUS_data,
	function_code => BUS_data
	);

LF_port: register_file 
	port map (
	address <= BUS_addr1, 
	wr_in <= BUS_addr1(11),
	CS    <= BUS_addr1(10 DOWNTO 9), 
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
