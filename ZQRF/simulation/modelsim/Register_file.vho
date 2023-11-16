-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/16/2023 20:22:51"

-- 
-- Device: Altera 5CSEMA6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_file IS
    PORT (
	clk : IN std_logic;
	BUS_data : INOUT std_logic_vector(15 DOWNTO 0);
	BUS_addr1 : IN std_logic_vector(10 DOWNTO 0);
	BUS_addr2 : IN std_logic_vector(10 DOWNTO 0);
	regA : IN std_logic_vector(2 DOWNTO 0);
	regB : IN std_logic_vector(2 DOWNTO 0);
	outA : OUT std_logic_vector(15 DOWNTO 0);
	outB : OUT std_logic_vector(15 DOWNTO 0);
	BUS_sync1 : OUT std_logic;
	BUS_sync2 : OUT std_logic
	);
END register_file;

-- Design Ports Information
-- BUS_addr1[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[4]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[5]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[5]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[7]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[4]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[5]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[6]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[9]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[10]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[11]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[13]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[14]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[15]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[0]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[4]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[5]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[6]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[7]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[9]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[10]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[11]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[12]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[13]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[14]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_sync1	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_sync2	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[0]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[1]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[4]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[5]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[6]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[8]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[10]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[11]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[12]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[13]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_data[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[0]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[1]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[0]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regB[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[10]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[8]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[9]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[10]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[8]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr2[9]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_addr1[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_file IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_BUS_addr1 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_BUS_addr2 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_regA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_regB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_outA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BUS_sync1 : std_logic;
SIGNAL ww_BUS_sync2 : std_logic;
SIGNAL \BUS_addr1[3]~input_o\ : std_logic;
SIGNAL \BUS_addr1[4]~input_o\ : std_logic;
SIGNAL \BUS_addr1[5]~input_o\ : std_logic;
SIGNAL \BUS_addr1[6]~input_o\ : std_logic;
SIGNAL \BUS_addr1[7]~input_o\ : std_logic;
SIGNAL \BUS_addr2[0]~input_o\ : std_logic;
SIGNAL \BUS_addr2[1]~input_o\ : std_logic;
SIGNAL \BUS_addr2[2]~input_o\ : std_logic;
SIGNAL \BUS_addr2[3]~input_o\ : std_logic;
SIGNAL \BUS_addr2[4]~input_o\ : std_logic;
SIGNAL \BUS_addr2[5]~input_o\ : std_logic;
SIGNAL \BUS_addr2[6]~input_o\ : std_logic;
SIGNAL \BUS_addr2[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \BUS_addr2[8]~input_o\ : std_logic;
SIGNAL \BUS_addr1[9]~input_o\ : std_logic;
SIGNAL \BUS_addr1[8]~input_o\ : std_logic;
SIGNAL \BUS_addr2[9]~input_o\ : std_logic;
SIGNAL \BUS_sync1~1_combout\ : std_logic;
SIGNAL \BUS_sync1~en_q\ : std_logic;
SIGNAL \BUS_sync2~1_combout\ : std_logic;
SIGNAL \BUS_sync2~en_q\ : std_logic;
SIGNAL \BUS_addr1[2]~input_o\ : std_logic;
SIGNAL \BUS_addr1[1]~input_o\ : std_logic;
SIGNAL \BUS_data[0]~input_o\ : std_logic;
SIGNAL \BUS_addr1[0]~input_o\ : std_logic;
SIGNAL \BUS_addr1[10]~input_o\ : std_logic;
SIGNAL \BUS_addr2[10]~input_o\ : std_logic;
SIGNAL \regs~0_combout\ : std_logic;
SIGNAL \regs[0][9]~8_combout\ : std_logic;
SIGNAL \regs[0][0]~q\ : std_logic;
SIGNAL \regs[1][15]~7_combout\ : std_logic;
SIGNAL \regs[1][0]~q\ : std_logic;
SIGNAL \regs[2][0]~feeder_combout\ : std_logic;
SIGNAL \regs[2][15]~5_combout\ : std_logic;
SIGNAL \regs[2][0]~q\ : std_logic;
SIGNAL \regs[3][0]~feeder_combout\ : std_logic;
SIGNAL \regs[3][13]~6_combout\ : std_logic;
SIGNAL \regs[3][0]~q\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \regs[5][3]~2_combout\ : std_logic;
SIGNAL \regs[5][0]~q\ : std_logic;
SIGNAL \regs[4][9]~1_combout\ : std_logic;
SIGNAL \regs[4][0]~q\ : std_logic;
SIGNAL \regs[6][7]~3_combout\ : std_logic;
SIGNAL \regs[6][0]~q\ : std_logic;
SIGNAL \regs[7][4]~4_combout\ : std_logic;
SIGNAL \regs[7][0]~q\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \BUS_data[15]~32_combout\ : std_logic;
SIGNAL \BUS_data[0]~reg0_q\ : std_logic;
SIGNAL \BUS_data[0]~33_combout\ : std_logic;
SIGNAL \BUS_data[0]~en_q\ : std_logic;
SIGNAL \BUS_data[1]~input_o\ : std_logic;
SIGNAL \regs[1][1]~feeder_combout\ : std_logic;
SIGNAL \regs[1][1]~q\ : std_logic;
SIGNAL \regs[2][1]~feeder_combout\ : std_logic;
SIGNAL \regs[2][1]~q\ : std_logic;
SIGNAL \regs[3][1]~q\ : std_logic;
SIGNAL \regs[0][1]~q\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \regs[4][1]~q\ : std_logic;
SIGNAL \regs[7][1]~q\ : std_logic;
SIGNAL \regs[5][1]~q\ : std_logic;
SIGNAL \regs[6][1]~q\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \BUS_data[1]~reg0_q\ : std_logic;
SIGNAL \BUS_data[1]~en_q\ : std_logic;
SIGNAL \BUS_data[2]~input_o\ : std_logic;
SIGNAL \regs[2][2]~feeder_combout\ : std_logic;
SIGNAL \regs[2][2]~q\ : std_logic;
SIGNAL \regs[0][2]~feeder_combout\ : std_logic;
SIGNAL \regs[0][2]~q\ : std_logic;
SIGNAL \regs[3][2]~q\ : std_logic;
SIGNAL \regs[1][2]~q\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \regs[7][2]~q\ : std_logic;
SIGNAL \regs[6][2]~feeder_combout\ : std_logic;
SIGNAL \regs[6][2]~q\ : std_logic;
SIGNAL \regs[4][2]~q\ : std_logic;
SIGNAL \regs[5][2]~feeder_combout\ : std_logic;
SIGNAL \regs[5][2]~q\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \BUS_data[2]~reg0_q\ : std_logic;
SIGNAL \BUS_data[2]~enfeeder_combout\ : std_logic;
SIGNAL \BUS_data[2]~en_q\ : std_logic;
SIGNAL \BUS_data[3]~input_o\ : std_logic;
SIGNAL \regs[7][3]~q\ : std_logic;
SIGNAL \regs[6][3]~q\ : std_logic;
SIGNAL \regs[5][3]~q\ : std_logic;
SIGNAL \regs[4][3]~q\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \regs[3][3]~q\ : std_logic;
SIGNAL \regs[2][3]~feeder_combout\ : std_logic;
SIGNAL \regs[2][3]~q\ : std_logic;
SIGNAL \regs[0][3]~feeder_combout\ : std_logic;
SIGNAL \regs[0][3]~q\ : std_logic;
SIGNAL \regs[1][3]~q\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \BUS_data[3]~reg0_q\ : std_logic;
SIGNAL \BUS_data[3]~en_q\ : std_logic;
SIGNAL \BUS_data[4]~input_o\ : std_logic;
SIGNAL \regs[6][4]~q\ : std_logic;
SIGNAL \regs[7][4]~q\ : std_logic;
SIGNAL \regs[4][4]~q\ : std_logic;
SIGNAL \regs[5][4]~feeder_combout\ : std_logic;
SIGNAL \regs[5][4]~q\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \regs[3][4]~q\ : std_logic;
SIGNAL \regs[0][4]~feeder_combout\ : std_logic;
SIGNAL \regs[0][4]~q\ : std_logic;
SIGNAL \regs[2][4]~q\ : std_logic;
SIGNAL \regs[1][4]~q\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \BUS_data[4]~reg0_q\ : std_logic;
SIGNAL \BUS_data[4]~en_q\ : std_logic;
SIGNAL \BUS_data[5]~input_o\ : std_logic;
SIGNAL \regs[4][5]~q\ : std_logic;
SIGNAL \regs[5][5]~q\ : std_logic;
SIGNAL \regs[7][5]~feeder_combout\ : std_logic;
SIGNAL \regs[7][5]~q\ : std_logic;
SIGNAL \regs[6][5]~q\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \regs[3][5]~feeder_combout\ : std_logic;
SIGNAL \regs[3][5]~q\ : std_logic;
SIGNAL \regs[1][5]~feeder_combout\ : std_logic;
SIGNAL \regs[1][5]~q\ : std_logic;
SIGNAL \regs[2][5]~feeder_combout\ : std_logic;
SIGNAL \regs[2][5]~q\ : std_logic;
SIGNAL \regs[0][5]~feeder_combout\ : std_logic;
SIGNAL \regs[0][5]~q\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \BUS_data[5]~reg0_q\ : std_logic;
SIGNAL \BUS_data[5]~en_q\ : std_logic;
SIGNAL \BUS_data[6]~input_o\ : std_logic;
SIGNAL \regs[3][6]~q\ : std_logic;
SIGNAL \regs[2][6]~q\ : std_logic;
SIGNAL \regs[1][6]~q\ : std_logic;
SIGNAL \regs[0][6]~q\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \regs[5][6]~q\ : std_logic;
SIGNAL \regs[6][6]~q\ : std_logic;
SIGNAL \regs[7][6]~q\ : std_logic;
SIGNAL \regs[4][6]~q\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \BUS_data[6]~reg0_q\ : std_logic;
SIGNAL \BUS_data[6]~en_q\ : std_logic;
SIGNAL \BUS_data[7]~input_o\ : std_logic;
SIGNAL \regs[1][7]~q\ : std_logic;
SIGNAL \regs[3][7]~q\ : std_logic;
SIGNAL \regs[2][7]~q\ : std_logic;
SIGNAL \regs[0][7]~q\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \regs[4][7]~feeder_combout\ : std_logic;
SIGNAL \regs[4][7]~q\ : std_logic;
SIGNAL \regs[5][7]~feeder_combout\ : std_logic;
SIGNAL \regs[5][7]~q\ : std_logic;
SIGNAL \regs[7][7]~feeder_combout\ : std_logic;
SIGNAL \regs[7][7]~q\ : std_logic;
SIGNAL \regs[6][7]~q\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \BUS_data[7]~reg0_q\ : std_logic;
SIGNAL \BUS_data[7]~en_q\ : std_logic;
SIGNAL \BUS_data[8]~input_o\ : std_logic;
SIGNAL \regs[3][8]~feeder_combout\ : std_logic;
SIGNAL \regs[3][8]~q\ : std_logic;
SIGNAL \regs[1][8]~q\ : std_logic;
SIGNAL \regs[2][8]~feeder_combout\ : std_logic;
SIGNAL \regs[2][8]~q\ : std_logic;
SIGNAL \regs[0][8]~q\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \regs[6][8]~q\ : std_logic;
SIGNAL \regs[5][8]~q\ : std_logic;
SIGNAL \regs[4][8]~feeder_combout\ : std_logic;
SIGNAL \regs[4][8]~q\ : std_logic;
SIGNAL \regs[7][8]~q\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \BUS_data[8]~reg0_q\ : std_logic;
SIGNAL \BUS_data[8]~en_q\ : std_logic;
SIGNAL \BUS_data[9]~input_o\ : std_logic;
SIGNAL \regs[1][9]~q\ : std_logic;
SIGNAL \regs[0][9]~q\ : std_logic;
SIGNAL \regs[2][9]~feeder_combout\ : std_logic;
SIGNAL \regs[2][9]~q\ : std_logic;
SIGNAL \regs[3][9]~feeder_combout\ : std_logic;
SIGNAL \regs[3][9]~q\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \regs[5][9]~feeder_combout\ : std_logic;
SIGNAL \regs[5][9]~q\ : std_logic;
SIGNAL \regs[4][9]~feeder_combout\ : std_logic;
SIGNAL \regs[4][9]~q\ : std_logic;
SIGNAL \regs[6][9]~q\ : std_logic;
SIGNAL \regs[7][9]~feeder_combout\ : std_logic;
SIGNAL \regs[7][9]~q\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \BUS_data[9]~reg0_q\ : std_logic;
SIGNAL \BUS_data[9]~en_q\ : std_logic;
SIGNAL \BUS_data[10]~input_o\ : std_logic;
SIGNAL \regs[4][10]~q\ : std_logic;
SIGNAL \regs[6][10]~feeder_combout\ : std_logic;
SIGNAL \regs[6][10]~q\ : std_logic;
SIGNAL \regs[5][10]~feeder_combout\ : std_logic;
SIGNAL \regs[5][10]~q\ : std_logic;
SIGNAL \regs[7][10]~q\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \regs[2][10]~q\ : std_logic;
SIGNAL \regs[0][10]~q\ : std_logic;
SIGNAL \regs[1][10]~q\ : std_logic;
SIGNAL \regs[3][10]~q\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \BUS_data[10]~reg0_q\ : std_logic;
SIGNAL \BUS_data[10]~en_q\ : std_logic;
SIGNAL \BUS_data[11]~input_o\ : std_logic;
SIGNAL \regs[6][11]~q\ : std_logic;
SIGNAL \regs[5][11]~q\ : std_logic;
SIGNAL \regs[7][11]~q\ : std_logic;
SIGNAL \regs[4][11]~q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \regs[3][11]~q\ : std_logic;
SIGNAL \regs[2][11]~q\ : std_logic;
SIGNAL \regs[1][11]~q\ : std_logic;
SIGNAL \regs[0][11]~feeder_combout\ : std_logic;
SIGNAL \regs[0][11]~q\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \BUS_data[11]~reg0_q\ : std_logic;
SIGNAL \BUS_data[11]~en_q\ : std_logic;
SIGNAL \BUS_data[12]~input_o\ : std_logic;
SIGNAL \regs[0][12]~feeder_combout\ : std_logic;
SIGNAL \regs[0][12]~q\ : std_logic;
SIGNAL \regs[3][12]~q\ : std_logic;
SIGNAL \regs[1][12]~q\ : std_logic;
SIGNAL \regs[2][12]~q\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \regs[5][12]~q\ : std_logic;
SIGNAL \regs[4][12]~q\ : std_logic;
SIGNAL \regs[7][12]~q\ : std_logic;
SIGNAL \regs[6][12]~q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \BUS_data[12]~reg0_q\ : std_logic;
SIGNAL \BUS_data[12]~enfeeder_combout\ : std_logic;
SIGNAL \BUS_data[12]~en_q\ : std_logic;
SIGNAL \BUS_data[13]~input_o\ : std_logic;
SIGNAL \regs[5][13]~q\ : std_logic;
SIGNAL \regs[4][13]~q\ : std_logic;
SIGNAL \regs[7][13]~q\ : std_logic;
SIGNAL \regs[6][13]~q\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \regs[0][13]~q\ : std_logic;
SIGNAL \regs[1][13]~q\ : std_logic;
SIGNAL \regs[3][13]~feeder_combout\ : std_logic;
SIGNAL \regs[3][13]~q\ : std_logic;
SIGNAL \regs[2][13]~feeder_combout\ : std_logic;
SIGNAL \regs[2][13]~q\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \BUS_data[13]~reg0_q\ : std_logic;
SIGNAL \BUS_data[13]~enfeeder_combout\ : std_logic;
SIGNAL \BUS_data[13]~en_q\ : std_logic;
SIGNAL \BUS_data[14]~input_o\ : std_logic;
SIGNAL \regs[0][14]~q\ : std_logic;
SIGNAL \regs[1][14]~q\ : std_logic;
SIGNAL \regs[3][14]~q\ : std_logic;
SIGNAL \regs[2][14]~q\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \regs[5][14]~q\ : std_logic;
SIGNAL \regs[4][14]~q\ : std_logic;
SIGNAL \regs[6][14]~q\ : std_logic;
SIGNAL \regs[7][14]~q\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \BUS_data[14]~reg0_q\ : std_logic;
SIGNAL \BUS_data[14]~en_q\ : std_logic;
SIGNAL \BUS_data[15]~input_o\ : std_logic;
SIGNAL \regs[7][15]~q\ : std_logic;
SIGNAL \regs[5][15]~q\ : std_logic;
SIGNAL \regs[6][15]~q\ : std_logic;
SIGNAL \regs[4][15]~q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \regs[0][15]~q\ : std_logic;
SIGNAL \regs[1][15]~q\ : std_logic;
SIGNAL \regs[2][15]~feeder_combout\ : std_logic;
SIGNAL \regs[2][15]~q\ : std_logic;
SIGNAL \regs[3][15]~feeder_combout\ : std_logic;
SIGNAL \regs[3][15]~q\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \BUS_data[15]~reg0_q\ : std_logic;
SIGNAL \BUS_data[15]~enfeeder_combout\ : std_logic;
SIGNAL \BUS_data[15]~en_q\ : std_logic;
SIGNAL \regA[2]~input_o\ : std_logic;
SIGNAL \regA[0]~input_o\ : std_logic;
SIGNAL \regA[1]~input_o\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \outA[0]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \outA[1]~reg0_q\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \outA[2]~reg0_q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \outA[3]~reg0_q\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \outA[4]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \outA[5]~reg0_q\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \outA[6]~reg0_q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \outA[7]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \outA[8]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \outA[9]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \outA[10]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \outA[11]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \outA[12]~reg0_q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \outA[13]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \outA[14]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \outA[15]~reg0_q\ : std_logic;
SIGNAL \regB[2]~input_o\ : std_logic;
SIGNAL \regB[0]~input_o\ : std_logic;
SIGNAL \regB[1]~input_o\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \outB[0]~reg0_q\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \outB[1]~reg0_q\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \outB[2]~reg0_q\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \outB[3]~reg0_q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \outB[4]~reg0_q\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \outB[5]~reg0_q\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \outB[6]~reg0_q\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \outB[7]~reg0_q\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \outB[8]~reg0_q\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \outB[9]~reg0_q\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \outB[10]~reg0_q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \outB[11]~reg0_q\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \outB[12]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \outB[13]~reg0_q\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \outB[14]~reg0_q\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \outB[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_BUS_addr1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_addr1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_regB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_regB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_regB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_regA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_regA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_regA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BUS_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \ALT_INV_BUS_data[0]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs~0_combout\ : std_logic;
SIGNAL \ALT_INV_BUS_sync2~en_q\ : std_logic;
SIGNAL \ALT_INV_BUS_sync1~en_q\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][11]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_regs[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_regs[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_regs[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_regs[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_regs[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_regs[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_regs[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_regs[4][0]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_BUS_addr1 <= BUS_addr1;
ww_BUS_addr2 <= BUS_addr2;
ww_regA <= regA;
ww_regB <= regB;
outA <= ww_outA;
outB <= ww_outB;
BUS_sync1 <= ww_BUS_sync1;
BUS_sync2 <= ww_BUS_sync2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_BUS_addr1[2]~input_o\ <= NOT \BUS_addr1[2]~input_o\;
\ALT_INV_BUS_addr1[1]~input_o\ <= NOT \BUS_addr1[1]~input_o\;
\ALT_INV_BUS_addr2[9]~input_o\ <= NOT \BUS_addr2[9]~input_o\;
\ALT_INV_BUS_addr2[8]~input_o\ <= NOT \BUS_addr2[8]~input_o\;
\ALT_INV_BUS_addr2[10]~input_o\ <= NOT \BUS_addr2[10]~input_o\;
\ALT_INV_BUS_addr1[9]~input_o\ <= NOT \BUS_addr1[9]~input_o\;
\ALT_INV_BUS_addr1[8]~input_o\ <= NOT \BUS_addr1[8]~input_o\;
\ALT_INV_BUS_addr1[10]~input_o\ <= NOT \BUS_addr1[10]~input_o\;
\ALT_INV_BUS_addr1[0]~input_o\ <= NOT \BUS_addr1[0]~input_o\;
\ALT_INV_regB[1]~input_o\ <= NOT \regB[1]~input_o\;
\ALT_INV_regB[0]~input_o\ <= NOT \regB[0]~input_o\;
\ALT_INV_regB[2]~input_o\ <= NOT \regB[2]~input_o\;
\ALT_INV_regA[1]~input_o\ <= NOT \regA[1]~input_o\;
\ALT_INV_regA[0]~input_o\ <= NOT \regA[0]~input_o\;
\ALT_INV_regA[2]~input_o\ <= NOT \regA[2]~input_o\;
\ALT_INV_BUS_data[15]~input_o\ <= NOT \BUS_data[15]~input_o\;
\ALT_INV_BUS_data[13]~input_o\ <= NOT \BUS_data[13]~input_o\;
\ALT_INV_BUS_data[12]~input_o\ <= NOT \BUS_data[12]~input_o\;
\ALT_INV_BUS_data[11]~input_o\ <= NOT \BUS_data[11]~input_o\;
\ALT_INV_BUS_data[10]~input_o\ <= NOT \BUS_data[10]~input_o\;
\ALT_INV_BUS_data[9]~input_o\ <= NOT \BUS_data[9]~input_o\;
\ALT_INV_BUS_data[8]~input_o\ <= NOT \BUS_data[8]~input_o\;
\ALT_INV_BUS_data[7]~input_o\ <= NOT \BUS_data[7]~input_o\;
\ALT_INV_BUS_data[5]~input_o\ <= NOT \BUS_data[5]~input_o\;
\ALT_INV_BUS_data[4]~input_o\ <= NOT \BUS_data[4]~input_o\;
\ALT_INV_BUS_data[3]~input_o\ <= NOT \BUS_data[3]~input_o\;
\ALT_INV_BUS_data[2]~input_o\ <= NOT \BUS_data[2]~input_o\;
\ALT_INV_BUS_data[1]~input_o\ <= NOT \BUS_data[1]~input_o\;
\ALT_INV_BUS_data[0]~input_o\ <= NOT \BUS_data[0]~input_o\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux35~1_combout\ <= NOT \Mux35~1_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\ALT_INV_BUS_data[0]~33_combout\ <= NOT \BUS_data[0]~33_combout\;
\ALT_INV_Mux47~1_combout\ <= NOT \Mux47~1_combout\;
\ALT_INV_Mux47~0_combout\ <= NOT \Mux47~0_combout\;
\ALT_INV_regs~0_combout\ <= NOT \regs~0_combout\;
\ALT_INV_BUS_sync2~en_q\ <= NOT \BUS_sync2~en_q\;
\ALT_INV_BUS_sync1~en_q\ <= NOT \BUS_sync1~en_q\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_regs[0][15]~q\ <= NOT \regs[0][15]~q\;
\ALT_INV_regs[1][15]~q\ <= NOT \regs[1][15]~q\;
\ALT_INV_regs[3][15]~q\ <= NOT \regs[3][15]~q\;
\ALT_INV_regs[2][15]~q\ <= NOT \regs[2][15]~q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_regs[7][15]~q\ <= NOT \regs[7][15]~q\;
\ALT_INV_regs[6][15]~q\ <= NOT \regs[6][15]~q\;
\ALT_INV_regs[5][15]~q\ <= NOT \regs[5][15]~q\;
\ALT_INV_regs[4][15]~q\ <= NOT \regs[4][15]~q\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_regs[0][14]~q\ <= NOT \regs[0][14]~q\;
\ALT_INV_regs[1][14]~q\ <= NOT \regs[1][14]~q\;
\ALT_INV_regs[3][14]~q\ <= NOT \regs[3][14]~q\;
\ALT_INV_regs[2][14]~q\ <= NOT \regs[2][14]~q\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_regs[7][14]~q\ <= NOT \regs[7][14]~q\;
\ALT_INV_regs[6][14]~q\ <= NOT \regs[6][14]~q\;
\ALT_INV_regs[5][14]~q\ <= NOT \regs[5][14]~q\;
\ALT_INV_regs[4][14]~q\ <= NOT \regs[4][14]~q\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_regs[0][13]~q\ <= NOT \regs[0][13]~q\;
\ALT_INV_regs[1][13]~q\ <= NOT \regs[1][13]~q\;
\ALT_INV_regs[3][13]~q\ <= NOT \regs[3][13]~q\;
\ALT_INV_regs[2][13]~q\ <= NOT \regs[2][13]~q\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_regs[7][13]~q\ <= NOT \regs[7][13]~q\;
\ALT_INV_regs[6][13]~q\ <= NOT \regs[6][13]~q\;
\ALT_INV_regs[5][13]~q\ <= NOT \regs[5][13]~q\;
\ALT_INV_regs[4][13]~q\ <= NOT \regs[4][13]~q\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_regs[0][12]~q\ <= NOT \regs[0][12]~q\;
\ALT_INV_regs[1][12]~q\ <= NOT \regs[1][12]~q\;
\ALT_INV_regs[3][12]~q\ <= NOT \regs[3][12]~q\;
\ALT_INV_regs[2][12]~q\ <= NOT \regs[2][12]~q\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_regs[7][12]~q\ <= NOT \regs[7][12]~q\;
\ALT_INV_regs[6][12]~q\ <= NOT \regs[6][12]~q\;
\ALT_INV_regs[5][12]~q\ <= NOT \regs[5][12]~q\;
\ALT_INV_regs[4][12]~q\ <= NOT \regs[4][12]~q\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_regs[0][11]~q\ <= NOT \regs[0][11]~q\;
\ALT_INV_regs[1][11]~q\ <= NOT \regs[1][11]~q\;
\ALT_INV_regs[3][11]~q\ <= NOT \regs[3][11]~q\;
\ALT_INV_regs[2][11]~q\ <= NOT \regs[2][11]~q\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_regs[7][11]~q\ <= NOT \regs[7][11]~q\;
\ALT_INV_regs[6][11]~q\ <= NOT \regs[6][11]~q\;
\ALT_INV_regs[5][11]~q\ <= NOT \regs[5][11]~q\;
\ALT_INV_regs[4][11]~q\ <= NOT \regs[4][11]~q\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_regs[0][10]~q\ <= NOT \regs[0][10]~q\;
\ALT_INV_regs[1][10]~q\ <= NOT \regs[1][10]~q\;
\ALT_INV_regs[3][10]~q\ <= NOT \regs[3][10]~q\;
\ALT_INV_regs[2][10]~q\ <= NOT \regs[2][10]~q\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_regs[7][10]~q\ <= NOT \regs[7][10]~q\;
\ALT_INV_regs[6][10]~q\ <= NOT \regs[6][10]~q\;
\ALT_INV_regs[5][10]~q\ <= NOT \regs[5][10]~q\;
\ALT_INV_regs[4][10]~q\ <= NOT \regs[4][10]~q\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_regs[0][9]~q\ <= NOT \regs[0][9]~q\;
\ALT_INV_regs[1][9]~q\ <= NOT \regs[1][9]~q\;
\ALT_INV_regs[3][9]~q\ <= NOT \regs[3][9]~q\;
\ALT_INV_regs[2][9]~q\ <= NOT \regs[2][9]~q\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_regs[7][9]~q\ <= NOT \regs[7][9]~q\;
\ALT_INV_regs[6][9]~q\ <= NOT \regs[6][9]~q\;
\ALT_INV_regs[5][9]~q\ <= NOT \regs[5][9]~q\;
\ALT_INV_regs[4][9]~q\ <= NOT \regs[4][9]~q\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_regs[0][8]~q\ <= NOT \regs[0][8]~q\;
\ALT_INV_regs[1][8]~q\ <= NOT \regs[1][8]~q\;
\ALT_INV_regs[3][8]~q\ <= NOT \regs[3][8]~q\;
\ALT_INV_regs[2][8]~q\ <= NOT \regs[2][8]~q\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_regs[7][8]~q\ <= NOT \regs[7][8]~q\;
\ALT_INV_regs[6][8]~q\ <= NOT \regs[6][8]~q\;
\ALT_INV_regs[5][8]~q\ <= NOT \regs[5][8]~q\;
\ALT_INV_regs[4][8]~q\ <= NOT \regs[4][8]~q\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_regs[0][7]~q\ <= NOT \regs[0][7]~q\;
\ALT_INV_regs[1][7]~q\ <= NOT \regs[1][7]~q\;
\ALT_INV_regs[3][7]~q\ <= NOT \regs[3][7]~q\;
\ALT_INV_regs[2][7]~q\ <= NOT \regs[2][7]~q\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_regs[7][7]~q\ <= NOT \regs[7][7]~q\;
\ALT_INV_regs[6][7]~q\ <= NOT \regs[6][7]~q\;
\ALT_INV_regs[5][7]~q\ <= NOT \regs[5][7]~q\;
\ALT_INV_regs[4][7]~q\ <= NOT \regs[4][7]~q\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_regs[0][6]~q\ <= NOT \regs[0][6]~q\;
\ALT_INV_regs[1][6]~q\ <= NOT \regs[1][6]~q\;
\ALT_INV_regs[3][6]~q\ <= NOT \regs[3][6]~q\;
\ALT_INV_regs[2][6]~q\ <= NOT \regs[2][6]~q\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_regs[7][6]~q\ <= NOT \regs[7][6]~q\;
\ALT_INV_regs[6][6]~q\ <= NOT \regs[6][6]~q\;
\ALT_INV_regs[5][6]~q\ <= NOT \regs[5][6]~q\;
\ALT_INV_regs[4][6]~q\ <= NOT \regs[4][6]~q\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_regs[0][5]~q\ <= NOT \regs[0][5]~q\;
\ALT_INV_regs[1][5]~q\ <= NOT \regs[1][5]~q\;
\ALT_INV_regs[3][5]~q\ <= NOT \regs[3][5]~q\;
\ALT_INV_regs[2][5]~q\ <= NOT \regs[2][5]~q\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_regs[7][5]~q\ <= NOT \regs[7][5]~q\;
\ALT_INV_regs[6][5]~q\ <= NOT \regs[6][5]~q\;
\ALT_INV_regs[5][5]~q\ <= NOT \regs[5][5]~q\;
\ALT_INV_regs[4][5]~q\ <= NOT \regs[4][5]~q\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_regs[0][4]~q\ <= NOT \regs[0][4]~q\;
\ALT_INV_regs[1][4]~q\ <= NOT \regs[1][4]~q\;
\ALT_INV_regs[3][4]~q\ <= NOT \regs[3][4]~q\;
\ALT_INV_regs[2][4]~q\ <= NOT \regs[2][4]~q\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_regs[7][4]~q\ <= NOT \regs[7][4]~q\;
\ALT_INV_regs[6][4]~q\ <= NOT \regs[6][4]~q\;
\ALT_INV_regs[5][4]~q\ <= NOT \regs[5][4]~q\;
\ALT_INV_regs[4][4]~q\ <= NOT \regs[4][4]~q\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_regs[0][3]~q\ <= NOT \regs[0][3]~q\;
\ALT_INV_regs[1][3]~q\ <= NOT \regs[1][3]~q\;
\ALT_INV_regs[3][3]~q\ <= NOT \regs[3][3]~q\;
\ALT_INV_regs[2][3]~q\ <= NOT \regs[2][3]~q\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_regs[7][3]~q\ <= NOT \regs[7][3]~q\;
\ALT_INV_regs[6][3]~q\ <= NOT \regs[6][3]~q\;
\ALT_INV_regs[5][3]~q\ <= NOT \regs[5][3]~q\;
\ALT_INV_regs[4][3]~q\ <= NOT \regs[4][3]~q\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_regs[0][2]~q\ <= NOT \regs[0][2]~q\;
\ALT_INV_regs[1][2]~q\ <= NOT \regs[1][2]~q\;
\ALT_INV_regs[3][2]~q\ <= NOT \regs[3][2]~q\;
\ALT_INV_regs[2][2]~q\ <= NOT \regs[2][2]~q\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_regs[7][2]~q\ <= NOT \regs[7][2]~q\;
\ALT_INV_regs[6][2]~q\ <= NOT \regs[6][2]~q\;
\ALT_INV_regs[5][2]~q\ <= NOT \regs[5][2]~q\;
\ALT_INV_regs[4][2]~q\ <= NOT \regs[4][2]~q\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_regs[0][1]~q\ <= NOT \regs[0][1]~q\;
\ALT_INV_regs[1][1]~q\ <= NOT \regs[1][1]~q\;
\ALT_INV_regs[3][1]~q\ <= NOT \regs[3][1]~q\;
\ALT_INV_regs[2][1]~q\ <= NOT \regs[2][1]~q\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_regs[7][1]~q\ <= NOT \regs[7][1]~q\;
\ALT_INV_regs[6][1]~q\ <= NOT \regs[6][1]~q\;
\ALT_INV_regs[5][1]~q\ <= NOT \regs[5][1]~q\;
\ALT_INV_regs[4][1]~q\ <= NOT \regs[4][1]~q\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_regs[0][0]~q\ <= NOT \regs[0][0]~q\;
\ALT_INV_regs[1][0]~q\ <= NOT \regs[1][0]~q\;
\ALT_INV_regs[3][0]~q\ <= NOT \regs[3][0]~q\;
\ALT_INV_regs[2][0]~q\ <= NOT \regs[2][0]~q\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_regs[7][0]~q\ <= NOT \regs[7][0]~q\;
\ALT_INV_regs[6][0]~q\ <= NOT \regs[6][0]~q\;
\ALT_INV_regs[5][0]~q\ <= NOT \regs[5][0]~q\;
\ALT_INV_regs[4][0]~q\ <= NOT \regs[4][0]~q\;

-- Location: IOOBUF_X50_Y0_N59
\BUS_sync1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => \BUS_sync1~en_q\,
	devoe => ww_devoe,
	o => ww_BUS_sync1);

-- Location: IOOBUF_X72_Y0_N2
\BUS_sync2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => \BUS_sync2~en_q\,
	devoe => ww_devoe,
	o => ww_BUS_sync2);

-- Location: IOOBUF_X50_Y0_N93
\outA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(0));

-- Location: IOOBUF_X38_Y0_N53
\outA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(1));

-- Location: IOOBUF_X40_Y0_N19
\outA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(2));

-- Location: IOOBUF_X74_Y0_N59
\outA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(3));

-- Location: IOOBUF_X40_Y0_N53
\outA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(4));

-- Location: IOOBUF_X70_Y0_N19
\outA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(5));

-- Location: IOOBUF_X89_Y6_N56
\outA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(6));

-- Location: IOOBUF_X89_Y6_N22
\outA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(7));

-- Location: IOOBUF_X40_Y81_N2
\outA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(8));

-- Location: IOOBUF_X54_Y0_N19
\outA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(9));

-- Location: IOOBUF_X74_Y0_N76
\outA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(10));

-- Location: IOOBUF_X78_Y0_N36
\outA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(11));

-- Location: IOOBUF_X89_Y6_N5
\outA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(12));

-- Location: IOOBUF_X68_Y0_N53
\outA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(13));

-- Location: IOOBUF_X72_Y0_N36
\outA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(14));

-- Location: IOOBUF_X70_Y0_N36
\outA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outA(15));

-- Location: IOOBUF_X54_Y0_N2
\outB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(0));

-- Location: IOOBUF_X74_Y0_N42
\outB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(1));

-- Location: IOOBUF_X66_Y0_N59
\outB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(2));

-- Location: IOOBUF_X68_Y0_N19
\outB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(3));

-- Location: IOOBUF_X72_Y0_N53
\outB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(4));

-- Location: IOOBUF_X74_Y0_N93
\outB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(5));

-- Location: IOOBUF_X76_Y0_N53
\outB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(6));

-- Location: IOOBUF_X89_Y4_N79
\outB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(7));

-- Location: IOOBUF_X72_Y0_N19
\outB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(8));

-- Location: IOOBUF_X52_Y0_N36
\outB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(9));

-- Location: IOOBUF_X56_Y0_N36
\outB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(10));

-- Location: IOOBUF_X40_Y0_N36
\outB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(11));

-- Location: IOOBUF_X50_Y0_N42
\outB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(12));

-- Location: IOOBUF_X70_Y0_N53
\outB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(13));

-- Location: IOOBUF_X40_Y0_N2
\outB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(14));

-- Location: IOOBUF_X52_Y0_N2
\outB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outB(15));

-- Location: IOOBUF_X58_Y0_N59
\BUS_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[0]~reg0_q\,
	oe => \BUS_data[0]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(0));

-- Location: IOOBUF_X62_Y0_N36
\BUS_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[1]~reg0_q\,
	oe => \BUS_data[1]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(1));

-- Location: IOOBUF_X64_Y0_N53
\BUS_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[2]~reg0_q\,
	oe => \BUS_data[2]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(2));

-- Location: IOOBUF_X64_Y0_N19
\BUS_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[3]~reg0_q\,
	oe => \BUS_data[3]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(3));

-- Location: IOOBUF_X66_Y0_N76
\BUS_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[4]~reg0_q\,
	oe => \BUS_data[4]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(4));

-- Location: IOOBUF_X66_Y0_N93
\BUS_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[5]~reg0_q\,
	oe => \BUS_data[5]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(5));

-- Location: IOOBUF_X62_Y0_N19
\BUS_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[6]~reg0_q\,
	oe => \BUS_data[6]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(6));

-- Location: IOOBUF_X89_Y6_N39
\BUS_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[7]~reg0_q\,
	oe => \BUS_data[7]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(7));

-- Location: IOOBUF_X56_Y0_N53
\BUS_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[8]~reg0_q\,
	oe => \BUS_data[8]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(8));

-- Location: IOOBUF_X60_Y0_N19
\BUS_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[9]~reg0_q\,
	oe => \BUS_data[9]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(9));

-- Location: IOOBUF_X60_Y0_N2
\BUS_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[10]~reg0_q\,
	oe => \BUS_data[10]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(10));

-- Location: IOOBUF_X58_Y0_N42
\BUS_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[11]~reg0_q\,
	oe => \BUS_data[11]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(11));

-- Location: IOOBUF_X64_Y0_N36
\BUS_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[12]~reg0_q\,
	oe => \BUS_data[12]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(12));

-- Location: IOOBUF_X56_Y0_N2
\BUS_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[13]~reg0_q\,
	oe => \BUS_data[13]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(13));

-- Location: IOOBUF_X56_Y0_N19
\BUS_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[14]~reg0_q\,
	oe => \BUS_data[14]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(14));

-- Location: IOOBUF_X58_Y0_N76
\BUS_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_data[15]~reg0_q\,
	oe => \BUS_data[15]~en_q\,
	devoe => ww_devoe,
	o => BUS_data(15));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y0_N52
\BUS_addr2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(8),
	o => \BUS_addr2[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\BUS_addr1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(9),
	o => \BUS_addr1[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\BUS_addr1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(8),
	o => \BUS_addr1[8]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\BUS_addr2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(9),
	o => \BUS_addr2[9]~input_o\);

-- Location: LABCELL_X56_Y1_N12
\BUS_sync1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_sync1~1_combout\ = ( \BUS_sync1~en_q\ & ( \BUS_addr2[9]~input_o\ & ( (!\BUS_addr1[9]~input_o\ & \BUS_addr1[8]~input_o\) ) ) ) # ( !\BUS_sync1~en_q\ & ( \BUS_addr2[9]~input_o\ & ( (!\BUS_addr1[9]~input_o\ & \BUS_addr1[8]~input_o\) ) ) ) # ( 
-- \BUS_sync1~en_q\ & ( !\BUS_addr2[9]~input_o\ & ( ((!\BUS_addr1[9]~input_o\ & \BUS_addr1[8]~input_o\)) # (\BUS_addr2[8]~input_o\) ) ) ) # ( !\BUS_sync1~en_q\ & ( !\BUS_addr2[9]~input_o\ & ( (!\BUS_addr1[9]~input_o\ & \BUS_addr1[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010111010101110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr2[8]~input_o\,
	datab => \ALT_INV_BUS_addr1[9]~input_o\,
	datac => \ALT_INV_BUS_addr1[8]~input_o\,
	datae => \ALT_INV_BUS_sync1~en_q\,
	dataf => \ALT_INV_BUS_addr2[9]~input_o\,
	combout => \BUS_sync1~1_combout\);

-- Location: FF_X56_Y1_N13
\BUS_sync1~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \BUS_sync1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_sync1~en_q\);

-- Location: LABCELL_X60_Y4_N42
\BUS_sync2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_sync2~1_combout\ = ( \BUS_sync2~en_q\ & ( \BUS_addr1[9]~input_o\ & ( (!\BUS_addr2[9]~input_o\ & \BUS_addr2[8]~input_o\) ) ) ) # ( !\BUS_sync2~en_q\ & ( \BUS_addr1[9]~input_o\ & ( (!\BUS_addr2[9]~input_o\ & \BUS_addr2[8]~input_o\) ) ) ) # ( 
-- \BUS_sync2~en_q\ & ( !\BUS_addr1[9]~input_o\ & ( ((!\BUS_addr2[9]~input_o\ & \BUS_addr2[8]~input_o\)) # (\BUS_addr1[8]~input_o\) ) ) ) # ( !\BUS_sync2~en_q\ & ( !\BUS_addr1[9]~input_o\ & ( (!\BUS_addr2[9]~input_o\ & (!\BUS_addr1[8]~input_o\ & 
-- \BUS_addr2[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001110110011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr2[9]~input_o\,
	datab => \ALT_INV_BUS_addr1[8]~input_o\,
	datac => \ALT_INV_BUS_addr2[8]~input_o\,
	datae => \ALT_INV_BUS_sync2~en_q\,
	dataf => \ALT_INV_BUS_addr1[9]~input_o\,
	combout => \BUS_sync2~1_combout\);

-- Location: FF_X60_Y4_N43
\BUS_sync2~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \BUS_sync2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_sync2~en_q\);

-- Location: IOIBUF_X68_Y0_N35
\BUS_addr1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(2),
	o => \BUS_addr1[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\BUS_addr1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(1),
	o => \BUS_addr1[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\BUS_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(0),
	o => \BUS_data[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\BUS_addr1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(0),
	o => \BUS_addr1[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\BUS_addr1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(10),
	o => \BUS_addr1[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\BUS_addr2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(10),
	o => \BUS_addr2[10]~input_o\);

-- Location: LABCELL_X60_Y4_N0
\regs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs~0_combout\ = ( \BUS_addr1[8]~input_o\ & ( \BUS_addr2[10]~input_o\ & ( (!\BUS_addr1[9]~input_o\ & (((\BUS_addr1[10]~input_o\)))) # (\BUS_addr1[9]~input_o\ & (\BUS_addr2[8]~input_o\ & (!\BUS_addr2[9]~input_o\))) ) ) ) # ( !\BUS_addr1[8]~input_o\ & ( 
-- \BUS_addr2[10]~input_o\ & ( (\BUS_addr2[8]~input_o\ & !\BUS_addr2[9]~input_o\) ) ) ) # ( \BUS_addr1[8]~input_o\ & ( !\BUS_addr2[10]~input_o\ & ( (!\BUS_addr1[9]~input_o\ & \BUS_addr1[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110001010000010100000001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr2[8]~input_o\,
	datab => \ALT_INV_BUS_addr1[9]~input_o\,
	datac => \ALT_INV_BUS_addr2[9]~input_o\,
	datad => \ALT_INV_BUS_addr1[10]~input_o\,
	datae => \ALT_INV_BUS_addr1[8]~input_o\,
	dataf => \ALT_INV_BUS_addr2[10]~input_o\,
	combout => \regs~0_combout\);

-- Location: LABCELL_X60_Y4_N24
\regs[0][9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][9]~8_combout\ = ( \regs~0_combout\ & ( (!\BUS_addr1[2]~input_o\ & (!\BUS_addr1[1]~input_o\ & !\BUS_addr1[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_BUS_addr1[0]~input_o\,
	datae => \ALT_INV_regs~0_combout\,
	combout => \regs[0][9]~8_combout\);

-- Location: FF_X61_Y3_N32
\regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][0]~q\);

-- Location: LABCELL_X60_Y4_N30
\regs[1][15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[1][15]~7_combout\ = ( \BUS_addr1[0]~input_o\ & ( (!\BUS_addr1[2]~input_o\ & (!\BUS_addr1[1]~input_o\ & \regs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs~0_combout\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[1][15]~7_combout\);

-- Location: FF_X61_Y3_N26
\regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][0]~q\);

-- Location: LABCELL_X62_Y3_N15
\regs[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][0]~feeder_combout\ = ( \BUS_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[0]~input_o\,
	combout => \regs[2][0]~feeder_combout\);

-- Location: LABCELL_X60_Y4_N12
\regs[2][15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][15]~5_combout\ = ( !\BUS_addr1[0]~input_o\ & ( (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[2]~input_o\ & \regs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datad => \ALT_INV_regs~0_combout\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[2][15]~5_combout\);

-- Location: FF_X62_Y3_N17
\regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][0]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][0]~q\);

-- Location: LABCELL_X62_Y3_N24
\regs[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][0]~feeder_combout\ = ( \BUS_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[0]~input_o\,
	combout => \regs[3][0]~feeder_combout\);

-- Location: LABCELL_X60_Y4_N39
\regs[3][13]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][13]~6_combout\ = ( !\BUS_addr1[2]~input_o\ & ( \BUS_addr1[0]~input_o\ & ( (\regs~0_combout\ & \BUS_addr1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs~0_combout\,
	datac => \ALT_INV_BUS_addr1[1]~input_o\,
	datae => \ALT_INV_BUS_addr1[2]~input_o\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[3][13]~6_combout\);

-- Location: FF_X62_Y3_N26
\regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[3][0]~feeder_combout\,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][0]~q\);

-- Location: LABCELL_X61_Y3_N33
\Mux47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = ( \regs[2][0]~q\ & ( \regs[3][0]~q\ & ( ((!\BUS_addr1[0]~input_o\ & (\regs[0][0]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][0]~q\)))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[2][0]~q\ & ( \regs[3][0]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & ((!\BUS_addr1[0]~input_o\ & (\regs[0][0]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][0]~q\))))) # (\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\)))) ) ) ) # ( \regs[2][0]~q\ & ( !\regs[3][0]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- ((!\BUS_addr1[0]~input_o\ & (\regs[0][0]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][0]~q\))))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)))) ) ) ) # ( !\regs[2][0]~q\ & ( !\regs[3][0]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- ((!\BUS_addr1[0]~input_o\ & (\regs[0][0]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_regs[0][0]~q\,
	datac => \ALT_INV_BUS_addr1[0]~input_o\,
	datad => \ALT_INV_regs[1][0]~q\,
	datae => \ALT_INV_regs[2][0]~q\,
	dataf => \ALT_INV_regs[3][0]~q\,
	combout => \Mux47~1_combout\);

-- Location: LABCELL_X60_Y4_N15
\regs[5][3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[5][3]~2_combout\ = ( \BUS_addr1[0]~input_o\ & ( (\BUS_addr1[2]~input_o\ & (!\BUS_addr1[1]~input_o\ & \regs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_regs~0_combout\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[5][3]~2_combout\);

-- Location: FF_X61_Y5_N29
\regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][0]~q\);

-- Location: LABCELL_X60_Y4_N6
\regs[4][9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[4][9]~1_combout\ = ( !\BUS_addr1[0]~input_o\ & ( (\BUS_addr1[2]~input_o\ & (!\BUS_addr1[1]~input_o\ & \regs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs~0_combout\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[4][9]~1_combout\);

-- Location: FF_X61_Y5_N32
\regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][0]~q\);

-- Location: LABCELL_X60_Y4_N9
\regs[6][7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[6][7]~3_combout\ = ( !\BUS_addr1[0]~input_o\ & ( (\BUS_addr1[2]~input_o\ & (\BUS_addr1[1]~input_o\ & \regs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_regs~0_combout\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[6][7]~3_combout\);

-- Location: FF_X61_Y5_N16
\regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][0]~q\);

-- Location: LABCELL_X60_Y4_N33
\regs[7][4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[7][4]~4_combout\ = ( \BUS_addr1[0]~input_o\ & ( (\BUS_addr1[2]~input_o\ & (\BUS_addr1[1]~input_o\ & \regs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_regs~0_combout\,
	dataf => \ALT_INV_BUS_addr1[0]~input_o\,
	combout => \regs[7][4]~4_combout\);

-- Location: FF_X60_Y5_N29
\regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][0]~q\);

-- Location: LABCELL_X61_Y5_N36
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \regs[6][0]~q\ & ( \regs[7][0]~q\ & ( ((!\BUS_addr1[0]~input_o\ & ((\regs[4][0]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][0]~q\))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[6][0]~q\ & ( \regs[7][0]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][0]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][0]~q\)))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\)) ) ) ) # ( \regs[6][0]~q\ & ( !\regs[7][0]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & 
-- ((\regs[4][0]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][0]~q\)))) # (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\)) ) ) ) # ( !\regs[6][0]~q\ & ( !\regs[7][0]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][0]~q\))) # 
-- (\BUS_addr1[0]~input_o\ & (\regs[5][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[5][0]~q\,
	datad => \ALT_INV_regs[4][0]~q\,
	datae => \ALT_INV_regs[6][0]~q\,
	dataf => \ALT_INV_regs[7][0]~q\,
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X61_Y4_N48
\Mux47~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = ( \Mux47~0_combout\ & ( (\Mux47~1_combout\) # (\BUS_addr1[2]~input_o\) ) ) # ( !\Mux47~0_combout\ & ( (!\BUS_addr1[2]~input_o\ & \Mux47~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BUS_addr1[2]~input_o\,
	datad => \ALT_INV_Mux47~1_combout\,
	dataf => \ALT_INV_Mux47~0_combout\,
	combout => \Mux47~2_combout\);

-- Location: LABCELL_X60_Y4_N54
\BUS_data[15]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_data[15]~32_combout\ = ( \BUS_addr1[8]~input_o\ & ( \BUS_addr2[10]~input_o\ & ( (!\BUS_addr1[9]~input_o\ & (((!\BUS_addr1[10]~input_o\)))) # (\BUS_addr1[9]~input_o\ & ((!\BUS_addr2[8]~input_o\) # ((\BUS_addr2[9]~input_o\)))) ) ) ) # ( 
-- !\BUS_addr1[8]~input_o\ & ( \BUS_addr2[10]~input_o\ & ( (!\BUS_addr2[8]~input_o\) # (\BUS_addr2[9]~input_o\) ) ) ) # ( \BUS_addr1[8]~input_o\ & ( !\BUS_addr2[10]~input_o\ & ( (!\BUS_addr1[10]~input_o\) # (\BUS_addr1[9]~input_o\) ) ) ) # ( 
-- !\BUS_addr1[8]~input_o\ & ( !\BUS_addr2[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110011001110101111101011111110111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr2[8]~input_o\,
	datab => \ALT_INV_BUS_addr1[9]~input_o\,
	datac => \ALT_INV_BUS_addr2[9]~input_o\,
	datad => \ALT_INV_BUS_addr1[10]~input_o\,
	datae => \ALT_INV_BUS_addr1[8]~input_o\,
	dataf => \ALT_INV_BUS_addr2[10]~input_o\,
	combout => \BUS_data[15]~32_combout\);

-- Location: FF_X61_Y4_N49
\BUS_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux47~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[0]~reg0_q\);

-- Location: LABCELL_X60_Y4_N48
\BUS_data[0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_data[0]~33_combout\ = (!\BUS_addr2[8]~input_o\ & (!\BUS_addr1[9]~input_o\ & ((\BUS_addr1[8]~input_o\)))) # (\BUS_addr2[8]~input_o\ & ((!\BUS_addr2[9]~input_o\) # ((!\BUS_addr1[9]~input_o\ & \BUS_addr1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011011100010100001101110001010000110111000101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr2[8]~input_o\,
	datab => \ALT_INV_BUS_addr1[9]~input_o\,
	datac => \ALT_INV_BUS_addr2[9]~input_o\,
	datad => \ALT_INV_BUS_addr1[8]~input_o\,
	combout => \BUS_data[0]~33_combout\);

-- Location: FF_X59_Y4_N29
\BUS_data[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[0]~en_q\);

-- Location: IOIBUF_X62_Y0_N35
\BUS_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(1),
	o => \BUS_data[1]~input_o\);

-- Location: LABCELL_X63_Y4_N12
\regs[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[1][1]~feeder_combout\ = ( \BUS_data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[1]~input_o\,
	combout => \regs[1][1]~feeder_combout\);

-- Location: FF_X63_Y4_N14
\regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[1][1]~feeder_combout\,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][1]~q\);

-- Location: LABCELL_X62_Y3_N18
\regs[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][1]~feeder_combout\ = ( \BUS_data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[1]~input_o\,
	combout => \regs[2][1]~feeder_combout\);

-- Location: FF_X62_Y3_N19
\regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][1]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][1]~q\);

-- Location: FF_X62_Y5_N32
\regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[1]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][1]~q\);

-- Location: FF_X61_Y4_N8
\regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[1]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][1]~q\);

-- Location: LABCELL_X61_Y4_N39
\Mux46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = ( \regs[3][1]~q\ & ( \regs[0][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[1][1]~q\)))) # (\BUS_addr1[1]~input_o\ & (((\regs[2][1]~q\)) # (\BUS_addr1[0]~input_o\))) ) ) ) # ( !\regs[3][1]~q\ & ( 
-- \regs[0][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[1][1]~q\)))) # (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\ & ((\regs[2][1]~q\)))) ) ) ) # ( \regs[3][1]~q\ & ( !\regs[0][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- (\BUS_addr1[0]~input_o\ & (\regs[1][1]~q\))) # (\BUS_addr1[1]~input_o\ & (((\regs[2][1]~q\)) # (\BUS_addr1[0]~input_o\))) ) ) ) # ( !\regs[3][1]~q\ & ( !\regs[0][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & (\regs[1][1]~q\))) # 
-- (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\ & ((\regs[2][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[1][1]~q\,
	datad => \ALT_INV_regs[2][1]~q\,
	datae => \ALT_INV_regs[3][1]~q\,
	dataf => \ALT_INV_regs[0][1]~q\,
	combout => \Mux46~1_combout\);

-- Location: FF_X63_Y4_N38
\regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[1]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][1]~q\);

-- Location: FF_X62_Y5_N53
\regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[1]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][1]~q\);

-- Location: FF_X61_Y4_N23
\regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[1]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][1]~q\);

-- Location: FF_X61_Y5_N23
\regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[1]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][1]~q\);

-- Location: LABCELL_X61_Y4_N15
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \regs[5][1]~q\ & ( \regs[6][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\)) # (\regs[4][1]~q\))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\) # (\regs[7][1]~q\)))) ) ) ) # ( !\regs[5][1]~q\ & ( 
-- \regs[6][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & (\regs[4][1]~q\ & (!\BUS_addr1[0]~input_o\))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\) # (\regs[7][1]~q\)))) ) ) ) # ( \regs[5][1]~q\ & ( !\regs[6][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- (((\BUS_addr1[0]~input_o\)) # (\regs[4][1]~q\))) # (\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\ & \regs[7][1]~q\)))) ) ) ) # ( !\regs[5][1]~q\ & ( !\regs[6][1]~q\ & ( (!\BUS_addr1[1]~input_o\ & (\regs[4][1]~q\ & (!\BUS_addr1[0]~input_o\))) # 
-- (\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\ & \regs[7][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[4][1]~q\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_BUS_addr1[0]~input_o\,
	datad => \ALT_INV_regs[7][1]~q\,
	datae => \ALT_INV_regs[5][1]~q\,
	dataf => \ALT_INV_regs[6][1]~q\,
	combout => \Mux46~0_combout\);

-- Location: LABCELL_X61_Y4_N54
\Mux46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = ( \BUS_addr1[2]~input_o\ & ( \Mux46~0_combout\ ) ) # ( !\BUS_addr1[2]~input_o\ & ( \Mux46~0_combout\ & ( \Mux46~1_combout\ ) ) ) # ( !\BUS_addr1[2]~input_o\ & ( !\Mux46~0_combout\ & ( \Mux46~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux46~1_combout\,
	datae => \ALT_INV_BUS_addr1[2]~input_o\,
	dataf => \ALT_INV_Mux46~0_combout\,
	combout => \Mux46~2_combout\);

-- Location: FF_X61_Y4_N56
\BUS_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux46~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[1]~reg0_q\);

-- Location: FF_X61_Y4_N58
\BUS_data[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[1]~en_q\);

-- Location: IOIBUF_X64_Y0_N52
\BUS_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(2),
	o => \BUS_data[2]~input_o\);

-- Location: LABCELL_X63_Y6_N51
\regs[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][2]~feeder_combout\ = ( \BUS_data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[2]~input_o\,
	combout => \regs[2][2]~feeder_combout\);

-- Location: FF_X63_Y6_N53
\regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][2]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][2]~q\);

-- Location: LABCELL_X64_Y5_N39
\regs[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][2]~feeder_combout\ = ( \BUS_data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[2]~input_o\,
	combout => \regs[0][2]~feeder_combout\);

-- Location: FF_X64_Y5_N41
\regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[0][2]~feeder_combout\,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][2]~q\);

-- Location: FF_X63_Y5_N44
\regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[2]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][2]~q\);

-- Location: FF_X62_Y4_N5
\regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[2]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][2]~q\);

-- Location: LABCELL_X64_Y5_N0
\Mux45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = ( \regs[3][2]~q\ & ( \regs[1][2]~q\ & ( ((!\BUS_addr1[1]~input_o\ & ((\regs[0][2]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[2][2]~q\))) # (\BUS_addr1[0]~input_o\) ) ) ) # ( !\regs[3][2]~q\ & ( \regs[1][2]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & (((\regs[0][2]~q\)) # (\BUS_addr1[0]~input_o\))) # (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\ & (\regs[2][2]~q\))) ) ) ) # ( \regs[3][2]~q\ & ( !\regs[1][2]~q\ & ( (!\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\ & ((\regs[0][2]~q\)))) # 
-- (\BUS_addr1[1]~input_o\ & (((\regs[2][2]~q\)) # (\BUS_addr1[0]~input_o\))) ) ) ) # ( !\regs[3][2]~q\ & ( !\regs[1][2]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & ((\regs[0][2]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[2][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[2][2]~q\,
	datad => \ALT_INV_regs[0][2]~q\,
	datae => \ALT_INV_regs[3][2]~q\,
	dataf => \ALT_INV_regs[1][2]~q\,
	combout => \Mux45~1_combout\);

-- Location: FF_X63_Y5_N17
\regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[2]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][2]~q\);

-- Location: LABCELL_X61_Y5_N12
\regs[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[6][2]~feeder_combout\ = ( \BUS_data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[2]~input_o\,
	combout => \regs[6][2]~feeder_combout\);

-- Location: FF_X61_Y5_N13
\regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[6][2]~feeder_combout\,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][2]~q\);

-- Location: FF_X62_Y4_N50
\regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[2]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][2]~q\);

-- Location: LABCELL_X64_Y5_N18
\regs[5][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[5][2]~feeder_combout\ = ( \BUS_data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[2]~input_o\,
	combout => \regs[5][2]~feeder_combout\);

-- Location: FF_X64_Y5_N20
\regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[5][2]~feeder_combout\,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][2]~q\);

-- Location: LABCELL_X64_Y5_N24
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \regs[4][2]~q\ & ( \regs[5][2]~q\ & ( (!\BUS_addr1[1]~input_o\) # ((!\BUS_addr1[0]~input_o\ & ((\regs[6][2]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[7][2]~q\))) ) ) ) # ( !\regs[4][2]~q\ & ( \regs[5][2]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & ((\regs[6][2]~q\)))) # (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) # ((\regs[7][2]~q\)))) ) ) ) # ( \regs[4][2]~q\ & ( !\regs[5][2]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) 
-- # ((\regs[6][2]~q\)))) # (\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & (\regs[7][2]~q\))) ) ) ) # ( !\regs[4][2]~q\ & ( !\regs[5][2]~q\ & ( (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[6][2]~q\))) # (\BUS_addr1[0]~input_o\ & 
-- (\regs[7][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[7][2]~q\,
	datad => \ALT_INV_regs[6][2]~q\,
	datae => \ALT_INV_regs[4][2]~q\,
	dataf => \ALT_INV_regs[5][2]~q\,
	combout => \Mux45~0_combout\);

-- Location: LABCELL_X64_Y5_N6
\Mux45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = ( \Mux45~1_combout\ & ( \Mux45~0_combout\ ) ) # ( !\Mux45~1_combout\ & ( \Mux45~0_combout\ & ( \BUS_addr1[2]~input_o\ ) ) ) # ( \Mux45~1_combout\ & ( !\Mux45~0_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux45~1_combout\,
	dataf => \ALT_INV_Mux45~0_combout\,
	combout => \Mux45~2_combout\);

-- Location: FF_X64_Y5_N8
\BUS_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux45~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[2]~reg0_q\);

-- Location: LABCELL_X60_Y4_N21
\BUS_data[2]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_data[2]~enfeeder_combout\ = \BUS_data[0]~33_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BUS_data[0]~33_combout\,
	combout => \BUS_data[2]~enfeeder_combout\);

-- Location: FF_X60_Y4_N23
\BUS_data[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \BUS_data[2]~enfeeder_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[2]~en_q\);

-- Location: IOIBUF_X64_Y0_N18
\BUS_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(3),
	o => \BUS_data[3]~input_o\);

-- Location: FF_X63_Y5_N26
\regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[3]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][3]~q\);

-- Location: FF_X62_Y6_N13
\regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[3]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][3]~q\);

-- Location: FF_X64_Y6_N2
\regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[3]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][3]~q\);

-- Location: FF_X63_Y4_N8
\regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[3]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][3]~q\);

-- Location: LABCELL_X64_Y6_N3
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \regs[5][3]~q\ & ( \regs[4][3]~q\ & ( (!\BUS_addr1[1]~input_o\) # ((!\BUS_addr1[0]~input_o\ & ((\regs[6][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[7][3]~q\))) ) ) ) # ( !\regs[5][3]~q\ & ( \regs[4][3]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\)) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[6][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[7][3]~q\)))) ) ) ) # ( \regs[5][3]~q\ & ( !\regs[4][3]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- (\BUS_addr1[0]~input_o\)) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[6][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[7][3]~q\)))) ) ) ) # ( !\regs[5][3]~q\ & ( !\regs[4][3]~q\ & ( (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & 
-- ((\regs[6][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[7][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[7][3]~q\,
	datad => \ALT_INV_regs[6][3]~q\,
	datae => \ALT_INV_regs[5][3]~q\,
	dataf => \ALT_INV_regs[4][3]~q\,
	combout => \Mux44~0_combout\);

-- Location: FF_X63_Y5_N32
\regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[3]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][3]~q\);

-- Location: LABCELL_X63_Y6_N3
\regs[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][3]~feeder_combout\ = ( \BUS_data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[3]~input_o\,
	combout => \regs[2][3]~feeder_combout\);

-- Location: FF_X63_Y6_N4
\regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][3]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][3]~q\);

-- Location: LABCELL_X64_Y6_N54
\regs[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][3]~feeder_combout\ = ( \BUS_data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[3]~input_o\,
	combout => \regs[0][3]~feeder_combout\);

-- Location: FF_X64_Y6_N56
\regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[0][3]~feeder_combout\,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][3]~q\);

-- Location: FF_X63_Y4_N50
\regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[3]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][3]~q\);

-- Location: LABCELL_X64_Y6_N42
\Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = ( \regs[0][3]~q\ & ( \regs[1][3]~q\ & ( (!\BUS_addr1[1]~input_o\) # ((!\BUS_addr1[0]~input_o\ & ((\regs[2][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][3]~q\))) ) ) ) # ( !\regs[0][3]~q\ & ( \regs[1][3]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\)) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[2][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][3]~q\)))) ) ) ) # ( \regs[0][3]~q\ & ( !\regs[1][3]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- (!\BUS_addr1[0]~input_o\)) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[2][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][3]~q\)))) ) ) ) # ( !\regs[0][3]~q\ & ( !\regs[1][3]~q\ & ( (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & 
-- ((\regs[2][3]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[3][3]~q\,
	datad => \ALT_INV_regs[2][3]~q\,
	datae => \ALT_INV_regs[0][3]~q\,
	dataf => \ALT_INV_regs[1][3]~q\,
	combout => \Mux44~1_combout\);

-- Location: LABCELL_X64_Y6_N51
\Mux44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = ( \Mux44~0_combout\ & ( \Mux44~1_combout\ ) ) # ( !\Mux44~0_combout\ & ( \Mux44~1_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) ) # ( \Mux44~0_combout\ & ( !\Mux44~1_combout\ & ( \BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Mux44~1_combout\,
	combout => \Mux44~2_combout\);

-- Location: FF_X64_Y6_N53
\BUS_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux44~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[3]~reg0_q\);

-- Location: FF_X60_Y4_N29
\BUS_data[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[3]~en_q\);

-- Location: IOIBUF_X66_Y0_N75
\BUS_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(4),
	o => \BUS_data[4]~input_o\);

-- Location: FF_X65_Y5_N16
\regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[4]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][4]~q\);

-- Location: FF_X63_Y5_N56
\regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[4]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][4]~q\);

-- Location: FF_X64_Y4_N47
\regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[4]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][4]~q\);

-- Location: LABCELL_X64_Y5_N33
\regs[5][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[5][4]~feeder_combout\ = ( \BUS_data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[4]~input_o\,
	combout => \regs[5][4]~feeder_combout\);

-- Location: FF_X64_Y5_N35
\regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[5][4]~feeder_combout\,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][4]~q\);

-- Location: LABCELL_X64_Y5_N54
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \regs[4][4]~q\ & ( \regs[5][4]~q\ & ( (!\BUS_addr1[1]~input_o\) # ((!\BUS_addr1[0]~input_o\ & (\regs[6][4]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[7][4]~q\)))) ) ) ) # ( !\regs[4][4]~q\ & ( \regs[5][4]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & (\regs[6][4]~q\))) # (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) # ((\regs[7][4]~q\)))) ) ) ) # ( \regs[4][4]~q\ & ( !\regs[5][4]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) # 
-- ((\regs[6][4]~q\)))) # (\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & ((\regs[7][4]~q\)))) ) ) ) # ( !\regs[4][4]~q\ & ( !\regs[5][4]~q\ & ( (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[6][4]~q\)) # (\BUS_addr1[0]~input_o\ & 
-- ((\regs[7][4]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[6][4]~q\,
	datad => \ALT_INV_regs[7][4]~q\,
	datae => \ALT_INV_regs[4][4]~q\,
	dataf => \ALT_INV_regs[5][4]~q\,
	combout => \Mux43~0_combout\);

-- Location: FF_X63_Y5_N8
\regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[4]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][4]~q\);

-- Location: LABCELL_X64_Y5_N12
\regs[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][4]~feeder_combout\ = ( \BUS_data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[4]~input_o\,
	combout => \regs[0][4]~feeder_combout\);

-- Location: FF_X64_Y5_N14
\regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[0][4]~feeder_combout\,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][4]~q\);

-- Location: FF_X65_Y5_N37
\regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[4]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][4]~q\);

-- Location: FF_X63_Y4_N35
\regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[4]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][4]~q\);

-- Location: LABCELL_X64_Y5_N42
\Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( \regs[2][4]~q\ & ( \regs[1][4]~q\ & ( (!\BUS_addr1[1]~input_o\ & (((\regs[0][4]~q\) # (\BUS_addr1[0]~input_o\)))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)) # (\regs[3][4]~q\))) ) ) ) # ( !\regs[2][4]~q\ & ( 
-- \regs[1][4]~q\ & ( (!\BUS_addr1[1]~input_o\ & (((\regs[0][4]~q\) # (\BUS_addr1[0]~input_o\)))) # (\BUS_addr1[1]~input_o\ & (\regs[3][4]~q\ & (\BUS_addr1[0]~input_o\))) ) ) ) # ( \regs[2][4]~q\ & ( !\regs[1][4]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- (((!\BUS_addr1[0]~input_o\ & \regs[0][4]~q\)))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)) # (\regs[3][4]~q\))) ) ) ) # ( !\regs[2][4]~q\ & ( !\regs[1][4]~q\ & ( (!\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\ & \regs[0][4]~q\)))) # 
-- (\BUS_addr1[1]~input_o\ & (\regs[3][4]~q\ & (\BUS_addr1[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_regs[3][4]~q\,
	datac => \ALT_INV_BUS_addr1[0]~input_o\,
	datad => \ALT_INV_regs[0][4]~q\,
	datae => \ALT_INV_regs[2][4]~q\,
	dataf => \ALT_INV_regs[1][4]~q\,
	combout => \Mux43~1_combout\);

-- Location: LABCELL_X64_Y5_N51
\Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = ( \Mux43~0_combout\ & ( \Mux43~1_combout\ ) ) # ( !\Mux43~0_combout\ & ( \Mux43~1_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) ) # ( \Mux43~0_combout\ & ( !\Mux43~1_combout\ & ( \BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux43~0_combout\,
	dataf => \ALT_INV_Mux43~1_combout\,
	combout => \Mux43~2_combout\);

-- Location: FF_X64_Y5_N52
\BUS_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux43~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[4]~reg0_q\);

-- Location: FF_X61_Y4_N29
\BUS_data[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[4]~en_q\);

-- Location: IOIBUF_X66_Y0_N92
\BUS_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(5),
	o => \BUS_data[5]~input_o\);

-- Location: FF_X64_Y4_N50
\regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[5]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][5]~q\);

-- Location: FF_X64_Y4_N59
\regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[5]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][5]~q\);

-- Location: MLABCELL_X65_Y4_N3
\regs[7][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[7][5]~feeder_combout\ = ( \BUS_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[5]~input_o\,
	combout => \regs[7][5]~feeder_combout\);

-- Location: FF_X65_Y4_N5
\regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[7][5]~feeder_combout\,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][5]~q\);

-- Location: FF_X64_Y3_N37
\regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[5]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][5]~q\);

-- Location: LABCELL_X64_Y4_N12
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \regs[7][5]~q\ & ( \regs[6][5]~q\ & ( ((!\BUS_addr1[0]~input_o\ & (\regs[4][5]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[5][5]~q\)))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[7][5]~q\ & ( \regs[6][5]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & ((!\BUS_addr1[0]~input_o\ & (\regs[4][5]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[5][5]~q\))))) # (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\)) ) ) ) # ( \regs[7][5]~q\ & ( !\regs[6][5]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ 
-- & (\regs[4][5]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[5][5]~q\))))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\)) ) ) ) # ( !\regs[7][5]~q\ & ( !\regs[6][5]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[4][5]~q\)) # 
-- (\BUS_addr1[0]~input_o\ & ((\regs[5][5]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[4][5]~q\,
	datad => \ALT_INV_regs[5][5]~q\,
	datae => \ALT_INV_regs[7][5]~q\,
	dataf => \ALT_INV_regs[6][5]~q\,
	combout => \Mux42~0_combout\);

-- Location: LABCELL_X63_Y3_N54
\regs[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][5]~feeder_combout\ = ( \BUS_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[5]~input_o\,
	combout => \regs[3][5]~feeder_combout\);

-- Location: FF_X63_Y3_N56
\regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[3][5]~feeder_combout\,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][5]~q\);

-- Location: LABCELL_X64_Y3_N33
\regs[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[1][5]~feeder_combout\ = ( \BUS_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[5]~input_o\,
	combout => \regs[1][5]~feeder_combout\);

-- Location: FF_X64_Y3_N35
\regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[1][5]~feeder_combout\,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][5]~q\);

-- Location: LABCELL_X63_Y6_N48
\regs[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][5]~feeder_combout\ = ( \BUS_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[5]~input_o\,
	combout => \regs[2][5]~feeder_combout\);

-- Location: FF_X63_Y6_N50
\regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][5]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][5]~q\);

-- Location: LABCELL_X63_Y3_N27
\regs[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][5]~feeder_combout\ = ( \BUS_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[5]~input_o\,
	combout => \regs[0][5]~feeder_combout\);

-- Location: FF_X63_Y3_N29
\regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[0][5]~feeder_combout\,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][5]~q\);

-- Location: LABCELL_X64_Y4_N18
\Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \regs[2][5]~q\ & ( \regs[0][5]~q\ & ( (!\BUS_addr1[0]~input_o\) # ((!\BUS_addr1[1]~input_o\ & ((\regs[1][5]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[3][5]~q\))) ) ) ) # ( !\regs[2][5]~q\ & ( \regs[0][5]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[1][5]~q\)))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & (\regs[3][5]~q\))) ) ) ) # ( \regs[2][5]~q\ & ( !\regs[0][5]~q\ & ( (!\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & 
-- ((\regs[1][5]~q\)))) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[3][5]~q\)))) ) ) ) # ( !\regs[2][5]~q\ & ( !\regs[0][5]~q\ & ( (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & ((\regs[1][5]~q\))) # (\BUS_addr1[1]~input_o\ & 
-- (\regs[3][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[3][5]~q\,
	datad => \ALT_INV_regs[1][5]~q\,
	datae => \ALT_INV_regs[2][5]~q\,
	dataf => \ALT_INV_regs[0][5]~q\,
	combout => \Mux42~1_combout\);

-- Location: MLABCELL_X65_Y4_N51
\Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = ( \Mux42~0_combout\ & ( \Mux42~1_combout\ ) ) # ( !\Mux42~0_combout\ & ( \Mux42~1_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) ) # ( \Mux42~0_combout\ & ( !\Mux42~1_combout\ & ( \BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux42~0_combout\,
	dataf => \ALT_INV_Mux42~1_combout\,
	combout => \Mux42~2_combout\);

-- Location: FF_X65_Y4_N53
\BUS_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux42~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[5]~reg0_q\);

-- Location: FF_X60_Y4_N4
\BUS_data[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[5]~en_q\);

-- Location: IOIBUF_X62_Y0_N18
\BUS_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(6),
	o => \BUS_data[6]~input_o\);

-- Location: FF_X63_Y6_N8
\regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][6]~q\);

-- Location: FF_X63_Y6_N5
\regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][6]~q\);

-- Location: FF_X63_Y6_N38
\regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][6]~q\);

-- Location: FF_X62_Y7_N44
\regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][6]~q\);

-- Location: LABCELL_X62_Y7_N54
\Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \regs[1][6]~q\ & ( \regs[0][6]~q\ & ( (!\BUS_addr1[1]~input_o\) # ((!\BUS_addr1[0]~input_o\ & ((\regs[2][6]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][6]~q\))) ) ) ) # ( !\regs[1][6]~q\ & ( \regs[0][6]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)))) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[2][6]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][6]~q\)))) ) ) ) # ( \regs[1][6]~q\ & ( !\regs[0][6]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & (((\BUS_addr1[0]~input_o\)))) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[2][6]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][6]~q\)))) ) ) ) # ( !\regs[1][6]~q\ & ( !\regs[0][6]~q\ & ( (\BUS_addr1[1]~input_o\ & 
-- ((!\BUS_addr1[0]~input_o\ & ((\regs[2][6]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_regs[3][6]~q\,
	datac => \ALT_INV_regs[2][6]~q\,
	datad => \ALT_INV_BUS_addr1[0]~input_o\,
	datae => \ALT_INV_regs[1][6]~q\,
	dataf => \ALT_INV_regs[0][6]~q\,
	combout => \Mux41~1_combout\);

-- Location: FF_X61_Y6_N5
\regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][6]~q\);

-- Location: FF_X62_Y6_N35
\regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][6]~q\);

-- Location: FF_X62_Y6_N8
\regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][6]~q\);

-- Location: FF_X62_Y4_N26
\regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[6]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][6]~q\);

-- Location: LABCELL_X61_Y6_N21
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \regs[7][6]~q\ & ( \regs[4][6]~q\ & ( (!\BUS_addr1[0]~input_o\ & (((!\BUS_addr1[1]~input_o\) # (\regs[6][6]~q\)))) # (\BUS_addr1[0]~input_o\ & (((\BUS_addr1[1]~input_o\)) # (\regs[5][6]~q\))) ) ) ) # ( !\regs[7][6]~q\ & ( 
-- \regs[4][6]~q\ & ( (!\BUS_addr1[0]~input_o\ & (((!\BUS_addr1[1]~input_o\) # (\regs[6][6]~q\)))) # (\BUS_addr1[0]~input_o\ & (\regs[5][6]~q\ & (!\BUS_addr1[1]~input_o\))) ) ) ) # ( \regs[7][6]~q\ & ( !\regs[4][6]~q\ & ( (!\BUS_addr1[0]~input_o\ & 
-- (((\BUS_addr1[1]~input_o\ & \regs[6][6]~q\)))) # (\BUS_addr1[0]~input_o\ & (((\BUS_addr1[1]~input_o\)) # (\regs[5][6]~q\))) ) ) ) # ( !\regs[7][6]~q\ & ( !\regs[4][6]~q\ & ( (!\BUS_addr1[0]~input_o\ & (((\BUS_addr1[1]~input_o\ & \regs[6][6]~q\)))) # 
-- (\BUS_addr1[0]~input_o\ & (\regs[5][6]~q\ & (!\BUS_addr1[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][6]~q\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_regs[6][6]~q\,
	datae => \ALT_INV_regs[7][6]~q\,
	dataf => \ALT_INV_regs[4][6]~q\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X62_Y7_N3
\Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \Mux41~0_combout\ & ( (\Mux41~1_combout\) # (\BUS_addr1[2]~input_o\) ) ) # ( !\Mux41~0_combout\ & ( (!\BUS_addr1[2]~input_o\ & \Mux41~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datad => \ALT_INV_Mux41~1_combout\,
	datae => \ALT_INV_Mux41~0_combout\,
	combout => \Mux41~2_combout\);

-- Location: FF_X62_Y7_N5
\BUS_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux41~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[6]~reg0_q\);

-- Location: FF_X59_Y4_N46
\BUS_data[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[6]~en_q\);

-- Location: IOIBUF_X89_Y6_N38
\BUS_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(7),
	o => \BUS_data[7]~input_o\);

-- Location: FF_X63_Y6_N56
\regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[7]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][7]~q\);

-- Location: FF_X63_Y6_N26
\regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[7]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][7]~q\);

-- Location: FF_X63_Y6_N49
\regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[7]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][7]~q\);

-- Location: FF_X64_Y6_N32
\regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[7]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][7]~q\);

-- Location: LABCELL_X64_Y6_N6
\Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \regs[2][7]~q\ & ( \regs[0][7]~q\ & ( (!\BUS_addr1[0]~input_o\) # ((!\BUS_addr1[1]~input_o\ & (\regs[1][7]~q\)) # (\BUS_addr1[1]~input_o\ & ((\regs[3][7]~q\)))) ) ) ) # ( !\regs[2][7]~q\ & ( \regs[0][7]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[1][7]~q\)))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & ((\regs[3][7]~q\)))) ) ) ) # ( \regs[2][7]~q\ & ( !\regs[0][7]~q\ & ( (!\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & 
-- (\regs[1][7]~q\))) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[3][7]~q\)))) ) ) ) # ( !\regs[2][7]~q\ & ( !\regs[0][7]~q\ & ( (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & (\regs[1][7]~q\)) # (\BUS_addr1[1]~input_o\ & 
-- ((\regs[3][7]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[1][7]~q\,
	datad => \ALT_INV_regs[3][7]~q\,
	datae => \ALT_INV_regs[2][7]~q\,
	dataf => \ALT_INV_regs[0][7]~q\,
	combout => \Mux40~1_combout\);

-- Location: LABCELL_X63_Y7_N51
\regs[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[4][7]~feeder_combout\ = ( \BUS_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[7]~input_o\,
	combout => \regs[4][7]~feeder_combout\);

-- Location: FF_X63_Y7_N53
\regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[4][7]~feeder_combout\,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][7]~q\);

-- Location: LABCELL_X63_Y7_N39
\regs[5][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[5][7]~feeder_combout\ = ( \BUS_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[7]~input_o\,
	combout => \regs[5][7]~feeder_combout\);

-- Location: FF_X63_Y7_N41
\regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[5][7]~feeder_combout\,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][7]~q\);

-- Location: LABCELL_X63_Y7_N27
\regs[7][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[7][7]~feeder_combout\ = ( \BUS_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[7]~input_o\,
	combout => \regs[7][7]~feeder_combout\);

-- Location: FF_X63_Y7_N29
\regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[7][7]~feeder_combout\,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][7]~q\);

-- Location: FF_X62_Y6_N38
\regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[7]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][7]~q\);

-- Location: LABCELL_X63_Y7_N12
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \regs[7][7]~q\ & ( \regs[6][7]~q\ & ( ((!\BUS_addr1[0]~input_o\ & (\regs[4][7]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[5][7]~q\)))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[7][7]~q\ & ( \regs[6][7]~q\ & ( (!\BUS_addr1[0]~input_o\ 
-- & (((\regs[4][7]~q\)) # (\BUS_addr1[1]~input_o\))) # (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & ((\regs[5][7]~q\)))) ) ) ) # ( \regs[7][7]~q\ & ( !\regs[6][7]~q\ & ( (!\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & (\regs[4][7]~q\))) # 
-- (\BUS_addr1[0]~input_o\ & (((\regs[5][7]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( !\regs[7][7]~q\ & ( !\regs[6][7]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[4][7]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[5][7]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[4][7]~q\,
	datad => \ALT_INV_regs[5][7]~q\,
	datae => \ALT_INV_regs[7][7]~q\,
	dataf => \ALT_INV_regs[6][7]~q\,
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X64_Y6_N12
\Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \Mux40~0_combout\ & ( (\BUS_addr1[2]~input_o\) # (\Mux40~1_combout\) ) ) # ( !\Mux40~0_combout\ & ( (\Mux40~1_combout\ & !\BUS_addr1[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux40~1_combout\,
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	dataf => \ALT_INV_Mux40~0_combout\,
	combout => \Mux40~2_combout\);

-- Location: FF_X64_Y6_N13
\BUS_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux40~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[7]~reg0_q\);

-- Location: FF_X61_Y4_N37
\BUS_data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[7]~en_q\);

-- Location: IOIBUF_X56_Y0_N52
\BUS_data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(8),
	o => \BUS_data[8]~input_o\);

-- Location: LABCELL_X62_Y3_N36
\regs[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][8]~feeder_combout\ = ( \BUS_data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[8]~input_o\,
	combout => \regs[3][8]~feeder_combout\);

-- Location: FF_X62_Y3_N38
\regs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[3][8]~feeder_combout\,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][8]~q\);

-- Location: FF_X62_Y4_N14
\regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[8]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][8]~q\);

-- Location: LABCELL_X62_Y3_N48
\regs[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][8]~feeder_combout\ = ( \BUS_data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[8]~input_o\,
	combout => \regs[2][8]~feeder_combout\);

-- Location: FF_X62_Y3_N49
\regs[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][8]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][8]~q\);

-- Location: FF_X61_Y4_N44
\regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[8]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][8]~q\);

-- Location: LABCELL_X61_Y4_N45
\Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = ( \regs[2][8]~q\ & ( \regs[0][8]~q\ & ( (!\BUS_addr1[0]~input_o\) # ((!\BUS_addr1[1]~input_o\ & ((\regs[1][8]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[3][8]~q\))) ) ) ) # ( !\regs[2][8]~q\ & ( \regs[0][8]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\) # (\regs[1][8]~q\)))) # (\BUS_addr1[1]~input_o\ & (\regs[3][8]~q\ & ((\BUS_addr1[0]~input_o\)))) ) ) ) # ( \regs[2][8]~q\ & ( !\regs[0][8]~q\ & ( (!\BUS_addr1[1]~input_o\ & (((\regs[1][8]~q\ & 
-- \BUS_addr1[0]~input_o\)))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)) # (\regs[3][8]~q\))) ) ) ) # ( !\regs[2][8]~q\ & ( !\regs[0][8]~q\ & ( (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & ((\regs[1][8]~q\))) # (\BUS_addr1[1]~input_o\ 
-- & (\regs[3][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[3][8]~q\,
	datab => \ALT_INV_regs[1][8]~q\,
	datac => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_BUS_addr1[0]~input_o\,
	datae => \ALT_INV_regs[2][8]~q\,
	dataf => \ALT_INV_regs[0][8]~q\,
	combout => \Mux39~1_combout\);

-- Location: FF_X61_Y5_N37
\regs[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[8]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][8]~q\);

-- Location: FF_X61_Y5_N5
\regs[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[8]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][8]~q\);

-- Location: LABCELL_X61_Y5_N45
\regs[4][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[4][8]~feeder_combout\ = ( \BUS_data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[8]~input_o\,
	combout => \regs[4][8]~feeder_combout\);

-- Location: FF_X61_Y5_N47
\regs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[4][8]~feeder_combout\,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][8]~q\);

-- Location: FF_X62_Y5_N8
\regs[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[8]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][8]~q\);

-- Location: LABCELL_X61_Y4_N18
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \regs[4][8]~q\ & ( \regs[7][8]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) # ((\regs[6][8]~q\)))) # (\BUS_addr1[0]~input_o\ & (((\regs[5][8]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( !\regs[4][8]~q\ & ( 
-- \regs[7][8]~q\ & ( (!\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & (\regs[6][8]~q\))) # (\BUS_addr1[0]~input_o\ & (((\regs[5][8]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( \regs[4][8]~q\ & ( !\regs[7][8]~q\ & ( (!\BUS_addr1[0]~input_o\ & 
-- ((!\BUS_addr1[1]~input_o\) # ((\regs[6][8]~q\)))) # (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & ((\regs[5][8]~q\)))) ) ) ) # ( !\regs[4][8]~q\ & ( !\regs[7][8]~q\ & ( (!\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & (\regs[6][8]~q\))) # 
-- (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & ((\regs[5][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[6][8]~q\,
	datad => \ALT_INV_regs[5][8]~q\,
	datae => \ALT_INV_regs[4][8]~q\,
	dataf => \ALT_INV_regs[7][8]~q\,
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X61_Y4_N3
\Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = ( \Mux39~1_combout\ & ( \Mux39~0_combout\ ) ) # ( !\Mux39~1_combout\ & ( \Mux39~0_combout\ & ( \BUS_addr1[2]~input_o\ ) ) ) # ( \Mux39~1_combout\ & ( !\Mux39~0_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux39~1_combout\,
	dataf => \ALT_INV_Mux39~0_combout\,
	combout => \Mux39~2_combout\);

-- Location: FF_X61_Y4_N4
\BUS_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux39~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[8]~reg0_q\);

-- Location: FF_X61_Y4_N1
\BUS_data[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[8]~en_q\);

-- Location: IOIBUF_X60_Y0_N18
\BUS_data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(9),
	o => \BUS_data[9]~input_o\);

-- Location: FF_X61_Y3_N14
\regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[9]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][9]~q\);

-- Location: FF_X61_Y3_N20
\regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[9]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][9]~q\);

-- Location: LABCELL_X60_Y3_N6
\regs[2][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][9]~feeder_combout\ = ( \BUS_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[9]~input_o\,
	combout => \regs[2][9]~feeder_combout\);

-- Location: FF_X60_Y3_N8
\regs[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][9]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][9]~q\);

-- Location: LABCELL_X60_Y3_N36
\regs[3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][9]~feeder_combout\ = ( \BUS_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[9]~input_o\,
	combout => \regs[3][9]~feeder_combout\);

-- Location: FF_X60_Y3_N38
\regs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[3][9]~feeder_combout\,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][9]~q\);

-- Location: LABCELL_X61_Y3_N21
\Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( \regs[2][9]~q\ & ( \regs[3][9]~q\ & ( ((!\BUS_addr1[0]~input_o\ & ((\regs[0][9]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[1][9]~q\))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[2][9]~q\ & ( \regs[3][9]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & ((!\BUS_addr1[0]~input_o\ & ((\regs[0][9]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[1][9]~q\)))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\)) ) ) ) # ( \regs[2][9]~q\ & ( !\regs[3][9]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & 
-- ((\regs[0][9]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[1][9]~q\)))) # (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\)) ) ) ) # ( !\regs[2][9]~q\ & ( !\regs[3][9]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[0][9]~q\))) # 
-- (\BUS_addr1[0]~input_o\ & (\regs[1][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[1][9]~q\,
	datad => \ALT_INV_regs[0][9]~q\,
	datae => \ALT_INV_regs[2][9]~q\,
	dataf => \ALT_INV_regs[3][9]~q\,
	combout => \Mux38~1_combout\);

-- Location: LABCELL_X61_Y5_N24
\regs[5][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[5][9]~feeder_combout\ = ( \BUS_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[9]~input_o\,
	combout => \regs[5][9]~feeder_combout\);

-- Location: FF_X61_Y5_N26
\regs[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[5][9]~feeder_combout\,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][9]~q\);

-- Location: LABCELL_X61_Y5_N42
\regs[4][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[4][9]~feeder_combout\ = ( \BUS_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[9]~input_o\,
	combout => \regs[4][9]~feeder_combout\);

-- Location: FF_X61_Y5_N44
\regs[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[4][9]~feeder_combout\,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][9]~q\);

-- Location: FF_X61_Y5_N50
\regs[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[9]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][9]~q\);

-- Location: LABCELL_X60_Y5_N36
\regs[7][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[7][9]~feeder_combout\ = ( \BUS_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[9]~input_o\,
	combout => \regs[7][9]~feeder_combout\);

-- Location: FF_X60_Y5_N38
\regs[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[7][9]~feeder_combout\,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][9]~q\);

-- Location: LABCELL_X61_Y5_N33
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \BUS_addr1[1]~input_o\ & ( \regs[7][9]~q\ & ( (\regs[6][9]~q\) # (\BUS_addr1[0]~input_o\) ) ) ) # ( !\BUS_addr1[1]~input_o\ & ( \regs[7][9]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((\regs[4][9]~q\))) # (\BUS_addr1[0]~input_o\ & 
-- (\regs[5][9]~q\)) ) ) ) # ( \BUS_addr1[1]~input_o\ & ( !\regs[7][9]~q\ & ( (!\BUS_addr1[0]~input_o\ & \regs[6][9]~q\) ) ) ) # ( !\BUS_addr1[1]~input_o\ & ( !\regs[7][9]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((\regs[4][9]~q\))) # (\BUS_addr1[0]~input_o\ & 
-- (\regs[5][9]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][9]~q\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[4][9]~q\,
	datad => \ALT_INV_regs[6][9]~q\,
	datae => \ALT_INV_BUS_addr1[1]~input_o\,
	dataf => \ALT_INV_regs[7][9]~q\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X61_Y4_N24
\Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \BUS_addr1[2]~input_o\ & ( \Mux38~0_combout\ ) ) # ( !\BUS_addr1[2]~input_o\ & ( \Mux38~0_combout\ & ( \Mux38~1_combout\ ) ) ) # ( !\BUS_addr1[2]~input_o\ & ( !\Mux38~0_combout\ & ( \Mux38~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux38~1_combout\,
	datae => \ALT_INV_BUS_addr1[2]~input_o\,
	dataf => \ALT_INV_Mux38~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: FF_X61_Y4_N25
\BUS_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux38~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[9]~reg0_q\);

-- Location: FF_X60_Y4_N53
\BUS_data[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[9]~en_q\);

-- Location: IOIBUF_X60_Y0_N1
\BUS_data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(10),
	o => \BUS_data[10]~input_o\);

-- Location: FF_X61_Y6_N14
\regs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[10]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][10]~q\);

-- Location: LABCELL_X62_Y6_N30
\regs[6][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[6][10]~feeder_combout\ = ( \BUS_data[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[10]~input_o\,
	combout => \regs[6][10]~feeder_combout\);

-- Location: FF_X62_Y6_N31
\regs[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[6][10]~feeder_combout\,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][10]~q\);

-- Location: LABCELL_X61_Y5_N9
\regs[5][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[5][10]~feeder_combout\ = ( \BUS_data[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[10]~input_o\,
	combout => \regs[5][10]~feeder_combout\);

-- Location: FF_X61_Y5_N11
\regs[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[5][10]~feeder_combout\,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][10]~q\);

-- Location: FF_X62_Y5_N26
\regs[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[10]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][10]~q\);

-- Location: LABCELL_X61_Y4_N9
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \regs[5][10]~q\ & ( \regs[7][10]~q\ & ( ((!\BUS_addr1[1]~input_o\ & (\regs[4][10]~q\)) # (\BUS_addr1[1]~input_o\ & ((\regs[6][10]~q\)))) # (\BUS_addr1[0]~input_o\) ) ) ) # ( !\regs[5][10]~q\ & ( \regs[7][10]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & (\regs[4][10]~q\)) # (\BUS_addr1[1]~input_o\ & ((\regs[6][10]~q\))))) # (\BUS_addr1[0]~input_o\ & (((\BUS_addr1[1]~input_o\)))) ) ) ) # ( \regs[5][10]~q\ & ( !\regs[7][10]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & (\regs[4][10]~q\)) # (\BUS_addr1[1]~input_o\ & ((\regs[6][10]~q\))))) # (\BUS_addr1[0]~input_o\ & (((!\BUS_addr1[1]~input_o\)))) ) ) ) # ( !\regs[5][10]~q\ & ( !\regs[7][10]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & (\regs[4][10]~q\)) # (\BUS_addr1[1]~input_o\ & ((\regs[6][10]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[4][10]~q\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_regs[6][10]~q\,
	datae => \ALT_INV_regs[5][10]~q\,
	dataf => \ALT_INV_regs[7][10]~q\,
	combout => \Mux37~0_combout\);

-- Location: FF_X60_Y4_N37
\regs[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[10]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][10]~q\);

-- Location: FF_X61_Y4_N32
\regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[10]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][10]~q\);

-- Location: FF_X62_Y4_N32
\regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[10]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][10]~q\);

-- Location: FF_X62_Y5_N44
\regs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[10]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][10]~q\);

-- Location: LABCELL_X61_Y4_N33
\Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( \BUS_addr1[0]~input_o\ & ( \regs[3][10]~q\ & ( (\regs[1][10]~q\) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\BUS_addr1[0]~input_o\ & ( \regs[3][10]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((\regs[0][10]~q\))) # (\BUS_addr1[1]~input_o\ & 
-- (\regs[2][10]~q\)) ) ) ) # ( \BUS_addr1[0]~input_o\ & ( !\regs[3][10]~q\ & ( (!\BUS_addr1[1]~input_o\ & \regs[1][10]~q\) ) ) ) # ( !\BUS_addr1[0]~input_o\ & ( !\regs[3][10]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((\regs[0][10]~q\))) # (\BUS_addr1[1]~input_o\ & 
-- (\regs[2][10]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[2][10]~q\,
	datab => \ALT_INV_regs[0][10]~q\,
	datac => \ALT_INV_BUS_addr1[1]~input_o\,
	datad => \ALT_INV_regs[1][10]~q\,
	datae => \ALT_INV_BUS_addr1[0]~input_o\,
	dataf => \ALT_INV_regs[3][10]~q\,
	combout => \Mux37~1_combout\);

-- Location: LABCELL_X61_Y4_N51
\Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = ( \Mux37~1_combout\ & ( (!\BUS_addr1[2]~input_o\) # (\Mux37~0_combout\) ) ) # ( !\Mux37~1_combout\ & ( (\BUS_addr1[2]~input_o\ & \Mux37~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BUS_addr1[2]~input_o\,
	datac => \ALT_INV_Mux37~0_combout\,
	dataf => \ALT_INV_Mux37~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: FF_X61_Y4_N53
\BUS_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux37~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[10]~reg0_q\);

-- Location: FF_X60_Y4_N58
\BUS_data[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[10]~en_q\);

-- Location: IOIBUF_X58_Y0_N41
\BUS_data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(11),
	o => \BUS_data[11]~input_o\);

-- Location: FF_X62_Y6_N59
\regs[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][11]~q\);

-- Location: FF_X61_Y6_N56
\regs[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][11]~q\);

-- Location: FF_X62_Y6_N11
\regs[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][11]~q\);

-- Location: FF_X61_Y6_N44
\regs[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][11]~q\);

-- Location: LABCELL_X61_Y6_N45
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \regs[7][11]~q\ & ( \regs[4][11]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) # ((\regs[6][11]~q\)))) # (\BUS_addr1[0]~input_o\ & (((\regs[5][11]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( !\regs[7][11]~q\ & ( 
-- \regs[4][11]~q\ & ( (!\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\) # ((\regs[6][11]~q\)))) # (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & ((\regs[5][11]~q\)))) ) ) ) # ( \regs[7][11]~q\ & ( !\regs[4][11]~q\ & ( (!\BUS_addr1[0]~input_o\ & 
-- (\BUS_addr1[1]~input_o\ & (\regs[6][11]~q\))) # (\BUS_addr1[0]~input_o\ & (((\regs[5][11]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( !\regs[7][11]~q\ & ( !\regs[4][11]~q\ & ( (!\BUS_addr1[0]~input_o\ & (\BUS_addr1[1]~input_o\ & (\regs[6][11]~q\))) # 
-- (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & ((\regs[5][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[6][11]~q\,
	datad => \ALT_INV_regs[5][11]~q\,
	datae => \ALT_INV_regs[7][11]~q\,
	dataf => \ALT_INV_regs[4][11]~q\,
	combout => \Mux36~0_combout\);

-- Location: FF_X63_Y6_N32
\regs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][11]~q\);

-- Location: FF_X63_Y6_N2
\regs[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][11]~q\);

-- Location: FF_X63_Y6_N20
\regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[11]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][11]~q\);

-- Location: LABCELL_X62_Y7_N12
\regs[0][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][11]~feeder_combout\ = ( \BUS_data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[11]~input_o\,
	combout => \regs[0][11]~feeder_combout\);

-- Location: FF_X62_Y7_N14
\regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[0][11]~feeder_combout\,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][11]~q\);

-- Location: LABCELL_X62_Y7_N6
\Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \regs[1][11]~q\ & ( \regs[0][11]~q\ & ( (!\BUS_addr1[1]~input_o\) # ((!\BUS_addr1[0]~input_o\ & ((\regs[2][11]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[3][11]~q\))) ) ) ) # ( !\regs[1][11]~q\ & ( \regs[0][11]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (((!\BUS_addr1[1]~input_o\) # (\regs[2][11]~q\)))) # (\BUS_addr1[0]~input_o\ & (\regs[3][11]~q\ & ((\BUS_addr1[1]~input_o\)))) ) ) ) # ( \regs[1][11]~q\ & ( !\regs[0][11]~q\ & ( (!\BUS_addr1[0]~input_o\ & (((\regs[2][11]~q\ & 
-- \BUS_addr1[1]~input_o\)))) # (\BUS_addr1[0]~input_o\ & (((!\BUS_addr1[1]~input_o\)) # (\regs[3][11]~q\))) ) ) ) # ( !\regs[1][11]~q\ & ( !\regs[0][11]~q\ & ( (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[2][11]~q\))) # 
-- (\BUS_addr1[0]~input_o\ & (\regs[3][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[3][11]~q\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[2][11]~q\,
	datad => \ALT_INV_BUS_addr1[1]~input_o\,
	datae => \ALT_INV_regs[1][11]~q\,
	dataf => \ALT_INV_regs[0][11]~q\,
	combout => \Mux36~1_combout\);

-- Location: LABCELL_X62_Y7_N39
\Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( \Mux36~0_combout\ & ( \Mux36~1_combout\ ) ) # ( !\Mux36~0_combout\ & ( \Mux36~1_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) ) # ( \Mux36~0_combout\ & ( !\Mux36~1_combout\ & ( \BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux36~0_combout\,
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: FF_X62_Y7_N40
\BUS_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux36~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[11]~reg0_q\);

-- Location: FF_X61_Y4_N13
\BUS_data[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[11]~en_q\);

-- Location: IOIBUF_X64_Y0_N35
\BUS_data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(12),
	o => \BUS_data[12]~input_o\);

-- Location: LABCELL_X64_Y6_N18
\regs[0][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[0][12]~feeder_combout\ = ( \BUS_data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[12]~input_o\,
	combout => \regs[0][12]~feeder_combout\);

-- Location: FF_X64_Y6_N20
\regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[0][12]~feeder_combout\,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][12]~q\);

-- Location: FF_X63_Y6_N44
\regs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][12]~q\);

-- Location: FF_X63_Y6_N14
\regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][12]~q\);

-- Location: FF_X63_Y6_N52
\regs[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][12]~q\);

-- Location: LABCELL_X64_Y6_N36
\Mux35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = ( \regs[1][12]~q\ & ( \regs[2][12]~q\ & ( (!\BUS_addr1[1]~input_o\ & (((\regs[0][12]~q\)) # (\BUS_addr1[0]~input_o\))) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[3][12]~q\)))) ) ) ) # ( !\regs[1][12]~q\ & ( 
-- \regs[2][12]~q\ & ( (!\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\ & (\regs[0][12]~q\))) # (\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\) # ((\regs[3][12]~q\)))) ) ) ) # ( \regs[1][12]~q\ & ( !\regs[2][12]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- (((\regs[0][12]~q\)) # (\BUS_addr1[0]~input_o\))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & ((\regs[3][12]~q\)))) ) ) ) # ( !\regs[1][12]~q\ & ( !\regs[2][12]~q\ & ( (!\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\ & (\regs[0][12]~q\))) # 
-- (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\ & ((\regs[3][12]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[0][12]~q\,
	datad => \ALT_INV_regs[3][12]~q\,
	datae => \ALT_INV_regs[1][12]~q\,
	dataf => \ALT_INV_regs[2][12]~q\,
	combout => \Mux35~1_combout\);

-- Location: FF_X61_Y6_N8
\regs[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][12]~q\);

-- Location: FF_X61_Y6_N20
\regs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][12]~q\);

-- Location: FF_X62_Y6_N2
\regs[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][12]~q\);

-- Location: FF_X62_Y6_N41
\regs[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[12]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][12]~q\);

-- Location: LABCELL_X61_Y6_N15
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \regs[7][12]~q\ & ( \regs[6][12]~q\ & ( ((!\BUS_addr1[0]~input_o\ & ((\regs[4][12]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][12]~q\))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[7][12]~q\ & ( \regs[6][12]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (((\regs[4][12]~q\)) # (\BUS_addr1[1]~input_o\))) # (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & (\regs[5][12]~q\))) ) ) ) # ( \regs[7][12]~q\ & ( !\regs[6][12]~q\ & ( (!\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ 
-- & ((\regs[4][12]~q\)))) # (\BUS_addr1[0]~input_o\ & (((\regs[5][12]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( !\regs[7][12]~q\ & ( !\regs[6][12]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][12]~q\))) # (\BUS_addr1[0]~input_o\ 
-- & (\regs[5][12]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[5][12]~q\,
	datad => \ALT_INV_regs[4][12]~q\,
	datae => \ALT_INV_regs[7][12]~q\,
	dataf => \ALT_INV_regs[6][12]~q\,
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X64_Y6_N24
\Mux35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = ( \Mux35~1_combout\ & ( \Mux35~0_combout\ ) ) # ( !\Mux35~1_combout\ & ( \Mux35~0_combout\ & ( \BUS_addr1[2]~input_o\ ) ) ) # ( \Mux35~1_combout\ & ( !\Mux35~0_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux35~1_combout\,
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => \Mux35~2_combout\);

-- Location: FF_X64_Y6_N25
\BUS_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux35~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[12]~reg0_q\);

-- Location: MLABCELL_X59_Y3_N0
\BUS_data[12]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_data[12]~enfeeder_combout\ = ( \BUS_data[0]~33_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[0]~33_combout\,
	combout => \BUS_data[12]~enfeeder_combout\);

-- Location: FF_X59_Y3_N1
\BUS_data[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \BUS_data[12]~enfeeder_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[12]~en_q\);

-- Location: IOIBUF_X56_Y0_N1
\BUS_data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(13),
	o => \BUS_data[13]~input_o\);

-- Location: FF_X61_Y6_N26
\regs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[13]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][13]~q\);

-- Location: FF_X61_Y6_N50
\regs[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[13]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][13]~q\);

-- Location: FF_X62_Y6_N44
\regs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[13]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][13]~q\);

-- Location: FF_X62_Y6_N20
\regs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[13]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][13]~q\);

-- Location: LABCELL_X61_Y6_N0
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \regs[7][13]~q\ & ( \regs[6][13]~q\ & ( ((!\BUS_addr1[0]~input_o\ & ((\regs[4][13]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][13]~q\))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[7][13]~q\ & ( \regs[6][13]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][13]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][13]~q\)))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)))) ) ) ) # ( \regs[7][13]~q\ & ( !\regs[6][13]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][13]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][13]~q\)))) # (\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\)))) ) ) ) # ( !\regs[7][13]~q\ & ( !\regs[6][13]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][13]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][13]~q\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[4][13]~q\,
	datad => \ALT_INV_BUS_addr1[0]~input_o\,
	datae => \ALT_INV_regs[7][13]~q\,
	dataf => \ALT_INV_regs[6][13]~q\,
	combout => \Mux34~0_combout\);

-- Location: FF_X61_Y3_N44
\regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[13]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][13]~q\);

-- Location: FF_X61_Y3_N56
\regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[13]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][13]~q\);

-- Location: LABCELL_X62_Y3_N54
\regs[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][13]~feeder_combout\ = ( \BUS_data[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[13]~input_o\,
	combout => \regs[3][13]~feeder_combout\);

-- Location: FF_X62_Y3_N56
\regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[3][13]~feeder_combout\,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][13]~q\);

-- Location: LABCELL_X62_Y3_N30
\regs[2][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][13]~feeder_combout\ = ( \BUS_data[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[13]~input_o\,
	combout => \regs[2][13]~feeder_combout\);

-- Location: FF_X62_Y3_N32
\regs[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][13]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][13]~q\);

-- Location: LABCELL_X61_Y3_N45
\Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \regs[3][13]~q\ & ( \regs[2][13]~q\ & ( ((!\BUS_addr1[0]~input_o\ & (\regs[0][13]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][13]~q\)))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[3][13]~q\ & ( \regs[2][13]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[0][13]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][13]~q\))))) # (\BUS_addr1[1]~input_o\ & (!\BUS_addr1[0]~input_o\)) ) ) ) # ( \regs[3][13]~q\ & ( !\regs[2][13]~q\ & ( (!\BUS_addr1[1]~input_o\ 
-- & ((!\BUS_addr1[0]~input_o\ & (\regs[0][13]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][13]~q\))))) # (\BUS_addr1[1]~input_o\ & (\BUS_addr1[0]~input_o\)) ) ) ) # ( !\regs[3][13]~q\ & ( !\regs[2][13]~q\ & ( (!\BUS_addr1[1]~input_o\ & 
-- ((!\BUS_addr1[0]~input_o\ & (\regs[0][13]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][13]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[0][13]~q\,
	datad => \ALT_INV_regs[1][13]~q\,
	datae => \ALT_INV_regs[3][13]~q\,
	dataf => \ALT_INV_regs[2][13]~q\,
	combout => \Mux34~1_combout\);

-- Location: LABCELL_X60_Y6_N24
\Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( \Mux34~0_combout\ & ( \Mux34~1_combout\ ) ) # ( !\Mux34~0_combout\ & ( \Mux34~1_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) ) # ( \Mux34~0_combout\ & ( !\Mux34~1_combout\ & ( \BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux34~0_combout\,
	dataf => \ALT_INV_Mux34~1_combout\,
	combout => \Mux34~2_combout\);

-- Location: FF_X60_Y6_N26
\BUS_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux34~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[13]~reg0_q\);

-- Location: MLABCELL_X59_Y3_N6
\BUS_data[13]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_data[13]~enfeeder_combout\ = ( \BUS_data[0]~33_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[0]~33_combout\,
	combout => \BUS_data[13]~enfeeder_combout\);

-- Location: FF_X59_Y3_N7
\BUS_data[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \BUS_data[13]~enfeeder_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[13]~en_q\);

-- Location: IOIBUF_X56_Y0_N18
\BUS_data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(14),
	o => \BUS_data[14]~input_o\);

-- Location: FF_X62_Y7_N53
\regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][14]~q\);

-- Location: FF_X61_Y7_N44
\regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][14]~q\);

-- Location: FF_X62_Y7_N23
\regs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][14]~q\);

-- Location: FF_X61_Y7_N19
\regs[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][14]~q\);

-- Location: LABCELL_X62_Y7_N48
\Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = ( \regs[3][14]~q\ & ( \regs[2][14]~q\ & ( ((!\BUS_addr1[0]~input_o\ & (\regs[0][14]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][14]~q\)))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[3][14]~q\ & ( \regs[2][14]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (((\regs[0][14]~q\)) # (\BUS_addr1[1]~input_o\))) # (\BUS_addr1[0]~input_o\ & (!\BUS_addr1[1]~input_o\ & ((\regs[1][14]~q\)))) ) ) ) # ( \regs[3][14]~q\ & ( !\regs[2][14]~q\ & ( (!\BUS_addr1[0]~input_o\ & 
-- (!\BUS_addr1[1]~input_o\ & (\regs[0][14]~q\))) # (\BUS_addr1[0]~input_o\ & (((\regs[1][14]~q\)) # (\BUS_addr1[1]~input_o\))) ) ) ) # ( !\regs[3][14]~q\ & ( !\regs[2][14]~q\ & ( (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[0][14]~q\)) # 
-- (\BUS_addr1[0]~input_o\ & ((\regs[1][14]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[0]~input_o\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_regs[0][14]~q\,
	datad => \ALT_INV_regs[1][14]~q\,
	datae => \ALT_INV_regs[3][14]~q\,
	dataf => \ALT_INV_regs[2][14]~q\,
	combout => \Mux33~1_combout\);

-- Location: FF_X61_Y5_N8
\regs[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][14]~q\);

-- Location: FF_X61_Y5_N56
\regs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][14]~q\);

-- Location: FF_X61_Y5_N40
\regs[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][14]~q\);

-- Location: FF_X62_Y5_N14
\regs[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[14]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][14]~q\);

-- Location: LABCELL_X61_Y5_N18
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \regs[6][14]~q\ & ( \regs[7][14]~q\ & ( ((!\BUS_addr1[0]~input_o\ & ((\regs[4][14]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][14]~q\))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[6][14]~q\ & ( \regs[7][14]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][14]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][14]~q\)))) # (\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\)))) ) ) ) # ( \regs[6][14]~q\ & ( !\regs[7][14]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][14]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][14]~q\)))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)))) ) ) ) # ( !\regs[6][14]~q\ & ( !\regs[7][14]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & ((\regs[4][14]~q\))) # (\BUS_addr1[0]~input_o\ & (\regs[5][14]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[1]~input_o\,
	datab => \ALT_INV_regs[5][14]~q\,
	datac => \ALT_INV_regs[4][14]~q\,
	datad => \ALT_INV_BUS_addr1[0]~input_o\,
	datae => \ALT_INV_regs[6][14]~q\,
	dataf => \ALT_INV_regs[7][14]~q\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X62_Y7_N24
\Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = ( \Mux33~1_combout\ & ( \Mux33~0_combout\ ) ) # ( !\Mux33~1_combout\ & ( \Mux33~0_combout\ & ( \BUS_addr1[2]~input_o\ ) ) ) # ( \Mux33~1_combout\ & ( !\Mux33~0_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux33~1_combout\,
	dataf => \ALT_INV_Mux33~0_combout\,
	combout => \Mux33~2_combout\);

-- Location: FF_X62_Y7_N25
\BUS_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux33~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[14]~reg0_q\);

-- Location: FF_X60_Y4_N52
\BUS_data[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[0]~33_combout\,
	sload => VCC,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[14]~en_q\);

-- Location: IOIBUF_X58_Y0_N75
\BUS_data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_data(15),
	o => \BUS_data[15]~input_o\);

-- Location: FF_X59_Y5_N50
\regs[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[15]~input_o\,
	sload => VCC,
	ena => \regs[7][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][15]~q\);

-- Location: FF_X59_Y5_N41
\regs[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[15]~input_o\,
	sload => VCC,
	ena => \regs[5][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][15]~q\);

-- Location: FF_X59_Y5_N56
\regs[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[15]~input_o\,
	sload => VCC,
	ena => \regs[6][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][15]~q\);

-- Location: FF_X60_Y5_N47
\regs[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[15]~input_o\,
	sload => VCC,
	ena => \regs[4][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][15]~q\);

-- Location: MLABCELL_X59_Y5_N27
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \regs[6][15]~q\ & ( \regs[4][15]~q\ & ( (!\BUS_addr1[0]~input_o\) # ((!\BUS_addr1[1]~input_o\ & ((\regs[5][15]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[7][15]~q\))) ) ) ) # ( !\regs[6][15]~q\ & ( \regs[4][15]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (((!\BUS_addr1[1]~input_o\)))) # (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & ((\regs[5][15]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[7][15]~q\)))) ) ) ) # ( \regs[6][15]~q\ & ( !\regs[4][15]~q\ & ( 
-- (!\BUS_addr1[0]~input_o\ & (((\BUS_addr1[1]~input_o\)))) # (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & ((\regs[5][15]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[7][15]~q\)))) ) ) ) # ( !\regs[6][15]~q\ & ( !\regs[4][15]~q\ & ( 
-- (\BUS_addr1[0]~input_o\ & ((!\BUS_addr1[1]~input_o\ & ((\regs[5][15]~q\))) # (\BUS_addr1[1]~input_o\ & (\regs[7][15]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[7][15]~q\,
	datab => \ALT_INV_BUS_addr1[0]~input_o\,
	datac => \ALT_INV_regs[5][15]~q\,
	datad => \ALT_INV_BUS_addr1[1]~input_o\,
	datae => \ALT_INV_regs[6][15]~q\,
	dataf => \ALT_INV_regs[4][15]~q\,
	combout => \Mux32~0_combout\);

-- Location: FF_X61_Y3_N50
\regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[15]~input_o\,
	sload => VCC,
	ena => \regs[0][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][15]~q\);

-- Location: FF_X61_Y3_N2
\regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BUS_data[15]~input_o\,
	sload => VCC,
	ena => \regs[1][15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][15]~q\);

-- Location: LABCELL_X60_Y3_N24
\regs[2][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[2][15]~feeder_combout\ = ( \BUS_data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[15]~input_o\,
	combout => \regs[2][15]~feeder_combout\);

-- Location: FF_X60_Y3_N26
\regs[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[2][15]~feeder_combout\,
	ena => \regs[2][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][15]~q\);

-- Location: LABCELL_X60_Y3_N12
\regs[3][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs[3][15]~feeder_combout\ = ( \BUS_data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BUS_data[15]~input_o\,
	combout => \regs[3][15]~feeder_combout\);

-- Location: FF_X60_Y3_N14
\regs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs[3][15]~feeder_combout\,
	ena => \regs[3][13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][15]~q\);

-- Location: LABCELL_X61_Y3_N51
\Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( \regs[2][15]~q\ & ( \regs[3][15]~q\ & ( ((!\BUS_addr1[0]~input_o\ & (\regs[0][15]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][15]~q\)))) # (\BUS_addr1[1]~input_o\) ) ) ) # ( !\regs[2][15]~q\ & ( \regs[3][15]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[0][15]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][15]~q\))))) # (\BUS_addr1[1]~input_o\ & (((\BUS_addr1[0]~input_o\)))) ) ) ) # ( \regs[2][15]~q\ & ( !\regs[3][15]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[0][15]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][15]~q\))))) # (\BUS_addr1[1]~input_o\ & (((!\BUS_addr1[0]~input_o\)))) ) ) ) # ( !\regs[2][15]~q\ & ( !\regs[3][15]~q\ & ( 
-- (!\BUS_addr1[1]~input_o\ & ((!\BUS_addr1[0]~input_o\ & (\regs[0][15]~q\)) # (\BUS_addr1[0]~input_o\ & ((\regs[1][15]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[0][15]~q\,
	datab => \ALT_INV_BUS_addr1[1]~input_o\,
	datac => \ALT_INV_BUS_addr1[0]~input_o\,
	datad => \ALT_INV_regs[1][15]~q\,
	datae => \ALT_INV_regs[2][15]~q\,
	dataf => \ALT_INV_regs[3][15]~q\,
	combout => \Mux32~1_combout\);

-- Location: LABCELL_X60_Y5_N57
\Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = ( \Mux32~0_combout\ & ( \Mux32~1_combout\ ) ) # ( !\Mux32~0_combout\ & ( \Mux32~1_combout\ & ( !\BUS_addr1[2]~input_o\ ) ) ) # ( \Mux32~0_combout\ & ( !\Mux32~1_combout\ & ( \BUS_addr1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUS_addr1[2]~input_o\,
	datae => \ALT_INV_Mux32~0_combout\,
	dataf => \ALT_INV_Mux32~1_combout\,
	combout => \Mux32~2_combout\);

-- Location: FF_X60_Y5_N59
\BUS_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux32~2_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[15]~reg0_q\);

-- Location: LABCELL_X60_Y4_N18
\BUS_data[15]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUS_data[15]~enfeeder_combout\ = \BUS_data[0]~33_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BUS_data[0]~33_combout\,
	combout => \BUS_data[15]~enfeeder_combout\);

-- Location: FF_X60_Y4_N19
\BUS_data[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \BUS_data[15]~enfeeder_combout\,
	ena => \BUS_data[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUS_data[15]~en_q\);

-- Location: IOIBUF_X66_Y0_N41
\regA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regA(2),
	o => \regA[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\regA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regA(0),
	o => \regA[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\regA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regA(1),
	o => \regA[1]~input_o\);

-- Location: LABCELL_X60_Y3_N57
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \regs[3][0]~q\ & ( \regs[2][0]~q\ & ( ((!\regA[0]~input_o\ & ((\regs[0][0]~q\))) # (\regA[0]~input_o\ & (\regs[1][0]~q\))) # (\regA[1]~input_o\) ) ) ) # ( !\regs[3][0]~q\ & ( \regs[2][0]~q\ & ( (!\regA[0]~input_o\ & 
-- (((\regs[0][0]~q\)) # (\regA[1]~input_o\))) # (\regA[0]~input_o\ & (!\regA[1]~input_o\ & (\regs[1][0]~q\))) ) ) ) # ( \regs[3][0]~q\ & ( !\regs[2][0]~q\ & ( (!\regA[0]~input_o\ & (!\regA[1]~input_o\ & ((\regs[0][0]~q\)))) # (\regA[0]~input_o\ & 
-- (((\regs[1][0]~q\)) # (\regA[1]~input_o\))) ) ) ) # ( !\regs[3][0]~q\ & ( !\regs[2][0]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[0][0]~q\))) # (\regA[0]~input_o\ & (\regs[1][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[1][0]~q\,
	datad => \ALT_INV_regs[0][0]~q\,
	datae => \ALT_INV_regs[3][0]~q\,
	dataf => \ALT_INV_regs[2][0]~q\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X60_Y5_N0
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \regs[5][0]~q\ & ( \regs[6][0]~q\ & ( (!\regA[1]~input_o\ & (((\regA[0]~input_o\) # (\regs[4][0]~q\)))) # (\regA[1]~input_o\ & (((!\regA[0]~input_o\)) # (\regs[7][0]~q\))) ) ) ) # ( !\regs[5][0]~q\ & ( \regs[6][0]~q\ & ( 
-- (!\regA[1]~input_o\ & (((\regs[4][0]~q\ & !\regA[0]~input_o\)))) # (\regA[1]~input_o\ & (((!\regA[0]~input_o\)) # (\regs[7][0]~q\))) ) ) ) # ( \regs[5][0]~q\ & ( !\regs[6][0]~q\ & ( (!\regA[1]~input_o\ & (((\regA[0]~input_o\) # (\regs[4][0]~q\)))) # 
-- (\regA[1]~input_o\ & (\regs[7][0]~q\ & ((\regA[0]~input_o\)))) ) ) ) # ( !\regs[5][0]~q\ & ( !\regs[6][0]~q\ & ( (!\regA[1]~input_o\ & (((\regs[4][0]~q\ & !\regA[0]~input_o\)))) # (\regA[1]~input_o\ & (\regs[7][0]~q\ & ((\regA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[7][0]~q\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[4][0]~q\,
	datad => \ALT_INV_regA[0]~input_o\,
	datae => \ALT_INV_regs[5][0]~q\,
	dataf => \ALT_INV_regs[6][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X60_Y3_N0
\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Mux15~1_combout\ & ( \Mux15~0_combout\ ) ) # ( !\Mux15~1_combout\ & ( \Mux15~0_combout\ & ( \regA[2]~input_o\ ) ) ) # ( \Mux15~1_combout\ & ( !\Mux15~0_combout\ & ( !\regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux15~1_combout\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: FF_X60_Y3_N1
\outA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[0]~reg0_q\);

-- Location: LABCELL_X62_Y5_N33
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \regs[5][1]~q\ & ( \regs[7][1]~q\ & ( ((!\regA[1]~input_o\ & ((\regs[4][1]~q\))) # (\regA[1]~input_o\ & (\regs[6][1]~q\))) # (\regA[0]~input_o\) ) ) ) # ( !\regs[5][1]~q\ & ( \regs[7][1]~q\ & ( (!\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\ & ((\regs[4][1]~q\))) # (\regA[1]~input_o\ & (\regs[6][1]~q\)))) # (\regA[0]~input_o\ & (((\regA[1]~input_o\)))) ) ) ) # ( \regs[5][1]~q\ & ( !\regs[7][1]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[4][1]~q\))) # 
-- (\regA[1]~input_o\ & (\regs[6][1]~q\)))) # (\regA[0]~input_o\ & (((!\regA[1]~input_o\)))) ) ) ) # ( !\regs[5][1]~q\ & ( !\regs[7][1]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[4][1]~q\))) # (\regA[1]~input_o\ & (\regs[6][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regs[6][1]~q\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[4][1]~q\,
	datae => \ALT_INV_regs[5][1]~q\,
	dataf => \ALT_INV_regs[7][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X62_Y5_N48
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \regs[2][1]~q\ & ( \regs[0][1]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & (\regs[1][1]~q\)) # (\regA[1]~input_o\ & ((\regs[3][1]~q\)))) ) ) ) # ( !\regs[2][1]~q\ & ( \regs[0][1]~q\ & ( (!\regA[0]~input_o\ & 
-- (((!\regA[1]~input_o\)))) # (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[1][1]~q\)) # (\regA[1]~input_o\ & ((\regs[3][1]~q\))))) ) ) ) # ( \regs[2][1]~q\ & ( !\regs[0][1]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\)))) # (\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\ & (\regs[1][1]~q\)) # (\regA[1]~input_o\ & ((\regs[3][1]~q\))))) ) ) ) # ( !\regs[2][1]~q\ & ( !\regs[0][1]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[1][1]~q\)) # (\regA[1]~input_o\ & ((\regs[3][1]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regs[1][1]~q\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[3][1]~q\,
	datae => \ALT_INV_regs[2][1]~q\,
	dataf => \ALT_INV_regs[0][1]~q\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X62_Y5_N3
\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \regA[2]~input_o\ & ( \Mux14~1_combout\ & ( \Mux14~0_combout\ ) ) ) # ( !\regA[2]~input_o\ & ( \Mux14~1_combout\ ) ) # ( \regA[2]~input_o\ & ( !\Mux14~1_combout\ & ( \Mux14~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux14~0_combout\,
	datae => \ALT_INV_regA[2]~input_o\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: FF_X62_Y5_N4
\outA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[1]~reg0_q\);

-- Location: LABCELL_X63_Y5_N45
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \regs[1][2]~q\ & ( \regs[3][2]~q\ & ( ((!\regA[1]~input_o\ & (\regs[0][2]~q\)) # (\regA[1]~input_o\ & ((\regs[2][2]~q\)))) # (\regA[0]~input_o\) ) ) ) # ( !\regs[1][2]~q\ & ( \regs[3][2]~q\ & ( (!\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\ & (\regs[0][2]~q\)) # (\regA[1]~input_o\ & ((\regs[2][2]~q\))))) # (\regA[0]~input_o\ & (((\regA[1]~input_o\)))) ) ) ) # ( \regs[1][2]~q\ & ( !\regs[3][2]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[0][2]~q\)) # 
-- (\regA[1]~input_o\ & ((\regs[2][2]~q\))))) # (\regA[0]~input_o\ & (((!\regA[1]~input_o\)))) ) ) ) # ( !\regs[1][2]~q\ & ( !\regs[3][2]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[0][2]~q\)) # (\regA[1]~input_o\ & ((\regs[2][2]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[0][2]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[2][2]~q\,
	datae => \ALT_INV_regs[1][2]~q\,
	dataf => \ALT_INV_regs[3][2]~q\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X63_Y5_N33
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \regs[6][2]~q\ & ( \regs[4][2]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & (\regs[5][2]~q\)) # (\regA[1]~input_o\ & ((\regs[7][2]~q\)))) ) ) ) # ( !\regs[6][2]~q\ & ( \regs[4][2]~q\ & ( (!\regA[1]~input_o\ & 
-- ((!\regA[0]~input_o\) # ((\regs[5][2]~q\)))) # (\regA[1]~input_o\ & (\regA[0]~input_o\ & ((\regs[7][2]~q\)))) ) ) ) # ( \regs[6][2]~q\ & ( !\regs[4][2]~q\ & ( (!\regA[1]~input_o\ & (\regA[0]~input_o\ & (\regs[5][2]~q\))) # (\regA[1]~input_o\ & 
-- ((!\regA[0]~input_o\) # ((\regs[7][2]~q\)))) ) ) ) # ( !\regs[6][2]~q\ & ( !\regs[4][2]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[5][2]~q\)) # (\regA[1]~input_o\ & ((\regs[7][2]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[5][2]~q\,
	datad => \ALT_INV_regs[7][2]~q\,
	datae => \ALT_INV_regs[6][2]~q\,
	dataf => \ALT_INV_regs[4][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X63_Y5_N48
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux13~1_combout\ & ( \Mux13~0_combout\ ) ) # ( !\Mux13~1_combout\ & ( \Mux13~0_combout\ & ( \regA[2]~input_o\ ) ) ) # ( \Mux13~1_combout\ & ( !\Mux13~0_combout\ & ( !\regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux13~1_combout\,
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: FF_X63_Y5_N49
\outA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[2]~reg0_q\);

-- Location: LABCELL_X63_Y5_N27
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \regs[0][3]~q\ & ( \regs[3][3]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\) # ((\regs[1][3]~q\)))) # (\regA[1]~input_o\ & (((\regs[2][3]~q\)) # (\regA[0]~input_o\))) ) ) ) # ( !\regs[0][3]~q\ & ( \regs[3][3]~q\ & ( 
-- (!\regA[1]~input_o\ & (\regA[0]~input_o\ & ((\regs[1][3]~q\)))) # (\regA[1]~input_o\ & (((\regs[2][3]~q\)) # (\regA[0]~input_o\))) ) ) ) # ( \regs[0][3]~q\ & ( !\regs[3][3]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\) # ((\regs[1][3]~q\)))) # 
-- (\regA[1]~input_o\ & (!\regA[0]~input_o\ & (\regs[2][3]~q\))) ) ) ) # ( !\regs[0][3]~q\ & ( !\regs[3][3]~q\ & ( (!\regA[1]~input_o\ & (\regA[0]~input_o\ & ((\regs[1][3]~q\)))) # (\regA[1]~input_o\ & (!\regA[0]~input_o\ & (\regs[2][3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[2][3]~q\,
	datad => \ALT_INV_regs[1][3]~q\,
	datae => \ALT_INV_regs[0][3]~q\,
	dataf => \ALT_INV_regs[3][3]~q\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X63_Y5_N18
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \regs[5][3]~q\ & ( \regs[7][3]~q\ & ( ((!\regA[1]~input_o\ & (\regs[4][3]~q\)) # (\regA[1]~input_o\ & ((\regs[6][3]~q\)))) # (\regA[0]~input_o\) ) ) ) # ( !\regs[5][3]~q\ & ( \regs[7][3]~q\ & ( (!\regA[1]~input_o\ & 
-- (!\regA[0]~input_o\ & (\regs[4][3]~q\))) # (\regA[1]~input_o\ & (((\regs[6][3]~q\)) # (\regA[0]~input_o\))) ) ) ) # ( \regs[5][3]~q\ & ( !\regs[7][3]~q\ & ( (!\regA[1]~input_o\ & (((\regs[4][3]~q\)) # (\regA[0]~input_o\))) # (\regA[1]~input_o\ & 
-- (!\regA[0]~input_o\ & ((\regs[6][3]~q\)))) ) ) ) # ( !\regs[5][3]~q\ & ( !\regs[7][3]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[4][3]~q\)) # (\regA[1]~input_o\ & ((\regs[6][3]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[4][3]~q\,
	datad => \ALT_INV_regs[6][3]~q\,
	datae => \ALT_INV_regs[5][3]~q\,
	dataf => \ALT_INV_regs[7][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X63_Y5_N3
\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux12~1_combout\ & ( \Mux12~0_combout\ ) ) # ( !\Mux12~1_combout\ & ( \Mux12~0_combout\ & ( \regA[2]~input_o\ ) ) ) # ( \Mux12~1_combout\ & ( !\Mux12~0_combout\ & ( !\regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux12~1_combout\,
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: FF_X63_Y5_N4
\outA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[3]~reg0_q\);

-- Location: LABCELL_X63_Y5_N9
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \regs[1][4]~q\ & ( \regs[3][4]~q\ & ( ((!\regA[1]~input_o\ & (\regs[0][4]~q\)) # (\regA[1]~input_o\ & ((\regs[2][4]~q\)))) # (\regA[0]~input_o\) ) ) ) # ( !\regs[1][4]~q\ & ( \regs[3][4]~q\ & ( (!\regA[1]~input_o\ & 
-- (!\regA[0]~input_o\ & (\regs[0][4]~q\))) # (\regA[1]~input_o\ & (((\regs[2][4]~q\)) # (\regA[0]~input_o\))) ) ) ) # ( \regs[1][4]~q\ & ( !\regs[3][4]~q\ & ( (!\regA[1]~input_o\ & (((\regs[0][4]~q\)) # (\regA[0]~input_o\))) # (\regA[1]~input_o\ & 
-- (!\regA[0]~input_o\ & ((\regs[2][4]~q\)))) ) ) ) # ( !\regs[1][4]~q\ & ( !\regs[3][4]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[0][4]~q\)) # (\regA[1]~input_o\ & ((\regs[2][4]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[0][4]~q\,
	datad => \ALT_INV_regs[2][4]~q\,
	datae => \ALT_INV_regs[1][4]~q\,
	dataf => \ALT_INV_regs[3][4]~q\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X63_Y5_N12
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \regs[6][4]~q\ & ( \regs[4][4]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & ((\regs[5][4]~q\))) # (\regA[1]~input_o\ & (\regs[7][4]~q\))) ) ) ) # ( !\regs[6][4]~q\ & ( \regs[4][4]~q\ & ( (!\regA[0]~input_o\ & 
-- (((!\regA[1]~input_o\)))) # (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[5][4]~q\))) # (\regA[1]~input_o\ & (\regs[7][4]~q\)))) ) ) ) # ( \regs[6][4]~q\ & ( !\regs[4][4]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\)))) # (\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\ & ((\regs[5][4]~q\))) # (\regA[1]~input_o\ & (\regs[7][4]~q\)))) ) ) ) # ( !\regs[6][4]~q\ & ( !\regs[4][4]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[5][4]~q\))) # (\regA[1]~input_o\ & (\regs[7][4]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[7][4]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[5][4]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regs[6][4]~q\,
	dataf => \ALT_INV_regs[4][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X63_Y5_N36
\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \Mux11~0_combout\ & ( (\Mux11~1_combout\) # (\regA[2]~input_o\) ) ) # ( !\Mux11~0_combout\ & ( (!\regA[2]~input_o\ & \Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regA[2]~input_o\,
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: FF_X63_Y5_N37
\outA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[4]~reg0_q\);

-- Location: LABCELL_X64_Y3_N54
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \regs[5][5]~q\ & ( \regs[7][5]~q\ & ( ((!\regA[1]~input_o\ & (\regs[4][5]~q\)) # (\regA[1]~input_o\ & ((\regs[6][5]~q\)))) # (\regA[0]~input_o\) ) ) ) # ( !\regs[5][5]~q\ & ( \regs[7][5]~q\ & ( (!\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\ & (\regs[4][5]~q\)) # (\regA[1]~input_o\ & ((\regs[6][5]~q\))))) # (\regA[0]~input_o\ & (\regA[1]~input_o\)) ) ) ) # ( \regs[5][5]~q\ & ( !\regs[7][5]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[4][5]~q\)) # 
-- (\regA[1]~input_o\ & ((\regs[6][5]~q\))))) # (\regA[0]~input_o\ & (!\regA[1]~input_o\)) ) ) ) # ( !\regs[5][5]~q\ & ( !\regs[7][5]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & (\regs[4][5]~q\)) # (\regA[1]~input_o\ & ((\regs[6][5]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[4][5]~q\,
	datad => \ALT_INV_regs[6][5]~q\,
	datae => \ALT_INV_regs[5][5]~q\,
	dataf => \ALT_INV_regs[7][5]~q\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X63_Y3_N18
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \regs[3][5]~q\ & ( \regs[2][5]~q\ & ( ((!\regA[0]~input_o\ & (\regs[0][5]~q\)) # (\regA[0]~input_o\ & ((\regs[1][5]~q\)))) # (\regA[1]~input_o\) ) ) ) # ( !\regs[3][5]~q\ & ( \regs[2][5]~q\ & ( (!\regA[0]~input_o\ & 
-- (((\regA[1]~input_o\)) # (\regs[0][5]~q\))) # (\regA[0]~input_o\ & (((\regs[1][5]~q\ & !\regA[1]~input_o\)))) ) ) ) # ( \regs[3][5]~q\ & ( !\regs[2][5]~q\ & ( (!\regA[0]~input_o\ & (\regs[0][5]~q\ & ((!\regA[1]~input_o\)))) # (\regA[0]~input_o\ & 
-- (((\regA[1]~input_o\) # (\regs[1][5]~q\)))) ) ) ) # ( !\regs[3][5]~q\ & ( !\regs[2][5]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[0][5]~q\)) # (\regA[0]~input_o\ & ((\regs[1][5]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[0][5]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[1][5]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regs[3][5]~q\,
	dataf => \ALT_INV_regs[2][5]~q\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X64_Y3_N45
\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \Mux10~0_combout\ & ( \Mux10~1_combout\ ) ) # ( !\Mux10~0_combout\ & ( \Mux10~1_combout\ & ( !\regA[2]~input_o\ ) ) ) # ( \Mux10~0_combout\ & ( !\Mux10~1_combout\ & ( \regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: FF_X64_Y3_N46
\outA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[5]~reg0_q\);

-- Location: LABCELL_X63_Y6_N57
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \regs[2][6]~q\ & ( \regs[0][6]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & ((\regs[1][6]~q\))) # (\regA[1]~input_o\ & (\regs[3][6]~q\))) ) ) ) # ( !\regs[2][6]~q\ & ( \regs[0][6]~q\ & ( (!\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\) # (\regs[1][6]~q\)))) # (\regA[1]~input_o\ & (\regs[3][6]~q\ & (\regA[0]~input_o\))) ) ) ) # ( \regs[2][6]~q\ & ( !\regs[0][6]~q\ & ( (!\regA[1]~input_o\ & (((\regA[0]~input_o\ & \regs[1][6]~q\)))) # (\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\)) # (\regs[3][6]~q\))) ) ) ) # ( !\regs[2][6]~q\ & ( !\regs[0][6]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[1][6]~q\))) # (\regA[1]~input_o\ & (\regs[3][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regs[3][6]~q\,
	datac => \ALT_INV_regA[0]~input_o\,
	datad => \ALT_INV_regs[1][6]~q\,
	datae => \ALT_INV_regs[2][6]~q\,
	dataf => \ALT_INV_regs[0][6]~q\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X62_Y6_N36
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \regs[5][6]~q\ & ( \regs[6][6]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\)) # (\regs[4][6]~q\))) # (\regA[0]~input_o\ & (((!\regA[1]~input_o\) # (\regs[7][6]~q\)))) ) ) ) # ( !\regs[5][6]~q\ & ( \regs[6][6]~q\ & ( 
-- (!\regA[0]~input_o\ & (((\regA[1]~input_o\)) # (\regs[4][6]~q\))) # (\regA[0]~input_o\ & (((\regA[1]~input_o\ & \regs[7][6]~q\)))) ) ) ) # ( \regs[5][6]~q\ & ( !\regs[6][6]~q\ & ( (!\regA[0]~input_o\ & (\regs[4][6]~q\ & (!\regA[1]~input_o\))) # 
-- (\regA[0]~input_o\ & (((!\regA[1]~input_o\) # (\regs[7][6]~q\)))) ) ) ) # ( !\regs[5][6]~q\ & ( !\regs[6][6]~q\ & ( (!\regA[0]~input_o\ & (\regs[4][6]~q\ & (!\regA[1]~input_o\))) # (\regA[0]~input_o\ & (((\regA[1]~input_o\ & \regs[7][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regs[4][6]~q\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[7][6]~q\,
	datae => \ALT_INV_regs[5][6]~q\,
	dataf => \ALT_INV_regs[6][6]~q\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X62_Y6_N51
\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux9~0_combout\ & ( (\Mux9~1_combout\) # (\regA[2]~input_o\) ) ) # ( !\Mux9~0_combout\ & ( (!\regA[2]~input_o\ & \Mux9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[2]~input_o\,
	datad => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: FF_X62_Y6_N52
\outA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[6]~reg0_q\);

-- Location: LABCELL_X63_Y6_N21
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \regs[1][7]~q\ & ( \regs[0][7]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & ((\regs[2][7]~q\))) # (\regA[0]~input_o\ & (\regs[3][7]~q\))) ) ) ) # ( !\regs[1][7]~q\ & ( \regs[0][7]~q\ & ( (!\regA[0]~input_o\ & 
-- (((!\regA[1]~input_o\) # (\regs[2][7]~q\)))) # (\regA[0]~input_o\ & (\regs[3][7]~q\ & ((\regA[1]~input_o\)))) ) ) ) # ( \regs[1][7]~q\ & ( !\regs[0][7]~q\ & ( (!\regA[0]~input_o\ & (((\regs[2][7]~q\ & \regA[1]~input_o\)))) # (\regA[0]~input_o\ & 
-- (((!\regA[1]~input_o\)) # (\regs[3][7]~q\))) ) ) ) # ( !\regs[1][7]~q\ & ( !\regs[0][7]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[2][7]~q\))) # (\regA[0]~input_o\ & (\regs[3][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[3][7]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[2][7]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regs[1][7]~q\,
	dataf => \ALT_INV_regs[0][7]~q\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X63_Y7_N3
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \regs[7][7]~q\ & ( \regs[6][7]~q\ & ( ((!\regA[0]~input_o\ & ((\regs[4][7]~q\))) # (\regA[0]~input_o\ & (\regs[5][7]~q\))) # (\regA[1]~input_o\) ) ) ) # ( !\regs[7][7]~q\ & ( \regs[6][7]~q\ & ( (!\regA[1]~input_o\ & 
-- ((!\regA[0]~input_o\ & ((\regs[4][7]~q\))) # (\regA[0]~input_o\ & (\regs[5][7]~q\)))) # (\regA[1]~input_o\ & (((!\regA[0]~input_o\)))) ) ) ) # ( \regs[7][7]~q\ & ( !\regs[6][7]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[4][7]~q\))) # 
-- (\regA[0]~input_o\ & (\regs[5][7]~q\)))) # (\regA[1]~input_o\ & (((\regA[0]~input_o\)))) ) ) ) # ( !\regs[7][7]~q\ & ( !\regs[6][7]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[4][7]~q\))) # (\regA[0]~input_o\ & (\regs[5][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regs[5][7]~q\,
	datac => \ALT_INV_regA[0]~input_o\,
	datad => \ALT_INV_regs[4][7]~q\,
	datae => \ALT_INV_regs[7][7]~q\,
	dataf => \ALT_INV_regs[6][7]~q\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X64_Y7_N0
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Mux8~1_combout\ & ( \Mux8~0_combout\ ) ) # ( !\Mux8~1_combout\ & ( \Mux8~0_combout\ & ( \regA[2]~input_o\ ) ) ) # ( \Mux8~1_combout\ & ( !\Mux8~0_combout\ & ( !\regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux8~1_combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: FF_X64_Y7_N1
\outA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[7]~reg0_q\);

-- Location: LABCELL_X62_Y5_N9
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \regs[5][8]~q\ & ( \regs[4][8]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & ((\regs[6][8]~q\))) # (\regA[0]~input_o\ & (\regs[7][8]~q\))) ) ) ) # ( !\regs[5][8]~q\ & ( \regs[4][8]~q\ & ( (!\regA[0]~input_o\ & 
-- (((!\regA[1]~input_o\) # (\regs[6][8]~q\)))) # (\regA[0]~input_o\ & (\regs[7][8]~q\ & (\regA[1]~input_o\))) ) ) ) # ( \regs[5][8]~q\ & ( !\regs[4][8]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\ & \regs[6][8]~q\)))) # (\regA[0]~input_o\ & 
-- (((!\regA[1]~input_o\)) # (\regs[7][8]~q\))) ) ) ) # ( !\regs[5][8]~q\ & ( !\regs[4][8]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[6][8]~q\))) # (\regA[0]~input_o\ & (\regs[7][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regs[7][8]~q\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[6][8]~q\,
	datae => \ALT_INV_regs[5][8]~q\,
	dataf => \ALT_INV_regs[4][8]~q\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X62_Y3_N3
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \regs[2][8]~q\ & ( \regs[0][8]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & ((\regs[1][8]~q\))) # (\regA[1]~input_o\ & (\regs[3][8]~q\))) ) ) ) # ( !\regs[2][8]~q\ & ( \regs[0][8]~q\ & ( (!\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\) # (\regs[1][8]~q\)))) # (\regA[1]~input_o\ & (\regs[3][8]~q\ & ((\regA[0]~input_o\)))) ) ) ) # ( \regs[2][8]~q\ & ( !\regs[0][8]~q\ & ( (!\regA[1]~input_o\ & (((\regs[1][8]~q\ & \regA[0]~input_o\)))) # (\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\)) # (\regs[3][8]~q\))) ) ) ) # ( !\regs[2][8]~q\ & ( !\regs[0][8]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[1][8]~q\))) # (\regA[1]~input_o\ & (\regs[3][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[3][8]~q\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[1][8]~q\,
	datad => \ALT_INV_regA[0]~input_o\,
	datae => \ALT_INV_regs[2][8]~q\,
	dataf => \ALT_INV_regs[0][8]~q\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X62_Y5_N39
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Mux7~1_combout\ & ( (!\regA[2]~input_o\) # (\Mux7~0_combout\) ) ) # ( !\Mux7~1_combout\ & ( (\regA[2]~input_o\ & \Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[2]~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: FF_X62_Y5_N41
\outA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[8]~reg0_q\);

-- Location: LABCELL_X60_Y5_N48
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \regs[4][9]~q\ & ( \regs[5][9]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & ((\regs[6][9]~q\))) # (\regA[0]~input_o\ & (\regs[7][9]~q\))) ) ) ) # ( !\regs[4][9]~q\ & ( \regs[5][9]~q\ & ( (!\regA[0]~input_o\ & 
-- (\regA[1]~input_o\ & ((\regs[6][9]~q\)))) # (\regA[0]~input_o\ & ((!\regA[1]~input_o\) # ((\regs[7][9]~q\)))) ) ) ) # ( \regs[4][9]~q\ & ( !\regs[5][9]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\) # ((\regs[6][9]~q\)))) # (\regA[0]~input_o\ & 
-- (\regA[1]~input_o\ & (\regs[7][9]~q\))) ) ) ) # ( !\regs[4][9]~q\ & ( !\regs[5][9]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[6][9]~q\))) # (\regA[0]~input_o\ & (\regs[7][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[7][9]~q\,
	datad => \ALT_INV_regs[6][9]~q\,
	datae => \ALT_INV_regs[4][9]~q\,
	dataf => \ALT_INV_regs[5][9]~q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X60_Y3_N51
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \regA[0]~input_o\ & ( \regs[0][9]~q\ & ( (!\regA[1]~input_o\ & ((\regs[1][9]~q\))) # (\regA[1]~input_o\ & (\regs[3][9]~q\)) ) ) ) # ( !\regA[0]~input_o\ & ( \regs[0][9]~q\ & ( (!\regA[1]~input_o\) # (\regs[2][9]~q\) ) ) ) # ( 
-- \regA[0]~input_o\ & ( !\regs[0][9]~q\ & ( (!\regA[1]~input_o\ & ((\regs[1][9]~q\))) # (\regA[1]~input_o\ & (\regs[3][9]~q\)) ) ) ) # ( !\regA[0]~input_o\ & ( !\regs[0][9]~q\ & ( (\regs[2][9]~q\ & \regA[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[3][9]~q\,
	datab => \ALT_INV_regs[2][9]~q\,
	datac => \ALT_INV_regs[1][9]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regA[0]~input_o\,
	dataf => \ALT_INV_regs[0][9]~q\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X60_Y3_N18
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Mux6~0_combout\ & ( \Mux6~1_combout\ ) ) # ( !\Mux6~0_combout\ & ( \Mux6~1_combout\ & ( !\regA[2]~input_o\ ) ) ) # ( \Mux6~0_combout\ & ( !\Mux6~1_combout\ & ( \regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: FF_X60_Y3_N19
\outA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[9]~reg0_q\);

-- Location: LABCELL_X62_Y5_N45
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \regs[4][10]~q\ & ( \regs[7][10]~q\ & ( (!\regA[0]~input_o\ & (((!\regA[1]~input_o\) # (\regs[6][10]~q\)))) # (\regA[0]~input_o\ & (((\regA[1]~input_o\)) # (\regs[5][10]~q\))) ) ) ) # ( !\regs[4][10]~q\ & ( \regs[7][10]~q\ & ( 
-- (!\regA[0]~input_o\ & (((\regA[1]~input_o\ & \regs[6][10]~q\)))) # (\regA[0]~input_o\ & (((\regA[1]~input_o\)) # (\regs[5][10]~q\))) ) ) ) # ( \regs[4][10]~q\ & ( !\regs[7][10]~q\ & ( (!\regA[0]~input_o\ & (((!\regA[1]~input_o\) # (\regs[6][10]~q\)))) # 
-- (\regA[0]~input_o\ & (\regs[5][10]~q\ & (!\regA[1]~input_o\))) ) ) ) # ( !\regs[4][10]~q\ & ( !\regs[7][10]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\ & \regs[6][10]~q\)))) # (\regA[0]~input_o\ & (\regs[5][10]~q\ & (!\regA[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][10]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[6][10]~q\,
	datae => \ALT_INV_regs[4][10]~q\,
	dataf => \ALT_INV_regs[7][10]~q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X62_Y5_N18
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \regs[2][10]~q\ & ( \regs[3][10]~q\ & ( ((!\regA[0]~input_o\ & ((\regs[0][10]~q\))) # (\regA[0]~input_o\ & (\regs[1][10]~q\))) # (\regA[1]~input_o\) ) ) ) # ( !\regs[2][10]~q\ & ( \regs[3][10]~q\ & ( (!\regA[0]~input_o\ & 
-- (!\regA[1]~input_o\ & ((\regs[0][10]~q\)))) # (\regA[0]~input_o\ & (((\regs[1][10]~q\)) # (\regA[1]~input_o\))) ) ) ) # ( \regs[2][10]~q\ & ( !\regs[3][10]~q\ & ( (!\regA[0]~input_o\ & (((\regs[0][10]~q\)) # (\regA[1]~input_o\))) # (\regA[0]~input_o\ & 
-- (!\regA[1]~input_o\ & (\regs[1][10]~q\))) ) ) ) # ( !\regs[2][10]~q\ & ( !\regs[3][10]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[0][10]~q\))) # (\regA[0]~input_o\ & (\regs[1][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[1][10]~q\,
	datad => \ALT_INV_regs[0][10]~q\,
	datae => \ALT_INV_regs[2][10]~q\,
	dataf => \ALT_INV_regs[3][10]~q\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X62_Y5_N54
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~0_combout\ & ( \Mux5~1_combout\ ) ) # ( !\Mux5~0_combout\ & ( \Mux5~1_combout\ & ( !\regA[2]~input_o\ ) ) ) # ( \Mux5~0_combout\ & ( !\Mux5~1_combout\ & ( \regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: FF_X62_Y5_N55
\outA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[10]~reg0_q\);

-- Location: LABCELL_X62_Y6_N3
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \regs[5][11]~q\ & ( \regs[4][11]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & (\regs[6][11]~q\)) # (\regA[0]~input_o\ & ((\regs[7][11]~q\)))) ) ) ) # ( !\regs[5][11]~q\ & ( \regs[4][11]~q\ & ( (!\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\)))) # (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[6][11]~q\)) # (\regA[0]~input_o\ & ((\regs[7][11]~q\))))) ) ) ) # ( \regs[5][11]~q\ & ( !\regs[4][11]~q\ & ( (!\regA[1]~input_o\ & (((\regA[0]~input_o\)))) # (\regA[1]~input_o\ 
-- & ((!\regA[0]~input_o\ & (\regs[6][11]~q\)) # (\regA[0]~input_o\ & ((\regs[7][11]~q\))))) ) ) ) # ( !\regs[5][11]~q\ & ( !\regs[4][11]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[6][11]~q\)) # (\regA[0]~input_o\ & ((\regs[7][11]~q\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regs[6][11]~q\,
	datac => \ALT_INV_regs[7][11]~q\,
	datad => \ALT_INV_regA[0]~input_o\,
	datae => \ALT_INV_regs[5][11]~q\,
	dataf => \ALT_INV_regs[4][11]~q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X63_Y6_N33
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \regs[2][11]~q\ & ( \regs[0][11]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & ((\regs[1][11]~q\))) # (\regA[1]~input_o\ & (\regs[3][11]~q\))) ) ) ) # ( !\regs[2][11]~q\ & ( \regs[0][11]~q\ & ( (!\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\) # (\regs[1][11]~q\)))) # (\regA[1]~input_o\ & (\regs[3][11]~q\ & (\regA[0]~input_o\))) ) ) ) # ( \regs[2][11]~q\ & ( !\regs[0][11]~q\ & ( (!\regA[1]~input_o\ & (((\regA[0]~input_o\ & \regs[1][11]~q\)))) # (\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\)) # (\regs[3][11]~q\))) ) ) ) # ( !\regs[2][11]~q\ & ( !\regs[0][11]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[1][11]~q\))) # (\regA[1]~input_o\ & (\regs[3][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regs[3][11]~q\,
	datac => \ALT_INV_regA[0]~input_o\,
	datad => \ALT_INV_regs[1][11]~q\,
	datae => \ALT_INV_regs[2][11]~q\,
	dataf => \ALT_INV_regs[0][11]~q\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X61_Y6_N33
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~0_combout\ & ( \Mux4~1_combout\ ) ) # ( !\Mux4~0_combout\ & ( \Mux4~1_combout\ & ( !\regA[2]~input_o\ ) ) ) # ( \Mux4~0_combout\ & ( !\Mux4~1_combout\ & ( \regA[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regA[2]~input_o\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: FF_X61_Y6_N34
\outA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[11]~reg0_q\);

-- Location: LABCELL_X62_Y6_N15
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \regs[5][12]~q\ & ( \regs[4][12]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & (\regs[6][12]~q\)) # (\regA[0]~input_o\ & ((\regs[7][12]~q\)))) ) ) ) # ( !\regs[5][12]~q\ & ( \regs[4][12]~q\ & ( (!\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\) # ((\regs[6][12]~q\)))) # (\regA[0]~input_o\ & (\regA[1]~input_o\ & ((\regs[7][12]~q\)))) ) ) ) # ( \regs[5][12]~q\ & ( !\regs[4][12]~q\ & ( (!\regA[0]~input_o\ & (\regA[1]~input_o\ & (\regs[6][12]~q\))) # (\regA[0]~input_o\ & 
-- ((!\regA[1]~input_o\) # ((\regs[7][12]~q\)))) ) ) ) # ( !\regs[5][12]~q\ & ( !\regs[4][12]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[6][12]~q\)) # (\regA[0]~input_o\ & ((\regs[7][12]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regA[1]~input_o\,
	datac => \ALT_INV_regs[6][12]~q\,
	datad => \ALT_INV_regs[7][12]~q\,
	datae => \ALT_INV_regs[5][12]~q\,
	dataf => \ALT_INV_regs[4][12]~q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X63_Y6_N45
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \regs[2][12]~q\ & ( \regs[0][12]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & ((\regs[1][12]~q\))) # (\regA[1]~input_o\ & (\regs[3][12]~q\))) ) ) ) # ( !\regs[2][12]~q\ & ( \regs[0][12]~q\ & ( (!\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\) # (\regs[1][12]~q\)))) # (\regA[1]~input_o\ & (\regs[3][12]~q\ & ((\regA[0]~input_o\)))) ) ) ) # ( \regs[2][12]~q\ & ( !\regs[0][12]~q\ & ( (!\regA[1]~input_o\ & (((\regs[1][12]~q\ & \regA[0]~input_o\)))) # (\regA[1]~input_o\ & 
-- (((!\regA[0]~input_o\)) # (\regs[3][12]~q\))) ) ) ) # ( !\regs[2][12]~q\ & ( !\regs[0][12]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[1][12]~q\))) # (\regA[1]~input_o\ & (\regs[3][12]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regs[3][12]~q\,
	datac => \ALT_INV_regs[1][12]~q\,
	datad => \ALT_INV_regA[0]~input_o\,
	datae => \ALT_INV_regs[2][12]~q\,
	dataf => \ALT_INV_regs[0][12]~q\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X62_Y6_N27
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~1_combout\ & ( (!\regA[2]~input_o\) # (\Mux3~0_combout\) ) ) # ( !\Mux3~1_combout\ & ( (\regA[2]~input_o\ & \Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[2]~input_o\,
	datac => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: FF_X62_Y6_N28
\outA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[12]~reg0_q\);

-- Location: LABCELL_X62_Y3_N42
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \regs[3][13]~q\ & ( \regs[2][13]~q\ & ( ((!\regA[0]~input_o\ & (\regs[0][13]~q\)) # (\regA[0]~input_o\ & ((\regs[1][13]~q\)))) # (\regA[1]~input_o\) ) ) ) # ( !\regs[3][13]~q\ & ( \regs[2][13]~q\ & ( (!\regA[0]~input_o\ & 
-- (((\regA[1]~input_o\)) # (\regs[0][13]~q\))) # (\regA[0]~input_o\ & (((\regs[1][13]~q\ & !\regA[1]~input_o\)))) ) ) ) # ( \regs[3][13]~q\ & ( !\regs[2][13]~q\ & ( (!\regA[0]~input_o\ & (\regs[0][13]~q\ & ((!\regA[1]~input_o\)))) # (\regA[0]~input_o\ & 
-- (((\regA[1]~input_o\) # (\regs[1][13]~q\)))) ) ) ) # ( !\regs[3][13]~q\ & ( !\regs[2][13]~q\ & ( (!\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[0][13]~q\)) # (\regA[0]~input_o\ & ((\regs[1][13]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[0][13]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[1][13]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regs[3][13]~q\,
	dataf => \ALT_INV_regs[2][13]~q\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X62_Y6_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \regs[4][13]~q\ & ( \regs[5][13]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & (\regs[6][13]~q\)) # (\regA[0]~input_o\ & ((\regs[7][13]~q\)))) ) ) ) # ( !\regs[4][13]~q\ & ( \regs[5][13]~q\ & ( (!\regA[1]~input_o\ & 
-- (\regA[0]~input_o\)) # (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[6][13]~q\)) # (\regA[0]~input_o\ & ((\regs[7][13]~q\))))) ) ) ) # ( \regs[4][13]~q\ & ( !\regs[5][13]~q\ & ( (!\regA[1]~input_o\ & (!\regA[0]~input_o\)) # (\regA[1]~input_o\ & 
-- ((!\regA[0]~input_o\ & (\regs[6][13]~q\)) # (\regA[0]~input_o\ & ((\regs[7][13]~q\))))) ) ) ) # ( !\regs[4][13]~q\ & ( !\regs[5][13]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & (\regs[6][13]~q\)) # (\regA[0]~input_o\ & ((\regs[7][13]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[6][13]~q\,
	datad => \ALT_INV_regs[7][13]~q\,
	datae => \ALT_INV_regs[4][13]~q\,
	dataf => \ALT_INV_regs[5][13]~q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X62_Y3_N6
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Mux2~0_combout\ & ( (\Mux2~1_combout\) # (\regA[2]~input_o\) ) ) # ( !\Mux2~0_combout\ & ( (!\regA[2]~input_o\ & \Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regA[2]~input_o\,
	datad => \ALT_INV_Mux2~1_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: FF_X62_Y3_N8
\outA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[13]~reg0_q\);

-- Location: LABCELL_X62_Y5_N15
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \regs[4][14]~q\ & ( \regs[5][14]~q\ & ( (!\regA[1]~input_o\) # ((!\regA[0]~input_o\ & ((\regs[6][14]~q\))) # (\regA[0]~input_o\ & (\regs[7][14]~q\))) ) ) ) # ( !\regs[4][14]~q\ & ( \regs[5][14]~q\ & ( (!\regA[0]~input_o\ & 
-- (((\regA[1]~input_o\ & \regs[6][14]~q\)))) # (\regA[0]~input_o\ & (((!\regA[1]~input_o\)) # (\regs[7][14]~q\))) ) ) ) # ( \regs[4][14]~q\ & ( !\regs[5][14]~q\ & ( (!\regA[0]~input_o\ & (((!\regA[1]~input_o\) # (\regs[6][14]~q\)))) # (\regA[0]~input_o\ & 
-- (\regs[7][14]~q\ & (\regA[1]~input_o\))) ) ) ) # ( !\regs[4][14]~q\ & ( !\regs[5][14]~q\ & ( (\regA[1]~input_o\ & ((!\regA[0]~input_o\ & ((\regs[6][14]~q\))) # (\regA[0]~input_o\ & (\regs[7][14]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regs[7][14]~q\,
	datac => \ALT_INV_regA[1]~input_o\,
	datad => \ALT_INV_regs[6][14]~q\,
	datae => \ALT_INV_regs[4][14]~q\,
	dataf => \ALT_INV_regs[5][14]~q\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X62_Y7_N30
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \regs[3][14]~q\ & ( \regs[1][14]~q\ & ( ((!\regA[1]~input_o\ & ((\regs[0][14]~q\))) # (\regA[1]~input_o\ & (\regs[2][14]~q\))) # (\regA[0]~input_o\) ) ) ) # ( !\regs[3][14]~q\ & ( \regs[1][14]~q\ & ( (!\regA[1]~input_o\ & 
-- (((\regA[0]~input_o\) # (\regs[0][14]~q\)))) # (\regA[1]~input_o\ & (\regs[2][14]~q\ & ((!\regA[0]~input_o\)))) ) ) ) # ( \regs[3][14]~q\ & ( !\regs[1][14]~q\ & ( (!\regA[1]~input_o\ & (((\regs[0][14]~q\ & !\regA[0]~input_o\)))) # (\regA[1]~input_o\ & 
-- (((\regA[0]~input_o\)) # (\regs[2][14]~q\))) ) ) ) # ( !\regs[3][14]~q\ & ( !\regs[1][14]~q\ & ( (!\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[0][14]~q\))) # (\regA[1]~input_o\ & (\regs[2][14]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[1]~input_o\,
	datab => \ALT_INV_regs[2][14]~q\,
	datac => \ALT_INV_regs[0][14]~q\,
	datad => \ALT_INV_regA[0]~input_o\,
	datae => \ALT_INV_regs[3][14]~q\,
	dataf => \ALT_INV_regs[1][14]~q\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X62_Y5_N36
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux1~1_combout\ & ( (!\regA[2]~input_o\) # (\Mux1~0_combout\) ) ) # ( !\Mux1~1_combout\ & ( (\regA[2]~input_o\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[2]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: FF_X62_Y5_N37
\outA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[14]~reg0_q\);

-- Location: MLABCELL_X59_Y5_N18
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \regs[6][15]~q\ & ( \regs[5][15]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\) # (\regs[4][15]~q\)))) # (\regA[0]~input_o\ & (((!\regA[1]~input_o\)) # (\regs[7][15]~q\))) ) ) ) # ( !\regs[6][15]~q\ & ( \regs[5][15]~q\ & ( 
-- (!\regA[0]~input_o\ & (((\regs[4][15]~q\ & !\regA[1]~input_o\)))) # (\regA[0]~input_o\ & (((!\regA[1]~input_o\)) # (\regs[7][15]~q\))) ) ) ) # ( \regs[6][15]~q\ & ( !\regs[5][15]~q\ & ( (!\regA[0]~input_o\ & (((\regA[1]~input_o\) # (\regs[4][15]~q\)))) # 
-- (\regA[0]~input_o\ & (\regs[7][15]~q\ & ((\regA[1]~input_o\)))) ) ) ) # ( !\regs[6][15]~q\ & ( !\regs[5][15]~q\ & ( (!\regA[0]~input_o\ & (((\regs[4][15]~q\ & !\regA[1]~input_o\)))) # (\regA[0]~input_o\ & (\regs[7][15]~q\ & ((\regA[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[7][15]~q\,
	datab => \ALT_INV_regA[0]~input_o\,
	datac => \ALT_INV_regs[4][15]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regs[6][15]~q\,
	dataf => \ALT_INV_regs[5][15]~q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X60_Y3_N42
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \regs[0][15]~q\ & ( \regs[2][15]~q\ & ( (!\regA[0]~input_o\) # ((!\regA[1]~input_o\ & ((\regs[1][15]~q\))) # (\regA[1]~input_o\ & (\regs[3][15]~q\))) ) ) ) # ( !\regs[0][15]~q\ & ( \regs[2][15]~q\ & ( (!\regA[0]~input_o\ & 
-- (((\regA[1]~input_o\)))) # (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[1][15]~q\))) # (\regA[1]~input_o\ & (\regs[3][15]~q\)))) ) ) ) # ( \regs[0][15]~q\ & ( !\regs[2][15]~q\ & ( (!\regA[0]~input_o\ & (((!\regA[1]~input_o\)))) # (\regA[0]~input_o\ 
-- & ((!\regA[1]~input_o\ & ((\regs[1][15]~q\))) # (\regA[1]~input_o\ & (\regs[3][15]~q\)))) ) ) ) # ( !\regs[0][15]~q\ & ( !\regs[2][15]~q\ & ( (\regA[0]~input_o\ & ((!\regA[1]~input_o\ & ((\regs[1][15]~q\))) # (\regA[1]~input_o\ & (\regs[3][15]~q\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[0]~input_o\,
	datab => \ALT_INV_regs[3][15]~q\,
	datac => \ALT_INV_regs[1][15]~q\,
	datad => \ALT_INV_regA[1]~input_o\,
	datae => \ALT_INV_regs[0][15]~q\,
	dataf => \ALT_INV_regs[2][15]~q\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X60_Y3_N33
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \Mux0~1_combout\ & ( (!\regA[2]~input_o\) # (\Mux0~0_combout\) ) ) # ( !\Mux0~1_combout\ & ( (\regA[2]~input_o\ & \Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regA[2]~input_o\,
	datac => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X60_Y3_N34
\outA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outA[15]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N1
\regB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regB(2),
	o => \regB[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\regB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regB(0),
	o => \regB[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\regB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regB(1),
	o => \regB[1]~input_o\);

-- Location: LABCELL_X61_Y3_N27
\Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = ( \regs[2][0]~q\ & ( \regs[3][0]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[0][0]~q\))) # (\regB[0]~input_o\ & (\regs[1][0]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[2][0]~q\ & ( \regs[3][0]~q\ & ( (!\regB[0]~input_o\ & (((\regs[0][0]~q\ 
-- & !\regB[1]~input_o\)))) # (\regB[0]~input_o\ & (((\regB[1]~input_o\)) # (\regs[1][0]~q\))) ) ) ) # ( \regs[2][0]~q\ & ( !\regs[3][0]~q\ & ( (!\regB[0]~input_o\ & (((\regB[1]~input_o\) # (\regs[0][0]~q\)))) # (\regB[0]~input_o\ & (\regs[1][0]~q\ & 
-- ((!\regB[1]~input_o\)))) ) ) ) # ( !\regs[2][0]~q\ & ( !\regs[3][0]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][0]~q\))) # (\regB[0]~input_o\ & (\regs[1][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[1][0]~q\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[0][0]~q\,
	datad => \ALT_INV_regB[1]~input_o\,
	datae => \ALT_INV_regs[2][0]~q\,
	dataf => \ALT_INV_regs[3][0]~q\,
	combout => \Mux31~1_combout\);

-- Location: LABCELL_X61_Y5_N51
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \regs[6][0]~q\ & ( \regs[7][0]~q\ & ( ((!\regB[0]~input_o\ & (\regs[4][0]~q\)) # (\regB[0]~input_o\ & ((\regs[5][0]~q\)))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[6][0]~q\ & ( \regs[7][0]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & (\regs[4][0]~q\)) # (\regB[0]~input_o\ & ((\regs[5][0]~q\))))) # (\regB[1]~input_o\ & (\regB[0]~input_o\)) ) ) ) # ( \regs[6][0]~q\ & ( !\regs[7][0]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & (\regs[4][0]~q\)) # 
-- (\regB[0]~input_o\ & ((\regs[5][0]~q\))))) # (\regB[1]~input_o\ & (!\regB[0]~input_o\)) ) ) ) # ( !\regs[6][0]~q\ & ( !\regs[7][0]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & (\regs[4][0]~q\)) # (\regB[0]~input_o\ & ((\regs[5][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[4][0]~q\,
	datad => \ALT_INV_regs[5][0]~q\,
	datae => \ALT_INV_regs[6][0]~q\,
	dataf => \ALT_INV_regs[7][0]~q\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X61_Y3_N6
\Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = ( \Mux31~0_combout\ & ( (\Mux31~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux31~0_combout\ & ( (!\regB[2]~input_o\ & \Mux31~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datad => \ALT_INV_Mux31~1_combout\,
	dataf => \ALT_INV_Mux31~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: FF_X61_Y3_N7
\outB[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[0]~reg0_q\);

-- Location: LABCELL_X63_Y4_N21
\Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \regs[3][1]~q\ & ( \regs[1][1]~q\ & ( ((!\regB[1]~input_o\ & (\regs[0][1]~q\)) # (\regB[1]~input_o\ & ((\regs[2][1]~q\)))) # (\regB[0]~input_o\) ) ) ) # ( !\regs[3][1]~q\ & ( \regs[1][1]~q\ & ( (!\regB[1]~input_o\ & 
-- (((\regB[0]~input_o\)) # (\regs[0][1]~q\))) # (\regB[1]~input_o\ & (((\regs[2][1]~q\ & !\regB[0]~input_o\)))) ) ) ) # ( \regs[3][1]~q\ & ( !\regs[1][1]~q\ & ( (!\regB[1]~input_o\ & (\regs[0][1]~q\ & ((!\regB[0]~input_o\)))) # (\regB[1]~input_o\ & 
-- (((\regB[0]~input_o\) # (\regs[2][1]~q\)))) ) ) ) # ( !\regs[3][1]~q\ & ( !\regs[1][1]~q\ & ( (!\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[0][1]~q\)) # (\regB[1]~input_o\ & ((\regs[2][1]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regs[0][1]~q\,
	datac => \ALT_INV_regs[2][1]~q\,
	datad => \ALT_INV_regB[0]~input_o\,
	datae => \ALT_INV_regs[3][1]~q\,
	dataf => \ALT_INV_regs[1][1]~q\,
	combout => \Mux30~1_combout\);

-- Location: LABCELL_X63_Y4_N30
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \regs[4][1]~q\ & ( \regs[6][1]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & ((\regs[5][1]~q\))) # (\regB[1]~input_o\ & (\regs[7][1]~q\))) ) ) ) # ( !\regs[4][1]~q\ & ( \regs[6][1]~q\ & ( (!\regB[0]~input_o\ & 
-- (\regB[1]~input_o\)) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & ((\regs[5][1]~q\))) # (\regB[1]~input_o\ & (\regs[7][1]~q\)))) ) ) ) # ( \regs[4][1]~q\ & ( !\regs[6][1]~q\ & ( (!\regB[0]~input_o\ & (!\regB[1]~input_o\)) # (\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\ & ((\regs[5][1]~q\))) # (\regB[1]~input_o\ & (\regs[7][1]~q\)))) ) ) ) # ( !\regs[4][1]~q\ & ( !\regs[6][1]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & ((\regs[5][1]~q\))) # (\regB[1]~input_o\ & (\regs[7][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[7][1]~q\,
	datad => \ALT_INV_regs[5][1]~q\,
	datae => \ALT_INV_regs[4][1]~q\,
	dataf => \ALT_INV_regs[6][1]~q\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X63_Y4_N27
\Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \Mux30~1_combout\ & ( \Mux30~0_combout\ ) ) # ( !\Mux30~1_combout\ & ( \Mux30~0_combout\ & ( \regB[2]~input_o\ ) ) ) # ( \Mux30~1_combout\ & ( !\Mux30~0_combout\ & ( !\regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux30~1_combout\,
	dataf => \ALT_INV_Mux30~0_combout\,
	combout => \Mux30~2_combout\);

-- Location: FF_X63_Y4_N28
\outB[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[1]~reg0_q\);

-- Location: LABCELL_X62_Y4_N0
\Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \regs[3][2]~q\ & ( \regs[0][2]~q\ & ( (!\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[2][2]~q\)))) # (\regB[0]~input_o\ & (((\regs[1][2]~q\)) # (\regB[1]~input_o\))) ) ) ) # ( !\regs[3][2]~q\ & ( \regs[0][2]~q\ & ( 
-- (!\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[2][2]~q\)))) # (\regB[0]~input_o\ & (!\regB[1]~input_o\ & (\regs[1][2]~q\))) ) ) ) # ( \regs[3][2]~q\ & ( !\regs[0][2]~q\ & ( (!\regB[0]~input_o\ & (\regB[1]~input_o\ & ((\regs[2][2]~q\)))) # 
-- (\regB[0]~input_o\ & (((\regs[1][2]~q\)) # (\regB[1]~input_o\))) ) ) ) # ( !\regs[3][2]~q\ & ( !\regs[0][2]~q\ & ( (!\regB[0]~input_o\ & (\regB[1]~input_o\ & ((\regs[2][2]~q\)))) # (\regB[0]~input_o\ & (!\regB[1]~input_o\ & (\regs[1][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[1][2]~q\,
	datad => \ALT_INV_regs[2][2]~q\,
	datae => \ALT_INV_regs[3][2]~q\,
	dataf => \ALT_INV_regs[0][2]~q\,
	combout => \Mux29~1_combout\);

-- Location: LABCELL_X62_Y4_N51
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \regs[5][2]~q\ & ( \regs[7][2]~q\ & ( ((!\regB[1]~input_o\ & ((\regs[4][2]~q\))) # (\regB[1]~input_o\ & (\regs[6][2]~q\))) # (\regB[0]~input_o\) ) ) ) # ( !\regs[5][2]~q\ & ( \regs[7][2]~q\ & ( (!\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\ & ((\regs[4][2]~q\))) # (\regB[1]~input_o\ & (\regs[6][2]~q\)))) # (\regB[0]~input_o\ & (\regB[1]~input_o\)) ) ) ) # ( \regs[5][2]~q\ & ( !\regs[7][2]~q\ & ( (!\regB[0]~input_o\ & ((!\regB[1]~input_o\ & ((\regs[4][2]~q\))) # 
-- (\regB[1]~input_o\ & (\regs[6][2]~q\)))) # (\regB[0]~input_o\ & (!\regB[1]~input_o\)) ) ) ) # ( !\regs[5][2]~q\ & ( !\regs[7][2]~q\ & ( (!\regB[0]~input_o\ & ((!\regB[1]~input_o\ & ((\regs[4][2]~q\))) # (\regB[1]~input_o\ & (\regs[6][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[6][2]~q\,
	datad => \ALT_INV_regs[4][2]~q\,
	datae => \ALT_INV_regs[5][2]~q\,
	dataf => \ALT_INV_regs[7][2]~q\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X62_Y4_N42
\Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \Mux29~1_combout\ & ( \Mux29~0_combout\ ) ) # ( !\Mux29~1_combout\ & ( \Mux29~0_combout\ & ( \regB[2]~input_o\ ) ) ) # ( \Mux29~1_combout\ & ( !\Mux29~0_combout\ & ( !\regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux29~1_combout\,
	dataf => \ALT_INV_Mux29~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: FF_X62_Y4_N43
\outB[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[2]~reg0_q\);

-- Location: LABCELL_X63_Y4_N9
\Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \regs[0][3]~q\ & ( \regs[1][3]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[2][3]~q\))) # (\regB[0]~input_o\ & (\regs[3][3]~q\))) ) ) ) # ( !\regs[0][3]~q\ & ( \regs[1][3]~q\ & ( (!\regB[1]~input_o\ & 
-- (\regB[0]~input_o\)) # (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[2][3]~q\))) # (\regB[0]~input_o\ & (\regs[3][3]~q\)))) ) ) ) # ( \regs[0][3]~q\ & ( !\regs[1][3]~q\ & ( (!\regB[1]~input_o\ & (!\regB[0]~input_o\)) # (\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[2][3]~q\))) # (\regB[0]~input_o\ & (\regs[3][3]~q\)))) ) ) ) # ( !\regs[0][3]~q\ & ( !\regs[1][3]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[2][3]~q\))) # (\regB[0]~input_o\ & (\regs[3][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[3][3]~q\,
	datad => \ALT_INV_regs[2][3]~q\,
	datae => \ALT_INV_regs[0][3]~q\,
	dataf => \ALT_INV_regs[1][3]~q\,
	combout => \Mux28~1_combout\);

-- Location: LABCELL_X63_Y4_N51
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \regs[5][3]~q\ & ( \regs[4][3]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[6][3]~q\))) # (\regB[0]~input_o\ & (\regs[7][3]~q\))) ) ) ) # ( !\regs[5][3]~q\ & ( \regs[4][3]~q\ & ( (!\regB[1]~input_o\ & 
-- (!\regB[0]~input_o\)) # (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[6][3]~q\))) # (\regB[0]~input_o\ & (\regs[7][3]~q\)))) ) ) ) # ( \regs[5][3]~q\ & ( !\regs[4][3]~q\ & ( (!\regB[1]~input_o\ & (\regB[0]~input_o\)) # (\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[6][3]~q\))) # (\regB[0]~input_o\ & (\regs[7][3]~q\)))) ) ) ) # ( !\regs[5][3]~q\ & ( !\regs[4][3]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[6][3]~q\))) # (\regB[0]~input_o\ & (\regs[7][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[7][3]~q\,
	datad => \ALT_INV_regs[6][3]~q\,
	datae => \ALT_INV_regs[5][3]~q\,
	dataf => \ALT_INV_regs[4][3]~q\,
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X63_Y4_N54
\Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Mux28~0_combout\ & ( (\Mux28~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux28~0_combout\ & ( (!\regB[2]~input_o\ & \Mux28~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regB[2]~input_o\,
	datad => \ALT_INV_Mux28~1_combout\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: FF_X63_Y4_N55
\outB[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[3]~reg0_q\);

-- Location: LABCELL_X63_Y4_N0
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \regs[6][4]~q\ & ( \regs[4][4]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & (\regs[5][4]~q\)) # (\regB[1]~input_o\ & ((\regs[7][4]~q\)))) ) ) ) # ( !\regs[6][4]~q\ & ( \regs[4][4]~q\ & ( (!\regB[0]~input_o\ & 
-- (((!\regB[1]~input_o\)))) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[5][4]~q\)) # (\regB[1]~input_o\ & ((\regs[7][4]~q\))))) ) ) ) # ( \regs[6][4]~q\ & ( !\regs[4][4]~q\ & ( (!\regB[0]~input_o\ & (((\regB[1]~input_o\)))) # (\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\ & (\regs[5][4]~q\)) # (\regB[1]~input_o\ & ((\regs[7][4]~q\))))) ) ) ) # ( !\regs[6][4]~q\ & ( !\regs[4][4]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[5][4]~q\)) # (\regB[1]~input_o\ & ((\regs[7][4]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][4]~q\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[7][4]~q\,
	datad => \ALT_INV_regB[1]~input_o\,
	datae => \ALT_INV_regs[6][4]~q\,
	dataf => \ALT_INV_regs[4][4]~q\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X63_Y4_N39
\Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \regs[0][4]~q\ & ( \regs[1][4]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[2][4]~q\))) # (\regB[0]~input_o\ & (\regs[3][4]~q\))) ) ) ) # ( !\regs[0][4]~q\ & ( \regs[1][4]~q\ & ( (!\regB[1]~input_o\ & 
-- (((\regB[0]~input_o\)))) # (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[2][4]~q\))) # (\regB[0]~input_o\ & (\regs[3][4]~q\)))) ) ) ) # ( \regs[0][4]~q\ & ( !\regs[1][4]~q\ & ( (!\regB[1]~input_o\ & (((!\regB[0]~input_o\)))) # (\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[2][4]~q\))) # (\regB[0]~input_o\ & (\regs[3][4]~q\)))) ) ) ) # ( !\regs[0][4]~q\ & ( !\regs[1][4]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[2][4]~q\))) # (\regB[0]~input_o\ & (\regs[3][4]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[3][4]~q\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regB[0]~input_o\,
	datad => \ALT_INV_regs[2][4]~q\,
	datae => \ALT_INV_regs[0][4]~q\,
	dataf => \ALT_INV_regs[1][4]~q\,
	combout => \Mux27~1_combout\);

-- Location: LABCELL_X63_Y4_N42
\Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \Mux27~0_combout\ & ( \Mux27~1_combout\ ) ) # ( !\Mux27~0_combout\ & ( \Mux27~1_combout\ & ( !\regB[2]~input_o\ ) ) ) # ( \Mux27~0_combout\ & ( !\Mux27~1_combout\ & ( \regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux27~0_combout\,
	dataf => \ALT_INV_Mux27~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: FF_X63_Y4_N43
\outB[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[4]~reg0_q\);

-- Location: LABCELL_X64_Y4_N36
\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \regs[2][5]~q\ & ( \regs[0][5]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & ((\regs[1][5]~q\))) # (\regB[1]~input_o\ & (\regs[3][5]~q\))) ) ) ) # ( !\regs[2][5]~q\ & ( \regs[0][5]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\) # ((\regs[1][5]~q\)))) # (\regB[1]~input_o\ & (\regB[0]~input_o\ & (\regs[3][5]~q\))) ) ) ) # ( \regs[2][5]~q\ & ( !\regs[0][5]~q\ & ( (!\regB[1]~input_o\ & (\regB[0]~input_o\ & ((\regs[1][5]~q\)))) # (\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\) # ((\regs[3][5]~q\)))) ) ) ) # ( !\regs[2][5]~q\ & ( !\regs[0][5]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & ((\regs[1][5]~q\))) # (\regB[1]~input_o\ & (\regs[3][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[3][5]~q\,
	datad => \ALT_INV_regs[1][5]~q\,
	datae => \ALT_INV_regs[2][5]~q\,
	dataf => \ALT_INV_regs[0][5]~q\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X64_Y4_N30
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \regs[5][5]~q\ & ( \regs[4][5]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[6][5]~q\))) # (\regB[0]~input_o\ & (\regs[7][5]~q\))) ) ) ) # ( !\regs[5][5]~q\ & ( \regs[4][5]~q\ & ( (!\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\) # ((\regs[6][5]~q\)))) # (\regB[0]~input_o\ & (\regB[1]~input_o\ & (\regs[7][5]~q\))) ) ) ) # ( \regs[5][5]~q\ & ( !\regs[4][5]~q\ & ( (!\regB[0]~input_o\ & (\regB[1]~input_o\ & ((\regs[6][5]~q\)))) # (\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\) # ((\regs[7][5]~q\)))) ) ) ) # ( !\regs[5][5]~q\ & ( !\regs[4][5]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[6][5]~q\))) # (\regB[0]~input_o\ & (\regs[7][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[7][5]~q\,
	datad => \ALT_INV_regs[6][5]~q\,
	datae => \ALT_INV_regs[5][5]~q\,
	dataf => \ALT_INV_regs[4][5]~q\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X64_Y4_N24
\Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Mux26~1_combout\ & ( \Mux26~0_combout\ ) ) # ( !\Mux26~1_combout\ & ( \Mux26~0_combout\ & ( \regB[2]~input_o\ ) ) ) # ( \Mux26~1_combout\ & ( !\Mux26~0_combout\ & ( !\regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux26~1_combout\,
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => \Mux26~2_combout\);

-- Location: FF_X64_Y4_N25
\outB[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[5]~reg0_q\);

-- Location: LABCELL_X62_Y4_N27
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \regs[5][6]~q\ & ( \regs[4][6]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[6][6]~q\))) # (\regB[0]~input_o\ & (\regs[7][6]~q\))) ) ) ) # ( !\regs[5][6]~q\ & ( \regs[4][6]~q\ & ( (!\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\) # ((\regs[6][6]~q\)))) # (\regB[0]~input_o\ & (\regB[1]~input_o\ & (\regs[7][6]~q\))) ) ) ) # ( \regs[5][6]~q\ & ( !\regs[4][6]~q\ & ( (!\regB[0]~input_o\ & (\regB[1]~input_o\ & ((\regs[6][6]~q\)))) # (\regB[0]~input_o\ & 
-- ((!\regB[1]~input_o\) # ((\regs[7][6]~q\)))) ) ) ) # ( !\regs[5][6]~q\ & ( !\regs[4][6]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[6][6]~q\))) # (\regB[0]~input_o\ & (\regs[7][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[7][6]~q\,
	datad => \ALT_INV_regs[6][6]~q\,
	datae => \ALT_INV_regs[5][6]~q\,
	dataf => \ALT_INV_regs[4][6]~q\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X63_Y6_N9
\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \regs[2][6]~q\ & ( \regs[0][6]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & ((\regs[1][6]~q\))) # (\regB[1]~input_o\ & (\regs[3][6]~q\))) ) ) ) # ( !\regs[2][6]~q\ & ( \regs[0][6]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\) # ((\regs[1][6]~q\)))) # (\regB[1]~input_o\ & (\regB[0]~input_o\ & (\regs[3][6]~q\))) ) ) ) # ( \regs[2][6]~q\ & ( !\regs[0][6]~q\ & ( (!\regB[1]~input_o\ & (\regB[0]~input_o\ & ((\regs[1][6]~q\)))) # (\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\) # ((\regs[3][6]~q\)))) ) ) ) # ( !\regs[2][6]~q\ & ( !\regs[0][6]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & ((\regs[1][6]~q\))) # (\regB[1]~input_o\ & (\regs[3][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[3][6]~q\,
	datad => \ALT_INV_regs[1][6]~q\,
	datae => \ALT_INV_regs[2][6]~q\,
	dataf => \ALT_INV_regs[0][6]~q\,
	combout => \Mux25~1_combout\);

-- Location: LABCELL_X62_Y4_N36
\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \Mux25~0_combout\ & ( \Mux25~1_combout\ ) ) # ( !\Mux25~0_combout\ & ( \Mux25~1_combout\ & ( !\regB[2]~input_o\ ) ) ) # ( \Mux25~0_combout\ & ( !\Mux25~1_combout\ & ( \regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: FF_X62_Y4_N37
\outB[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[6]~reg0_q\);

-- Location: LABCELL_X63_Y6_N39
\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \regs[2][7]~q\ & ( \regs[0][7]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & (\regs[1][7]~q\)) # (\regB[1]~input_o\ & ((\regs[3][7]~q\)))) ) ) ) # ( !\regs[2][7]~q\ & ( \regs[0][7]~q\ & ( (!\regB[1]~input_o\ & 
-- (((!\regB[0]~input_o\)) # (\regs[1][7]~q\))) # (\regB[1]~input_o\ & (((\regB[0]~input_o\ & \regs[3][7]~q\)))) ) ) ) # ( \regs[2][7]~q\ & ( !\regs[0][7]~q\ & ( (!\regB[1]~input_o\ & (\regs[1][7]~q\ & (\regB[0]~input_o\))) # (\regB[1]~input_o\ & 
-- (((!\regB[0]~input_o\) # (\regs[3][7]~q\)))) ) ) ) # ( !\regs[2][7]~q\ & ( !\regs[0][7]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[1][7]~q\)) # (\regB[1]~input_o\ & ((\regs[3][7]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[1][7]~q\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regB[0]~input_o\,
	datad => \ALT_INV_regs[3][7]~q\,
	datae => \ALT_INV_regs[2][7]~q\,
	dataf => \ALT_INV_regs[0][7]~q\,
	combout => \Mux24~1_combout\);

-- Location: LABCELL_X63_Y7_N30
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \regs[7][7]~q\ & ( \regs[6][7]~q\ & ( ((!\regB[0]~input_o\ & (\regs[4][7]~q\)) # (\regB[0]~input_o\ & ((\regs[5][7]~q\)))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[7][7]~q\ & ( \regs[6][7]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & (\regs[4][7]~q\)) # (\regB[0]~input_o\ & ((\regs[5][7]~q\))))) # (\regB[1]~input_o\ & (!\regB[0]~input_o\)) ) ) ) # ( \regs[7][7]~q\ & ( !\regs[6][7]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & (\regs[4][7]~q\)) # 
-- (\regB[0]~input_o\ & ((\regs[5][7]~q\))))) # (\regB[1]~input_o\ & (\regB[0]~input_o\)) ) ) ) # ( !\regs[7][7]~q\ & ( !\regs[6][7]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & (\regs[4][7]~q\)) # (\regB[0]~input_o\ & ((\regs[5][7]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[4][7]~q\,
	datad => \ALT_INV_regs[5][7]~q\,
	datae => \ALT_INV_regs[7][7]~q\,
	dataf => \ALT_INV_regs[6][7]~q\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X62_Y6_N48
\Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \Mux24~0_combout\ & ( (\Mux24~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux24~0_combout\ & ( (!\regB[2]~input_o\ & \Mux24~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regB[2]~input_o\,
	datac => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux24~2_combout\);

-- Location: FF_X62_Y6_N50
\outB[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[7]~reg0_q\);

-- Location: LABCELL_X62_Y4_N21
\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \regs[2][8]~q\ & ( \regs[1][8]~q\ & ( (!\regB[0]~input_o\ & (((\regs[0][8]~q\)) # (\regB[1]~input_o\))) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[3][8]~q\)))) ) ) ) # ( !\regs[2][8]~q\ & ( \regs[1][8]~q\ & ( 
-- (!\regB[0]~input_o\ & (!\regB[1]~input_o\ & ((\regs[0][8]~q\)))) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[3][8]~q\)))) ) ) ) # ( \regs[2][8]~q\ & ( !\regs[1][8]~q\ & ( (!\regB[0]~input_o\ & (((\regs[0][8]~q\)) # (\regB[1]~input_o\))) # 
-- (\regB[0]~input_o\ & (\regB[1]~input_o\ & (\regs[3][8]~q\))) ) ) ) # ( !\regs[2][8]~q\ & ( !\regs[1][8]~q\ & ( (!\regB[0]~input_o\ & (!\regB[1]~input_o\ & ((\regs[0][8]~q\)))) # (\regB[0]~input_o\ & (\regB[1]~input_o\ & (\regs[3][8]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[3][8]~q\,
	datad => \ALT_INV_regs[0][8]~q\,
	datae => \ALT_INV_regs[2][8]~q\,
	dataf => \ALT_INV_regs[1][8]~q\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X62_Y4_N15
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \regs[4][8]~q\ & ( \regs[5][8]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[6][8]~q\))) # (\regB[0]~input_o\ & (\regs[7][8]~q\))) ) ) ) # ( !\regs[4][8]~q\ & ( \regs[5][8]~q\ & ( (!\regB[0]~input_o\ & 
-- (\regB[1]~input_o\ & ((\regs[6][8]~q\)))) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[7][8]~q\)))) ) ) ) # ( \regs[4][8]~q\ & ( !\regs[5][8]~q\ & ( (!\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[6][8]~q\)))) # (\regB[0]~input_o\ & 
-- (\regB[1]~input_o\ & (\regs[7][8]~q\))) ) ) ) # ( !\regs[4][8]~q\ & ( !\regs[5][8]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[6][8]~q\))) # (\regB[0]~input_o\ & (\regs[7][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[7][8]~q\,
	datad => \ALT_INV_regs[6][8]~q\,
	datae => \ALT_INV_regs[4][8]~q\,
	dataf => \ALT_INV_regs[5][8]~q\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X62_Y4_N9
\Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \Mux23~1_combout\ & ( \Mux23~0_combout\ ) ) # ( !\Mux23~1_combout\ & ( \Mux23~0_combout\ & ( \regB[2]~input_o\ ) ) ) # ( \Mux23~1_combout\ & ( !\Mux23~0_combout\ & ( !\regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~2_combout\);

-- Location: FF_X62_Y4_N10
\outB[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[8]~reg0_q\);

-- Location: LABCELL_X61_Y3_N15
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \regs[2][9]~q\ & ( \regs[3][9]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[0][9]~q\))) # (\regB[0]~input_o\ & (\regs[1][9]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[2][9]~q\ & ( \regs[3][9]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[0][9]~q\))) # (\regB[0]~input_o\ & (\regs[1][9]~q\)))) # (\regB[1]~input_o\ & (((\regB[0]~input_o\)))) ) ) ) # ( \regs[2][9]~q\ & ( !\regs[3][9]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][9]~q\))) # 
-- (\regB[0]~input_o\ & (\regs[1][9]~q\)))) # (\regB[1]~input_o\ & (((!\regB[0]~input_o\)))) ) ) ) # ( !\regs[2][9]~q\ & ( !\regs[3][9]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][9]~q\))) # (\regB[0]~input_o\ & (\regs[1][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regs[1][9]~q\,
	datac => \ALT_INV_regB[0]~input_o\,
	datad => \ALT_INV_regs[0][9]~q\,
	datae => \ALT_INV_regs[2][9]~q\,
	dataf => \ALT_INV_regs[3][9]~q\,
	combout => \Mux22~1_combout\);

-- Location: LABCELL_X61_Y5_N0
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \regB[0]~input_o\ & ( \regs[7][9]~q\ & ( (\regB[1]~input_o\) # (\regs[5][9]~q\) ) ) ) # ( !\regB[0]~input_o\ & ( \regs[7][9]~q\ & ( (!\regB[1]~input_o\ & (\regs[4][9]~q\)) # (\regB[1]~input_o\ & ((\regs[6][9]~q\))) ) ) ) # ( 
-- \regB[0]~input_o\ & ( !\regs[7][9]~q\ & ( (\regs[5][9]~q\ & !\regB[1]~input_o\) ) ) ) # ( !\regB[0]~input_o\ & ( !\regs[7][9]~q\ & ( (!\regB[1]~input_o\ & (\regs[4][9]~q\)) # (\regB[1]~input_o\ & ((\regs[6][9]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][9]~q\,
	datab => \ALT_INV_regs[4][9]~q\,
	datac => \ALT_INV_regs[6][9]~q\,
	datad => \ALT_INV_regB[1]~input_o\,
	datae => \ALT_INV_regB[0]~input_o\,
	dataf => \ALT_INV_regs[7][9]~q\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X61_Y3_N9
\Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Mux22~0_combout\ & ( (\Mux22~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux22~0_combout\ & ( (!\regB[2]~input_o\ & \Mux22~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datac => \ALT_INV_Mux22~1_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux22~2_combout\);

-- Location: FF_X61_Y3_N10
\outB[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[9]~reg0_q\);

-- Location: LABCELL_X62_Y4_N33
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \regs[0][10]~q\ & ( \regs[1][10]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[2][10]~q\))) # (\regB[0]~input_o\ & (\regs[3][10]~q\))) ) ) ) # ( !\regs[0][10]~q\ & ( \regs[1][10]~q\ & ( (!\regB[1]~input_o\ & 
-- (\regB[0]~input_o\)) # (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[2][10]~q\))) # (\regB[0]~input_o\ & (\regs[3][10]~q\)))) ) ) ) # ( \regs[0][10]~q\ & ( !\regs[1][10]~q\ & ( (!\regB[1]~input_o\ & (!\regB[0]~input_o\)) # (\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[2][10]~q\))) # (\regB[0]~input_o\ & (\regs[3][10]~q\)))) ) ) ) # ( !\regs[0][10]~q\ & ( !\regs[1][10]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[2][10]~q\))) # (\regB[0]~input_o\ & (\regs[3][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regs[3][10]~q\,
	datad => \ALT_INV_regs[2][10]~q\,
	datae => \ALT_INV_regs[0][10]~q\,
	dataf => \ALT_INV_regs[1][10]~q\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X62_Y6_N21
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \regs[4][10]~q\ & ( \regs[5][10]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & ((\regs[6][10]~q\))) # (\regB[0]~input_o\ & (\regs[7][10]~q\))) ) ) ) # ( !\regs[4][10]~q\ & ( \regs[5][10]~q\ & ( (!\regB[0]~input_o\ & 
-- (\regB[1]~input_o\ & ((\regs[6][10]~q\)))) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[7][10]~q\)))) ) ) ) # ( \regs[4][10]~q\ & ( !\regs[5][10]~q\ & ( (!\regB[0]~input_o\ & ((!\regB[1]~input_o\) # ((\regs[6][10]~q\)))) # (\regB[0]~input_o\ & 
-- (\regB[1]~input_o\ & (\regs[7][10]~q\))) ) ) ) # ( !\regs[4][10]~q\ & ( !\regs[5][10]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[6][10]~q\))) # (\regB[0]~input_o\ & (\regs[7][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[7][10]~q\,
	datad => \ALT_INV_regs[6][10]~q\,
	datae => \ALT_INV_regs[4][10]~q\,
	dataf => \ALT_INV_regs[5][10]~q\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X62_Y4_N57
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux21~0_combout\ & ( (\Mux21~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux21~0_combout\ & ( (!\regB[2]~input_o\ & \Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_Mux21~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: FF_X62_Y4_N58
\outB[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[10]~reg0_q\);

-- Location: LABCELL_X61_Y6_N57
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \regs[5][11]~q\ & ( \regs[4][11]~q\ & ( (!\regB[1]~input_o\) # ((!\regB[0]~input_o\ & (\regs[6][11]~q\)) # (\regB[0]~input_o\ & ((\regs[7][11]~q\)))) ) ) ) # ( !\regs[5][11]~q\ & ( \regs[4][11]~q\ & ( (!\regB[0]~input_o\ & 
-- (((!\regB[1]~input_o\)) # (\regs[6][11]~q\))) # (\regB[0]~input_o\ & (((\regB[1]~input_o\ & \regs[7][11]~q\)))) ) ) ) # ( \regs[5][11]~q\ & ( !\regs[4][11]~q\ & ( (!\regB[0]~input_o\ & (\regs[6][11]~q\ & (\regB[1]~input_o\))) # (\regB[0]~input_o\ & 
-- (((!\regB[1]~input_o\) # (\regs[7][11]~q\)))) ) ) ) # ( !\regs[5][11]~q\ & ( !\regs[4][11]~q\ & ( (\regB[1]~input_o\ & ((!\regB[0]~input_o\ & (\regs[6][11]~q\)) # (\regB[0]~input_o\ & ((\regs[7][11]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regs[6][11]~q\,
	datac => \ALT_INV_regB[1]~input_o\,
	datad => \ALT_INV_regs[7][11]~q\,
	datae => \ALT_INV_regs[5][11]~q\,
	dataf => \ALT_INV_regs[4][11]~q\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X63_Y6_N27
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \regs[2][11]~q\ & ( \regs[0][11]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & (\regs[1][11]~q\)) # (\regB[1]~input_o\ & ((\regs[3][11]~q\)))) ) ) ) # ( !\regs[2][11]~q\ & ( \regs[0][11]~q\ & ( (!\regB[0]~input_o\ & 
-- (((!\regB[1]~input_o\)))) # (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[1][11]~q\)) # (\regB[1]~input_o\ & ((\regs[3][11]~q\))))) ) ) ) # ( \regs[2][11]~q\ & ( !\regs[0][11]~q\ & ( (!\regB[0]~input_o\ & (((\regB[1]~input_o\)))) # (\regB[0]~input_o\ 
-- & ((!\regB[1]~input_o\ & (\regs[1][11]~q\)) # (\regB[1]~input_o\ & ((\regs[3][11]~q\))))) ) ) ) # ( !\regs[2][11]~q\ & ( !\regs[0][11]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[1][11]~q\)) # (\regB[1]~input_o\ & ((\regs[3][11]~q\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[1][11]~q\,
	datab => \ALT_INV_regs[3][11]~q\,
	datac => \ALT_INV_regB[0]~input_o\,
	datad => \ALT_INV_regB[1]~input_o\,
	datae => \ALT_INV_regs[2][11]~q\,
	dataf => \ALT_INV_regs[0][11]~q\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X61_Y6_N39
\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Mux20~0_combout\ & ( \Mux20~1_combout\ ) ) # ( !\Mux20~0_combout\ & ( \Mux20~1_combout\ & ( !\regB[2]~input_o\ ) ) ) # ( \Mux20~0_combout\ & ( !\Mux20~1_combout\ & ( \regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: FF_X61_Y6_N40
\outB[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[11]~reg0_q\);

-- Location: LABCELL_X63_Y6_N15
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \regs[2][12]~q\ & ( \regs[0][12]~q\ & ( (!\regB[0]~input_o\) # ((!\regB[1]~input_o\ & (\regs[1][12]~q\)) # (\regB[1]~input_o\ & ((\regs[3][12]~q\)))) ) ) ) # ( !\regs[2][12]~q\ & ( \regs[0][12]~q\ & ( (!\regB[1]~input_o\ & 
-- (((!\regB[0]~input_o\)) # (\regs[1][12]~q\))) # (\regB[1]~input_o\ & (((\regs[3][12]~q\ & \regB[0]~input_o\)))) ) ) ) # ( \regs[2][12]~q\ & ( !\regs[0][12]~q\ & ( (!\regB[1]~input_o\ & (\regs[1][12]~q\ & ((\regB[0]~input_o\)))) # (\regB[1]~input_o\ & 
-- (((!\regB[0]~input_o\) # (\regs[3][12]~q\)))) ) ) ) # ( !\regs[2][12]~q\ & ( !\regs[0][12]~q\ & ( (\regB[0]~input_o\ & ((!\regB[1]~input_o\ & (\regs[1][12]~q\)) # (\regB[1]~input_o\ & ((\regs[3][12]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regs[1][12]~q\,
	datac => \ALT_INV_regs[3][12]~q\,
	datad => \ALT_INV_regB[0]~input_o\,
	datae => \ALT_INV_regs[2][12]~q\,
	dataf => \ALT_INV_regs[0][12]~q\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X61_Y6_N9
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \regs[7][12]~q\ & ( \regs[6][12]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[4][12]~q\))) # (\regB[0]~input_o\ & (\regs[5][12]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[7][12]~q\ & ( \regs[6][12]~q\ & ( (!\regB[0]~input_o\ & 
-- (((\regs[4][12]~q\) # (\regB[1]~input_o\)))) # (\regB[0]~input_o\ & (\regs[5][12]~q\ & (!\regB[1]~input_o\))) ) ) ) # ( \regs[7][12]~q\ & ( !\regs[6][12]~q\ & ( (!\regB[0]~input_o\ & (((!\regB[1]~input_o\ & \regs[4][12]~q\)))) # (\regB[0]~input_o\ & 
-- (((\regB[1]~input_o\)) # (\regs[5][12]~q\))) ) ) ) # ( !\regs[7][12]~q\ & ( !\regs[6][12]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[4][12]~q\))) # (\regB[0]~input_o\ & (\regs[5][12]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regs[5][12]~q\,
	datac => \ALT_INV_regB[1]~input_o\,
	datad => \ALT_INV_regs[4][12]~q\,
	datae => \ALT_INV_regs[7][12]~q\,
	dataf => \ALT_INV_regs[6][12]~q\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X62_Y6_N24
\Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~0_combout\ & ( (\Mux19~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux19~0_combout\ & ( (!\regB[2]~input_o\ & \Mux19~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regB[2]~input_o\,
	datad => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_Mux19~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: FF_X62_Y6_N25
\outB[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[12]~reg0_q\);

-- Location: LABCELL_X61_Y6_N51
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \regs[7][13]~q\ & ( \regs[6][13]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[4][13]~q\))) # (\regB[0]~input_o\ & (\regs[5][13]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[7][13]~q\ & ( \regs[6][13]~q\ & ( (!\regB[0]~input_o\ & 
-- (((\regs[4][13]~q\) # (\regB[1]~input_o\)))) # (\regB[0]~input_o\ & (\regs[5][13]~q\ & (!\regB[1]~input_o\))) ) ) ) # ( \regs[7][13]~q\ & ( !\regs[6][13]~q\ & ( (!\regB[0]~input_o\ & (((!\regB[1]~input_o\ & \regs[4][13]~q\)))) # (\regB[0]~input_o\ & 
-- (((\regB[1]~input_o\)) # (\regs[5][13]~q\))) ) ) ) # ( !\regs[7][13]~q\ & ( !\regs[6][13]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[4][13]~q\))) # (\regB[0]~input_o\ & (\regs[5][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[5][13]~q\,
	datab => \ALT_INV_regB[0]~input_o\,
	datac => \ALT_INV_regB[1]~input_o\,
	datad => \ALT_INV_regs[4][13]~q\,
	datae => \ALT_INV_regs[7][13]~q\,
	dataf => \ALT_INV_regs[6][13]~q\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X61_Y3_N57
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \regs[1][13]~q\ & ( \regs[2][13]~q\ & ( (!\regB[0]~input_o\ & (((\regB[1]~input_o\)) # (\regs[0][13]~q\))) # (\regB[0]~input_o\ & (((!\regB[1]~input_o\) # (\regs[3][13]~q\)))) ) ) ) # ( !\regs[1][13]~q\ & ( \regs[2][13]~q\ & ( 
-- (!\regB[0]~input_o\ & (((\regB[1]~input_o\)) # (\regs[0][13]~q\))) # (\regB[0]~input_o\ & (((\regs[3][13]~q\ & \regB[1]~input_o\)))) ) ) ) # ( \regs[1][13]~q\ & ( !\regs[2][13]~q\ & ( (!\regB[0]~input_o\ & (\regs[0][13]~q\ & ((!\regB[1]~input_o\)))) # 
-- (\regB[0]~input_o\ & (((!\regB[1]~input_o\) # (\regs[3][13]~q\)))) ) ) ) # ( !\regs[1][13]~q\ & ( !\regs[2][13]~q\ & ( (!\regB[0]~input_o\ & (\regs[0][13]~q\ & ((!\regB[1]~input_o\)))) # (\regB[0]~input_o\ & (((\regs[3][13]~q\ & \regB[1]~input_o\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regs[0][13]~q\,
	datac => \ALT_INV_regs[3][13]~q\,
	datad => \ALT_INV_regB[1]~input_o\,
	datae => \ALT_INV_regs[1][13]~q\,
	dataf => \ALT_INV_regs[2][13]~q\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X61_Y3_N36
\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Mux18~1_combout\ & ( (!\regB[2]~input_o\) # (\Mux18~0_combout\) ) ) # ( !\Mux18~1_combout\ & ( (\regB[2]~input_o\ & \Mux18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datab => \ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: FF_X61_Y3_N37
\outB[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[13]~reg0_q\);

-- Location: LABCELL_X61_Y7_N54
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \regs[3][14]~q\ & ( \regs[2][14]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[0][14]~q\))) # (\regB[0]~input_o\ & (\regs[1][14]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[3][14]~q\ & ( \regs[2][14]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[0][14]~q\))) # (\regB[0]~input_o\ & (\regs[1][14]~q\)))) # (\regB[1]~input_o\ & (((!\regB[0]~input_o\)))) ) ) ) # ( \regs[3][14]~q\ & ( !\regs[2][14]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][14]~q\))) # 
-- (\regB[0]~input_o\ & (\regs[1][14]~q\)))) # (\regB[1]~input_o\ & (((\regB[0]~input_o\)))) ) ) ) # ( !\regs[3][14]~q\ & ( !\regs[2][14]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][14]~q\))) # (\regB[0]~input_o\ & (\regs[1][14]~q\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regs[1][14]~q\,
	datac => \ALT_INV_regs[0][14]~q\,
	datad => \ALT_INV_regB[0]~input_o\,
	datae => \ALT_INV_regs[3][14]~q\,
	dataf => \ALT_INV_regs[2][14]~q\,
	combout => \Mux17~1_combout\);

-- Location: LABCELL_X61_Y5_N57
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \regs[6][14]~q\ & ( \regs[7][14]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[4][14]~q\))) # (\regB[0]~input_o\ & (\regs[5][14]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[6][14]~q\ & ( \regs[7][14]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[4][14]~q\))) # (\regB[0]~input_o\ & (\regs[5][14]~q\)))) # (\regB[1]~input_o\ & (((\regB[0]~input_o\)))) ) ) ) # ( \regs[6][14]~q\ & ( !\regs[7][14]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[4][14]~q\))) # 
-- (\regB[0]~input_o\ & (\regs[5][14]~q\)))) # (\regB[1]~input_o\ & (((!\regB[0]~input_o\)))) ) ) ) # ( !\regs[6][14]~q\ & ( !\regs[7][14]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[4][14]~q\))) # (\regB[0]~input_o\ & (\regs[5][14]~q\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[1]~input_o\,
	datab => \ALT_INV_regs[5][14]~q\,
	datac => \ALT_INV_regB[0]~input_o\,
	datad => \ALT_INV_regs[4][14]~q\,
	datae => \ALT_INV_regs[6][14]~q\,
	dataf => \ALT_INV_regs[7][14]~q\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X61_Y7_N48
\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \Mux17~1_combout\ & ( \Mux17~0_combout\ ) ) # ( !\Mux17~1_combout\ & ( \Mux17~0_combout\ & ( \regB[2]~input_o\ ) ) ) # ( \Mux17~1_combout\ & ( !\Mux17~0_combout\ & ( !\regB[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_regB[2]~input_o\,
	datae => \ALT_INV_Mux17~1_combout\,
	dataf => \ALT_INV_Mux17~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: FF_X61_Y7_N49
\outB[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[14]~reg0_q\);

-- Location: LABCELL_X61_Y3_N3
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \regs[3][15]~q\ & ( \regs[2][15]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[0][15]~q\))) # (\regB[0]~input_o\ & (\regs[1][15]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[3][15]~q\ & ( \regs[2][15]~q\ & ( (!\regB[1]~input_o\ & 
-- ((!\regB[0]~input_o\ & ((\regs[0][15]~q\))) # (\regB[0]~input_o\ & (\regs[1][15]~q\)))) # (\regB[1]~input_o\ & (((!\regB[0]~input_o\)))) ) ) ) # ( \regs[3][15]~q\ & ( !\regs[2][15]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][15]~q\))) # 
-- (\regB[0]~input_o\ & (\regs[1][15]~q\)))) # (\regB[1]~input_o\ & (((\regB[0]~input_o\)))) ) ) ) # ( !\regs[3][15]~q\ & ( !\regs[2][15]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[0][15]~q\))) # (\regB[0]~input_o\ & (\regs[1][15]~q\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regs[1][15]~q\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regB[0]~input_o\,
	datad => \ALT_INV_regs[0][15]~q\,
	datae => \ALT_INV_regs[3][15]~q\,
	dataf => \ALT_INV_regs[2][15]~q\,
	combout => \Mux16~1_combout\);

-- Location: LABCELL_X60_Y5_N30
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \regs[7][15]~q\ & ( \regs[6][15]~q\ & ( ((!\regB[0]~input_o\ & ((\regs[4][15]~q\))) # (\regB[0]~input_o\ & (\regs[5][15]~q\))) # (\regB[1]~input_o\) ) ) ) # ( !\regs[7][15]~q\ & ( \regs[6][15]~q\ & ( (!\regB[0]~input_o\ & 
-- (((\regs[4][15]~q\)) # (\regB[1]~input_o\))) # (\regB[0]~input_o\ & (!\regB[1]~input_o\ & (\regs[5][15]~q\))) ) ) ) # ( \regs[7][15]~q\ & ( !\regs[6][15]~q\ & ( (!\regB[0]~input_o\ & (!\regB[1]~input_o\ & ((\regs[4][15]~q\)))) # (\regB[0]~input_o\ & 
-- (((\regs[5][15]~q\)) # (\regB[1]~input_o\))) ) ) ) # ( !\regs[7][15]~q\ & ( !\regs[6][15]~q\ & ( (!\regB[1]~input_o\ & ((!\regB[0]~input_o\ & ((\regs[4][15]~q\))) # (\regB[0]~input_o\ & (\regs[5][15]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[0]~input_o\,
	datab => \ALT_INV_regB[1]~input_o\,
	datac => \ALT_INV_regs[5][15]~q\,
	datad => \ALT_INV_regs[4][15]~q\,
	datae => \ALT_INV_regs[7][15]~q\,
	dataf => \ALT_INV_regs[6][15]~q\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X61_Y3_N39
\Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ( \Mux16~0_combout\ & ( (\Mux16~1_combout\) # (\regB[2]~input_o\) ) ) # ( !\Mux16~0_combout\ & ( (!\regB[2]~input_o\ & \Mux16~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regB[2]~input_o\,
	datad => \ALT_INV_Mux16~1_combout\,
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: FF_X61_Y3_N41
\outB[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outB[15]~reg0_q\);

-- Location: IOIBUF_X84_Y0_N52
\BUS_addr1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(3),
	o => \BUS_addr1[3]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\BUS_addr1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(4),
	o => \BUS_addr1[4]~input_o\);

-- Location: IOIBUF_X2_Y81_N92
\BUS_addr1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(5),
	o => \BUS_addr1[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\BUS_addr1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(6),
	o => \BUS_addr1[6]~input_o\);

-- Location: IOIBUF_X18_Y81_N58
\BUS_addr1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr1(7),
	o => \BUS_addr1[7]~input_o\);

-- Location: IOIBUF_X4_Y81_N52
\BUS_addr2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(0),
	o => \BUS_addr2[0]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\BUS_addr2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(1),
	o => \BUS_addr2[1]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\BUS_addr2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(2),
	o => \BUS_addr2[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\BUS_addr2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(3),
	o => \BUS_addr2[3]~input_o\);

-- Location: IOIBUF_X4_Y81_N35
\BUS_addr2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(4),
	o => \BUS_addr2[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\BUS_addr2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(5),
	o => \BUS_addr2[5]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\BUS_addr2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(6),
	o => \BUS_addr2[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\BUS_addr2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_addr2(7),
	o => \BUS_addr2[7]~input_o\);

-- Location: LABCELL_X46_Y39_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


