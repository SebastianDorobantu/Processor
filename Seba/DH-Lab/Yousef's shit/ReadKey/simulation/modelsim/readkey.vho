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

-- DATE "10/20/2022 09:35:39"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	readkey IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	kbdata : IN std_logic;
	kbclock : IN std_logic;
	key : BUFFER std_logic_vector(7 DOWNTO 0);
	dig0 : BUFFER std_logic_vector(6 DOWNTO 0);
	dig1 : BUFFER std_logic_vector(6 DOWNTO 0);
	dig2 : BUFFER std_logic_vector(6 DOWNTO 0);
	dig3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END readkey;

-- Design Ports Information
-- key[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kbclock	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kbdata	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF readkey IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_kbdata : std_logic;
SIGNAL ww_kbclock : std_logic;
SIGNAL ww_key : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \kbclock~input_o\ : std_logic;
SIGNAL \kbclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \showkey|cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|cnt~2_combout\ : std_logic;
SIGNAL \showkey|cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|cnt~1_combout\ : std_logic;
SIGNAL \showkey|cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|cnt~0_combout\ : std_logic;
SIGNAL \showkey|cnt~3_combout\ : std_logic;
SIGNAL \showkey|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \kbdata~input_o\ : std_logic;
SIGNAL \showkey|key_array[1]~0_combout\ : std_logic;
SIGNAL \showkey|LessThan0~0_combout\ : std_logic;
SIGNAL \showkey|key_array[6]~5_combout\ : std_logic;
SIGNAL \showkey|Equal0~0_combout\ : std_logic;
SIGNAL \showkey|temp_byte_read~DUPLICATE_q\ : std_logic;
SIGNAL \constantkey|old_byte_read~q\ : std_logic;
SIGNAL \showkey|temp_byte_read~q\ : std_logic;
SIGNAL \constantkey|process_0~0_combout\ : std_logic;
SIGNAL \constantkey|new_scancode_detected~q\ : std_logic;
SIGNAL \showkey|key_array[5]~4_combout\ : std_logic;
SIGNAL \showkey|temp_dig1[0]~feeder_combout\ : std_logic;
SIGNAL \showkey|key_array[4]~3_combout\ : std_logic;
SIGNAL \showkey|key_array[7]~6_combout\ : std_logic;
SIGNAL \showkey|key_array[3]~2_combout\ : std_logic;
SIGNAL \showkey|key_array[8]~7_combout\ : std_logic;
SIGNAL \showkey|key_array[2]~1_combout\ : std_logic;
SIGNAL \showkey|temp_dig0[1]~feeder_combout\ : std_logic;
SIGNAL \constantkey|process_1~0_combout\ : std_logic;
SIGNAL \showkey|temp_dig1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \constantkey|Selector2~0_combout\ : std_logic;
SIGNAL \constantkey|state.break~q\ : std_logic;
SIGNAL \constantkey|state.waiting~0_combout\ : std_logic;
SIGNAL \constantkey|state.waiting~q\ : std_logic;
SIGNAL \constantkey|Selector1~0_combout\ : std_logic;
SIGNAL \constantkey|state.pressing~q\ : std_logic;
SIGNAL \constantkey|temp_key[3]~0_combout\ : std_logic;
SIGNAL \constantkey|key[2]~feeder_combout\ : std_logic;
SIGNAL \constantkey|key[6]~feeder_combout\ : std_logic;
SIGNAL \showkey|Mux6~0_combout\ : std_logic;
SIGNAL \showkey|Mux5~0_combout\ : std_logic;
SIGNAL \showkey|Mux4~0_combout\ : std_logic;
SIGNAL \showkey|Mux3~0_combout\ : std_logic;
SIGNAL \showkey|Mux2~0_combout\ : std_logic;
SIGNAL \showkey|Mux1~0_combout\ : std_logic;
SIGNAL \showkey|Mux0~0_combout\ : std_logic;
SIGNAL \showkey|Mux13~0_combout\ : std_logic;
SIGNAL \showkey|Mux12~0_combout\ : std_logic;
SIGNAL \showkey|Mux11~0_combout\ : std_logic;
SIGNAL \showkey|Mux10~0_combout\ : std_logic;
SIGNAL \showkey|Mux9~0_combout\ : std_logic;
SIGNAL \showkey|Mux8~0_combout\ : std_logic;
SIGNAL \showkey|Mux7~0_combout\ : std_logic;
SIGNAL \constantkey|Mux6~0_combout\ : std_logic;
SIGNAL \constantkey|Mux5~0_combout\ : std_logic;
SIGNAL \constantkey|Mux4~0_combout\ : std_logic;
SIGNAL \constantkey|Mux3~0_combout\ : std_logic;
SIGNAL \constantkey|Mux2~0_combout\ : std_logic;
SIGNAL \constantkey|Mux1~0_combout\ : std_logic;
SIGNAL \constantkey|Mux0~0_combout\ : std_logic;
SIGNAL \constantkey|Mux13~0_combout\ : std_logic;
SIGNAL \constantkey|Mux12~0_combout\ : std_logic;
SIGNAL \constantkey|Mux11~0_combout\ : std_logic;
SIGNAL \constantkey|Mux10~0_combout\ : std_logic;
SIGNAL \constantkey|Mux9~0_combout\ : std_logic;
SIGNAL \constantkey|Mux8~0_combout\ : std_logic;
SIGNAL \constantkey|Mux7~0_combout\ : std_logic;
SIGNAL \constantkey|temp_key\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \constantkey|key\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \showkey|temp_dig0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \showkey|temp_dig1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \showkey|key_array\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \showkey|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \showkey|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|ALT_INV_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|ALT_INV_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_kbclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_kbdata~input_o\ : std_logic;
SIGNAL \constantkey|ALT_INV_state.break~q\ : std_logic;
SIGNAL \constantkey|ALT_INV_state.waiting~q\ : std_logic;
SIGNAL \constantkey|ALT_INV_old_byte_read~q\ : std_logic;
SIGNAL \showkey|ALT_INV_temp_byte_read~q\ : std_logic;
SIGNAL \showkey|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \constantkey|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \constantkey|ALT_INV_state.pressing~q\ : std_logic;
SIGNAL \constantkey|ALT_INV_new_scancode_detected~q\ : std_logic;
SIGNAL \showkey|ALT_INV_key_array\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \constantkey|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \constantkey|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \showkey|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \showkey|ALT_INV_temp_dig1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \showkey|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \showkey|ALT_INV_temp_dig0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \constantkey|ALT_INV_temp_key\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_kbdata <= kbdata;
ww_kbclock <= kbclock;
key <= ww_key;
dig0 <= ww_dig0;
dig1 <= ww_dig1;
dig2 <= ww_dig2;
dig3 <= ww_dig3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\showkey|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \showkey|cnt[0]~DUPLICATE_q\;
\showkey|ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \showkey|cnt[1]~DUPLICATE_q\;
\showkey|ALT_INV_cnt[2]~DUPLICATE_q\ <= NOT \showkey|cnt[2]~DUPLICATE_q\;
\showkey|ALT_INV_cnt[3]~DUPLICATE_q\ <= NOT \showkey|cnt[3]~DUPLICATE_q\;
\showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\ <= NOT \showkey|temp_dig1[0]~DUPLICATE_q\;
\ALT_INV_kbclock~inputCLKENA0_outclk\ <= NOT \kbclock~inputCLKENA0_outclk\;
\ALT_INV_kbdata~input_o\ <= NOT \kbdata~input_o\;
\constantkey|ALT_INV_state.break~q\ <= NOT \constantkey|state.break~q\;
\constantkey|ALT_INV_state.waiting~q\ <= NOT \constantkey|state.waiting~q\;
\constantkey|ALT_INV_old_byte_read~q\ <= NOT \constantkey|old_byte_read~q\;
\showkey|ALT_INV_temp_byte_read~q\ <= NOT \showkey|temp_byte_read~q\;
\showkey|ALT_INV_cnt\(0) <= NOT \showkey|cnt\(0);
\constantkey|ALT_INV_process_1~0_combout\ <= NOT \constantkey|process_1~0_combout\;
\constantkey|ALT_INV_state.pressing~q\ <= NOT \constantkey|state.pressing~q\;
\constantkey|ALT_INV_new_scancode_detected~q\ <= NOT \constantkey|new_scancode_detected~q\;
\showkey|ALT_INV_key_array\(8) <= NOT \showkey|key_array\(8);
\showkey|ALT_INV_key_array\(7) <= NOT \showkey|key_array\(7);
\showkey|ALT_INV_key_array\(6) <= NOT \showkey|key_array\(6);
\showkey|ALT_INV_key_array\(5) <= NOT \showkey|key_array\(5);
\showkey|ALT_INV_key_array\(4) <= NOT \showkey|key_array\(4);
\showkey|ALT_INV_key_array\(3) <= NOT \showkey|key_array\(3);
\showkey|ALT_INV_key_array\(2) <= NOT \showkey|key_array\(2);
\showkey|ALT_INV_cnt\(1) <= NOT \showkey|cnt\(1);
\showkey|ALT_INV_cnt\(2) <= NOT \showkey|cnt\(2);
\showkey|ALT_INV_cnt\(3) <= NOT \showkey|cnt\(3);
\showkey|ALT_INV_key_array\(1) <= NOT \showkey|key_array\(1);
\constantkey|ALT_INV_Mux7~0_combout\ <= NOT \constantkey|Mux7~0_combout\;
\constantkey|ALT_INV_Mux0~0_combout\ <= NOT \constantkey|Mux0~0_combout\;
\showkey|ALT_INV_Mux7~0_combout\ <= NOT \showkey|Mux7~0_combout\;
\showkey|ALT_INV_temp_dig1\(3) <= NOT \showkey|temp_dig1\(3);
\showkey|ALT_INV_temp_dig1\(2) <= NOT \showkey|temp_dig1\(2);
\showkey|ALT_INV_temp_dig1\(1) <= NOT \showkey|temp_dig1\(1);
\showkey|ALT_INV_temp_dig1\(0) <= NOT \showkey|temp_dig1\(0);
\showkey|ALT_INV_Mux0~0_combout\ <= NOT \showkey|Mux0~0_combout\;
\showkey|ALT_INV_temp_dig0\(3) <= NOT \showkey|temp_dig0\(3);
\showkey|ALT_INV_temp_dig0\(2) <= NOT \showkey|temp_dig0\(2);
\showkey|ALT_INV_temp_dig0\(1) <= NOT \showkey|temp_dig0\(1);
\showkey|ALT_INV_temp_dig0\(0) <= NOT \showkey|temp_dig0\(0);
\constantkey|ALT_INV_temp_key\(7) <= NOT \constantkey|temp_key\(7);
\constantkey|ALT_INV_temp_key\(6) <= NOT \constantkey|temp_key\(6);
\constantkey|ALT_INV_temp_key\(5) <= NOT \constantkey|temp_key\(5);
\constantkey|ALT_INV_temp_key\(4) <= NOT \constantkey|temp_key\(4);
\constantkey|ALT_INV_temp_key\(3) <= NOT \constantkey|temp_key\(3);
\constantkey|ALT_INV_temp_key\(2) <= NOT \constantkey|temp_key\(2);
\constantkey|ALT_INV_temp_key\(1) <= NOT \constantkey|temp_key\(1);
\constantkey|ALT_INV_temp_key\(0) <= NOT \constantkey|temp_key\(0);

-- Location: IOOBUF_X52_Y0_N2
\key[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(0),
	devoe => ww_devoe,
	o => ww_key(0));

-- Location: IOOBUF_X52_Y0_N19
\key[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(1),
	devoe => ww_devoe,
	o => ww_key(1));

-- Location: IOOBUF_X60_Y0_N2
\key[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(2),
	devoe => ww_devoe,
	o => ww_key(2));

-- Location: IOOBUF_X80_Y0_N2
\key[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(3),
	devoe => ww_devoe,
	o => ww_key(3));

-- Location: IOOBUF_X60_Y0_N19
\key[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(4),
	devoe => ww_devoe,
	o => ww_key(4));

-- Location: IOOBUF_X80_Y0_N19
\key[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(5),
	devoe => ww_devoe,
	o => ww_key(5));

-- Location: IOOBUF_X84_Y0_N2
\key[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(6),
	devoe => ww_devoe,
	o => ww_key(6));

-- Location: IOOBUF_X89_Y6_N5
\key[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|key\(7),
	devoe => ww_devoe,
	o => ww_key(7));

-- Location: IOOBUF_X89_Y8_N39
\dig0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(0));

-- Location: IOOBUF_X89_Y11_N79
\dig0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(1));

-- Location: IOOBUF_X89_Y11_N96
\dig0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(2));

-- Location: IOOBUF_X89_Y4_N79
\dig0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(3));

-- Location: IOOBUF_X89_Y13_N56
\dig0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(4));

-- Location: IOOBUF_X89_Y13_N39
\dig0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(5));

-- Location: IOOBUF_X89_Y4_N96
\dig0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_dig0(6));

-- Location: IOOBUF_X89_Y6_N39
\dig1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(0));

-- Location: IOOBUF_X89_Y6_N56
\dig1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(1));

-- Location: IOOBUF_X89_Y16_N39
\dig1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(2));

-- Location: IOOBUF_X89_Y16_N56
\dig1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(3));

-- Location: IOOBUF_X89_Y15_N39
\dig1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(4));

-- Location: IOOBUF_X89_Y15_N56
\dig1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(5));

-- Location: IOOBUF_X89_Y8_N56
\dig1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showkey|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(6));

-- Location: IOOBUF_X89_Y9_N22
\dig2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(0));

-- Location: IOOBUF_X89_Y23_N39
\dig2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(1));

-- Location: IOOBUF_X89_Y23_N56
\dig2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(2));

-- Location: IOOBUF_X89_Y20_N79
\dig2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(3));

-- Location: IOOBUF_X89_Y25_N39
\dig2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(4));

-- Location: IOOBUF_X89_Y20_N96
\dig2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(5));

-- Location: IOOBUF_X89_Y25_N56
\dig2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_dig2(6));

-- Location: IOOBUF_X89_Y16_N5
\dig3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(0));

-- Location: IOOBUF_X89_Y16_N22
\dig3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(1));

-- Location: IOOBUF_X89_Y4_N45
\dig3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(2));

-- Location: IOOBUF_X89_Y4_N62
\dig3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(3));

-- Location: IOOBUF_X89_Y21_N39
\dig3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(4));

-- Location: IOOBUF_X89_Y11_N62
\dig3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(5));

-- Location: IOOBUF_X89_Y9_N5
\dig3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constantkey|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_dig3(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X6_Y0_N1
\kbclock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kbclock,
	o => \kbclock~input_o\);

-- Location: CLKCTRL_G5
\kbclock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \kbclock~input_o\,
	outclk => \kbclock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X85_Y10_N43
\showkey|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt\(2));

-- Location: FF_X85_Y10_N26
\showkey|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt\(1));

-- Location: FF_X85_Y10_N29
\showkey|cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y10_N24
\showkey|cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|cnt~2_combout\ = ( \showkey|cnt[3]~DUPLICATE_q\ & ( (!\showkey|cnt\(2) & (\showkey|cnt[0]~DUPLICATE_q\ & !\showkey|cnt\(1))) ) ) # ( !\showkey|cnt[3]~DUPLICATE_q\ & ( !\showkey|cnt[0]~DUPLICATE_q\ $ (!\showkey|cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_cnt\(2),
	datac => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt\(1),
	dataf => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \showkey|cnt~2_combout\);

-- Location: FF_X85_Y10_N25
\showkey|cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y10_N42
\showkey|cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|cnt~1_combout\ = ( \showkey|cnt[1]~DUPLICATE_q\ & ( (!\showkey|cnt\(3) & (!\showkey|cnt[0]~DUPLICATE_q\ $ (!\showkey|cnt\(2)))) ) ) # ( !\showkey|cnt[1]~DUPLICATE_q\ & ( (!\showkey|cnt\(3) & \showkey|cnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_cnt\(3),
	datac => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt\(2),
	dataf => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \showkey|cnt~1_combout\);

-- Location: FF_X85_Y10_N44
\showkey|cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y10_N27
\showkey|cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|cnt~0_combout\ = ( \showkey|cnt[1]~DUPLICATE_q\ & ( (\showkey|cnt[0]~DUPLICATE_q\ & (\showkey|cnt[2]~DUPLICATE_q\ & !\showkey|cnt\(3))) ) ) # ( !\showkey|cnt[1]~DUPLICATE_q\ & ( (!\showkey|cnt[2]~DUPLICATE_q\ & \showkey|cnt\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt\(3),
	dataf => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \showkey|cnt~0_combout\);

-- Location: FF_X85_Y10_N28
\showkey|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt\(3));

-- Location: FF_X85_Y10_N47
\showkey|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt\(0));

-- Location: LABCELL_X85_Y10_N45
\showkey|cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|cnt~3_combout\ = ( \showkey|cnt[2]~DUPLICATE_q\ & ( (!\showkey|cnt\(3) & !\showkey|cnt\(0)) ) ) # ( !\showkey|cnt[2]~DUPLICATE_q\ & ( (!\showkey|cnt\(0) & ((!\showkey|cnt\(3)) # (!\showkey|cnt[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_cnt\(3),
	datac => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt\(0),
	dataf => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \showkey|cnt~3_combout\);

-- Location: FF_X85_Y10_N46
\showkey|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|cnt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|cnt[0]~DUPLICATE_q\);

-- Location: IOIBUF_X6_Y0_N18
\kbdata~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kbdata,
	o => \kbdata~input_o\);

-- Location: LABCELL_X85_Y10_N30
\showkey|key_array[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[1]~0_combout\ = ( \showkey|key_array\(1) & ( \showkey|cnt[3]~DUPLICATE_q\ ) ) # ( \showkey|key_array\(1) & ( !\showkey|cnt[3]~DUPLICATE_q\ & ( (!\showkey|cnt[0]~DUPLICATE_q\) # (((\showkey|cnt\(2)) # (\kbdata~input_o\)) # 
-- (\showkey|cnt[1]~DUPLICATE_q\)) ) ) ) # ( !\showkey|key_array\(1) & ( !\showkey|cnt[3]~DUPLICATE_q\ & ( (\showkey|cnt[0]~DUPLICATE_q\ & (!\showkey|cnt[1]~DUPLICATE_q\ & (\kbdata~input_o\ & !\showkey|cnt\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000101111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_kbdata~input_o\,
	datad => \showkey|ALT_INV_cnt\(2),
	datae => \showkey|ALT_INV_key_array\(1),
	dataf => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \showkey|key_array[1]~0_combout\);

-- Location: FF_X85_Y10_N32
\showkey|key_array[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(1));

-- Location: LABCELL_X85_Y10_N9
\showkey|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|LessThan0~0_combout\ = ( \showkey|cnt\(1) & ( \showkey|cnt[3]~DUPLICATE_q\ ) ) # ( !\showkey|cnt\(1) & ( (\showkey|cnt[2]~DUPLICATE_q\ & \showkey|cnt[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	dataf => \showkey|ALT_INV_cnt\(1),
	combout => \showkey|LessThan0~0_combout\);

-- Location: FF_X84_Y10_N2
\showkey|temp_dig0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => \showkey|key_array\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig0\(0));

-- Location: LABCELL_X85_Y10_N54
\showkey|key_array[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[6]~5_combout\ = ( \showkey|key_array\(6) & ( \showkey|cnt[2]~DUPLICATE_q\ & ( (!\showkey|cnt[1]~DUPLICATE_q\) # (((\showkey|cnt\(3)) # (\kbdata~input_o\)) # (\showkey|cnt\(0))) ) ) ) # ( !\showkey|key_array\(6) & ( 
-- \showkey|cnt[2]~DUPLICATE_q\ & ( (\showkey|cnt[1]~DUPLICATE_q\ & (!\showkey|cnt\(0) & (\kbdata~input_o\ & !\showkey|cnt\(3)))) ) ) ) # ( \showkey|key_array\(6) & ( !\showkey|cnt[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datab => \showkey|ALT_INV_cnt\(0),
	datac => \ALT_INV_kbdata~input_o\,
	datad => \showkey|ALT_INV_cnt\(3),
	datae => \showkey|ALT_INV_key_array\(6),
	dataf => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \showkey|key_array[6]~5_combout\);

-- Location: FF_X85_Y10_N55
\showkey|key_array[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[6]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(6));

-- Location: FF_X85_Y10_N38
\showkey|temp_dig1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => \showkey|key_array\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig1\(1));

-- Location: LABCELL_X83_Y10_N3
\showkey|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Equal0~0_combout\ = ( !\showkey|cnt[0]~DUPLICATE_q\ & ( (!\showkey|cnt[2]~DUPLICATE_q\ & (\showkey|cnt[1]~DUPLICATE_q\ & \showkey|cnt[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datac => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	dataf => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \showkey|Equal0~0_combout\);

-- Location: FF_X83_Y10_N5
\showkey|temp_byte_read~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|Equal0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_byte_read~DUPLICATE_q\);

-- Location: FF_X83_Y10_N40
\constantkey|old_byte_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_byte_read~DUPLICATE_q\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|old_byte_read~q\);

-- Location: FF_X83_Y10_N4
\showkey|temp_byte_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|Equal0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_byte_read~q\);

-- Location: MLABCELL_X84_Y10_N30
\constantkey|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|process_0~0_combout\ = ( \showkey|temp_byte_read~q\ & ( !\constantkey|old_byte_read~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \constantkey|ALT_INV_old_byte_read~q\,
	dataf => \showkey|ALT_INV_temp_byte_read~q\,
	combout => \constantkey|process_0~0_combout\);

-- Location: FF_X84_Y10_N32
\constantkey|new_scancode_detected\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \constantkey|process_0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|new_scancode_detected~q\);

-- Location: LABCELL_X85_Y10_N12
\showkey|key_array[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[5]~4_combout\ = ( \showkey|key_array\(5) & ( \showkey|cnt[3]~DUPLICATE_q\ ) ) # ( \showkey|key_array\(5) & ( !\showkey|cnt[3]~DUPLICATE_q\ & ( (!\showkey|cnt[0]~DUPLICATE_q\) # ((!\showkey|cnt[2]~DUPLICATE_q\) # 
-- ((\showkey|cnt[1]~DUPLICATE_q\) # (\kbdata~input_o\))) ) ) ) # ( !\showkey|key_array\(5) & ( !\showkey|cnt[3]~DUPLICATE_q\ & ( (\showkey|cnt[0]~DUPLICATE_q\ & (\showkey|cnt[2]~DUPLICATE_q\ & (\kbdata~input_o\ & !\showkey|cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111011111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datac => \ALT_INV_kbdata~input_o\,
	datad => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => \showkey|ALT_INV_key_array\(5),
	dataf => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \showkey|key_array[5]~4_combout\);

-- Location: FF_X85_Y10_N14
\showkey|key_array[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[5]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(5));

-- Location: LABCELL_X85_Y10_N21
\showkey|temp_dig1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|temp_dig1[0]~feeder_combout\ = \showkey|key_array\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \showkey|ALT_INV_key_array\(5),
	combout => \showkey|temp_dig1[0]~feeder_combout\);

-- Location: FF_X85_Y10_N23
\showkey|temp_dig1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|temp_dig1[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig1\(0));

-- Location: LABCELL_X85_Y10_N48
\showkey|key_array[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[4]~3_combout\ = ( \showkey|key_array\(4) & ( \showkey|cnt[2]~DUPLICATE_q\ & ( (((\showkey|cnt\(3)) # (\kbdata~input_o\)) # (\showkey|cnt\(0))) # (\showkey|cnt[1]~DUPLICATE_q\) ) ) ) # ( !\showkey|key_array\(4) & ( 
-- \showkey|cnt[2]~DUPLICATE_q\ & ( (!\showkey|cnt[1]~DUPLICATE_q\ & (!\showkey|cnt\(0) & (\kbdata~input_o\ & !\showkey|cnt\(3)))) ) ) ) # ( \showkey|key_array\(4) & ( !\showkey|cnt[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datab => \showkey|ALT_INV_cnt\(0),
	datac => \ALT_INV_kbdata~input_o\,
	datad => \showkey|ALT_INV_cnt\(3),
	datae => \showkey|ALT_INV_key_array\(4),
	dataf => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \showkey|key_array[4]~3_combout\);

-- Location: FF_X85_Y10_N49
\showkey|key_array[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[4]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(4));

-- Location: FF_X84_Y10_N5
\showkey|temp_dig0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => \showkey|key_array\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig0\(3));

-- Location: MLABCELL_X87_Y10_N42
\showkey|key_array[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[7]~6_combout\ = ( \showkey|key_array\(7) & ( \showkey|cnt[0]~DUPLICATE_q\ & ( (!\showkey|cnt[2]~DUPLICATE_q\) # (((!\showkey|cnt[1]~DUPLICATE_q\) # (\showkey|cnt[3]~DUPLICATE_q\)) # (\kbdata~input_o\)) ) ) ) # ( !\showkey|key_array\(7) 
-- & ( \showkey|cnt[0]~DUPLICATE_q\ & ( (\showkey|cnt[2]~DUPLICATE_q\ & (\kbdata~input_o\ & (\showkey|cnt[1]~DUPLICATE_q\ & !\showkey|cnt[3]~DUPLICATE_q\))) ) ) ) # ( \showkey|key_array\(7) & ( !\showkey|cnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datab => \ALT_INV_kbdata~input_o\,
	datac => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	datae => \showkey|ALT_INV_key_array\(7),
	dataf => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \showkey|key_array[7]~6_combout\);

-- Location: FF_X87_Y10_N43
\showkey|key_array[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[7]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(7));

-- Location: FF_X84_Y10_N41
\showkey|temp_dig1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => \showkey|key_array\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig1\(2));

-- Location: MLABCELL_X87_Y10_N12
\showkey|key_array[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[3]~2_combout\ = ( \showkey|key_array\(3) & ( \showkey|cnt[0]~DUPLICATE_q\ & ( (((!\showkey|cnt[1]~DUPLICATE_q\) # (\showkey|cnt[3]~DUPLICATE_q\)) # (\kbdata~input_o\)) # (\showkey|cnt[2]~DUPLICATE_q\) ) ) ) # ( !\showkey|key_array\(3) & 
-- ( \showkey|cnt[0]~DUPLICATE_q\ & ( (!\showkey|cnt[2]~DUPLICATE_q\ & (\kbdata~input_o\ & (\showkey|cnt[1]~DUPLICATE_q\ & !\showkey|cnt[3]~DUPLICATE_q\))) ) ) ) # ( \showkey|key_array\(3) & ( !\showkey|cnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datab => \ALT_INV_kbdata~input_o\,
	datac => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	datae => \showkey|ALT_INV_key_array\(3),
	dataf => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \showkey|key_array[3]~2_combout\);

-- Location: FF_X87_Y10_N13
\showkey|key_array[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(3));

-- Location: FF_X84_Y10_N52
\showkey|temp_dig0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => \showkey|key_array\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig0\(2));

-- Location: LABCELL_X85_Y10_N0
\showkey|key_array[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[8]~7_combout\ = ( \showkey|key_array\(8) & ( \showkey|cnt[2]~DUPLICATE_q\ ) ) # ( \showkey|key_array\(8) & ( !\showkey|cnt[2]~DUPLICATE_q\ & ( (((!\showkey|cnt\(3)) # (\kbdata~input_o\)) # (\showkey|cnt\(0))) # 
-- (\showkey|cnt[1]~DUPLICATE_q\) ) ) ) # ( !\showkey|key_array\(8) & ( !\showkey|cnt[2]~DUPLICATE_q\ & ( (!\showkey|cnt[1]~DUPLICATE_q\ & (!\showkey|cnt\(0) & (\kbdata~input_o\ & \showkey|cnt\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datab => \showkey|ALT_INV_cnt\(0),
	datac => \ALT_INV_kbdata~input_o\,
	datad => \showkey|ALT_INV_cnt\(3),
	datae => \showkey|ALT_INV_key_array\(8),
	dataf => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \showkey|key_array[8]~7_combout\);

-- Location: FF_X85_Y10_N1
\showkey|key_array[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[8]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(8));

-- Location: FF_X85_Y10_N8
\showkey|temp_dig1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => \showkey|key_array\(8),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig1\(3));

-- Location: MLABCELL_X87_Y10_N54
\showkey|key_array[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|key_array[2]~1_combout\ = ( \showkey|key_array\(2) & ( \showkey|cnt[0]~DUPLICATE_q\ ) ) # ( \showkey|key_array\(2) & ( !\showkey|cnt[0]~DUPLICATE_q\ & ( (((!\showkey|cnt[1]~DUPLICATE_q\) # (\showkey|cnt[3]~DUPLICATE_q\)) # (\kbdata~input_o\)) # 
-- (\showkey|cnt[2]~DUPLICATE_q\) ) ) ) # ( !\showkey|key_array\(2) & ( !\showkey|cnt[0]~DUPLICATE_q\ & ( (!\showkey|cnt[2]~DUPLICATE_q\ & (\kbdata~input_o\ & (\showkey|cnt[1]~DUPLICATE_q\ & !\showkey|cnt[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111101111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_cnt[2]~DUPLICATE_q\,
	datab => \ALT_INV_kbdata~input_o\,
	datac => \showkey|ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \showkey|ALT_INV_cnt[3]~DUPLICATE_q\,
	datae => \showkey|ALT_INV_key_array\(2),
	dataf => \showkey|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \showkey|key_array[2]~1_combout\);

-- Location: FF_X87_Y10_N55
\showkey|key_array[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|key_array[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|key_array\(2));

-- Location: LABCELL_X85_Y10_N18
\showkey|temp_dig0[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|temp_dig0[1]~feeder_combout\ = ( \showkey|key_array\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \showkey|ALT_INV_key_array\(2),
	combout => \showkey|temp_dig0[1]~feeder_combout\);

-- Location: FF_X85_Y10_N20
\showkey|temp_dig0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|temp_dig0[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig0\(1));

-- Location: MLABCELL_X84_Y10_N15
\constantkey|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|process_1~0_combout\ = ( \showkey|temp_dig1\(3) & ( !\showkey|temp_dig0\(1) & ( (!\showkey|temp_dig0\(3) & (\showkey|temp_dig1\(2) & (!\showkey|temp_dig0\(2) & !\showkey|temp_dig0\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig0\(3),
	datab => \showkey|ALT_INV_temp_dig1\(2),
	datac => \showkey|ALT_INV_temp_dig0\(2),
	datad => \showkey|ALT_INV_temp_dig0\(0),
	datae => \showkey|ALT_INV_temp_dig1\(3),
	dataf => \showkey|ALT_INV_temp_dig0\(1),
	combout => \constantkey|process_1~0_combout\);

-- Location: FF_X85_Y10_N22
\showkey|temp_dig1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \showkey|temp_dig1[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \showkey|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \showkey|temp_dig1[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y10_N24
\constantkey|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Selector2~0_combout\ = ( \constantkey|state.break~q\ & ( \constantkey|state.pressing~q\ & ( (!\constantkey|new_scancode_detected~q\) # ((\showkey|temp_dig1\(1) & (\constantkey|process_1~0_combout\ & \showkey|temp_dig1[0]~DUPLICATE_q\))) ) ) ) 
-- # ( !\constantkey|state.break~q\ & ( \constantkey|state.pressing~q\ & ( (\showkey|temp_dig1\(1) & (\constantkey|process_1~0_combout\ & (\constantkey|new_scancode_detected~q\ & \showkey|temp_dig1[0]~DUPLICATE_q\))) ) ) ) # ( \constantkey|state.break~q\ & ( 
-- !\constantkey|state.pressing~q\ & ( !\constantkey|new_scancode_detected~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig1\(1),
	datab => \constantkey|ALT_INV_process_1~0_combout\,
	datac => \constantkey|ALT_INV_new_scancode_detected~q\,
	datad => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	datae => \constantkey|ALT_INV_state.break~q\,
	dataf => \constantkey|ALT_INV_state.pressing~q\,
	combout => \constantkey|Selector2~0_combout\);

-- Location: FF_X84_Y10_N25
\constantkey|state.break\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \constantkey|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|state.break~q\);

-- Location: MLABCELL_X84_Y10_N33
\constantkey|state.waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|state.waiting~0_combout\ = ( \constantkey|state.break~q\ & ( (!\constantkey|new_scancode_detected~q\ & \constantkey|state.waiting~q\) ) ) # ( !\constantkey|state.break~q\ & ( (\constantkey|state.waiting~q\) # 
-- (\constantkey|new_scancode_detected~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \constantkey|ALT_INV_new_scancode_detected~q\,
	datad => \constantkey|ALT_INV_state.waiting~q\,
	dataf => \constantkey|ALT_INV_state.break~q\,
	combout => \constantkey|state.waiting~0_combout\);

-- Location: FF_X84_Y10_N35
\constantkey|state.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \constantkey|state.waiting~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|state.waiting~q\);

-- Location: MLABCELL_X84_Y10_N54
\constantkey|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Selector1~0_combout\ = ( \constantkey|state.pressing~q\ & ( \constantkey|new_scancode_detected~q\ & ( (!\constantkey|state.waiting~q\) # ((!\showkey|temp_dig1\(1)) # ((!\showkey|temp_dig1\(0)) # (!\constantkey|process_1~0_combout\))) ) ) ) # 
-- ( !\constantkey|state.pressing~q\ & ( \constantkey|new_scancode_detected~q\ & ( !\constantkey|state.waiting~q\ ) ) ) # ( \constantkey|state.pressing~q\ & ( !\constantkey|new_scancode_detected~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010101010101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_state.waiting~q\,
	datab => \showkey|ALT_INV_temp_dig1\(1),
	datac => \showkey|ALT_INV_temp_dig1\(0),
	datad => \constantkey|ALT_INV_process_1~0_combout\,
	datae => \constantkey|ALT_INV_state.pressing~q\,
	dataf => \constantkey|ALT_INV_new_scancode_detected~q\,
	combout => \constantkey|Selector1~0_combout\);

-- Location: FF_X84_Y10_N56
\constantkey|state.pressing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \constantkey|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|state.pressing~q\);

-- Location: MLABCELL_X84_Y10_N45
\constantkey|temp_key[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|temp_key[3]~0_combout\ = ( \constantkey|state.pressing~q\ & ( \constantkey|process_1~0_combout\ & ( (\showkey|temp_dig1\(1) & (\constantkey|new_scancode_detected~q\ & \showkey|temp_dig1\(0))) ) ) ) # ( !\constantkey|state.pressing~q\ & ( 
-- \constantkey|process_1~0_combout\ ) ) # ( !\constantkey|state.pressing~q\ & ( !\constantkey|process_1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig1\(1),
	datac => \constantkey|ALT_INV_new_scancode_detected~q\,
	datad => \showkey|ALT_INV_temp_dig1\(0),
	datae => \constantkey|ALT_INV_state.pressing~q\,
	dataf => \constantkey|ALT_INV_process_1~0_combout\,
	combout => \constantkey|temp_key[3]~0_combout\);

-- Location: FF_X84_Y10_N11
\constantkey|temp_key[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig0\(0),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(0));

-- Location: FF_X83_Y10_N31
\constantkey|key[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \constantkey|temp_key\(0),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(0));

-- Location: FF_X84_Y10_N17
\constantkey|temp_key[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig0\(1),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(1));

-- Location: FF_X83_Y10_N17
\constantkey|key[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \constantkey|temp_key\(1),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(1));

-- Location: FF_X84_Y10_N14
\constantkey|temp_key[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig0\(2),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(2));

-- Location: LABCELL_X83_Y10_N21
\constantkey|key[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|key[2]~feeder_combout\ = ( \constantkey|temp_key\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \constantkey|ALT_INV_temp_key\(2),
	combout => \constantkey|key[2]~feeder_combout\);

-- Location: FF_X83_Y10_N22
\constantkey|key[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \constantkey|key[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(2));

-- Location: FF_X84_Y10_N20
\constantkey|temp_key[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig0\(3),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(3));

-- Location: FF_X83_Y10_N55
\constantkey|key[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \constantkey|temp_key\(3),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(3));

-- Location: FF_X84_Y10_N44
\constantkey|temp_key[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig1[0]~DUPLICATE_q\,
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(4));

-- Location: FF_X83_Y10_N19
\constantkey|key[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \constantkey|temp_key\(4),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(4));

-- Location: FF_X84_Y10_N23
\constantkey|temp_key[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig1\(1),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(5));

-- Location: FF_X83_Y10_N23
\constantkey|key[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \constantkey|temp_key\(5),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(5));

-- Location: FF_X84_Y10_N47
\constantkey|temp_key[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig1\(2),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(6));

-- Location: LABCELL_X83_Y10_N36
\constantkey|key[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|key[6]~feeder_combout\ = ( \constantkey|temp_key\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \constantkey|ALT_INV_temp_key\(6),
	combout => \constantkey|key[6]~feeder_combout\);

-- Location: FF_X83_Y10_N38
\constantkey|key[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \constantkey|key[6]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(6));

-- Location: FF_X84_Y10_N8
\constantkey|temp_key[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \showkey|temp_dig1\(3),
	sclr => \constantkey|temp_key[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|temp_key\(7));

-- Location: FF_X83_Y10_N10
\constantkey|key[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \constantkey|temp_key\(7),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \constantkey|key\(7));

-- Location: MLABCELL_X87_Y10_N24
\showkey|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux6~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(1) & \showkey|temp_dig0\(3)) ) ) ) # ( !\showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( !\showkey|temp_dig0\(1) $ (\showkey|temp_dig0\(3)) ) ) ) 
-- # ( \showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(1) & !\showkey|temp_dig0\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011001100001100110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(1),
	datad => \showkey|ALT_INV_temp_dig0\(3),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y10_N9
\showkey|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux5~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( !\showkey|temp_dig0\(3) $ (\showkey|temp_dig0\(1)) ) ) ) # ( !\showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(3) & \showkey|temp_dig0\(1)) ) ) ) 
-- # ( \showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(1)) # (\showkey|temp_dig0\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(3),
	datac => \showkey|ALT_INV_temp_dig0\(1),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y10_N48
\showkey|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux4~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(1) & \showkey|temp_dig0\(3)) ) ) ) # ( \showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( \showkey|temp_dig0\(3) ) ) ) # ( !\showkey|temp_dig0\(2) 
-- & ( !\showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(1) & !\showkey|temp_dig0\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000001111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(1),
	datad => \showkey|ALT_INV_temp_dig0\(3),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y10_N21
\showkey|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux3~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( \showkey|temp_dig0\(1) ) ) ) # ( !\showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(3) & !\showkey|temp_dig0\(1)) ) ) ) # ( \showkey|temp_dig0\(2) 
-- & ( !\showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(3) & !\showkey|temp_dig0\(1)) ) ) ) # ( !\showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(3) & \showkey|temp_dig0\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(3),
	datac => \showkey|ALT_INV_temp_dig0\(1),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y10_N36
\showkey|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux2~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( !\showkey|temp_dig0\(3) ) ) ) # ( !\showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(1)) # (!\showkey|temp_dig0\(3)) ) ) ) # ( 
-- \showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(1) & !\showkey|temp_dig0\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011111111110011001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(1),
	datad => \showkey|ALT_INV_temp_dig0\(3),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y10_N33
\showkey|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux1~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( !\showkey|temp_dig0\(3) $ (!\showkey|temp_dig0\(1)) ) ) ) # ( !\showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( !\showkey|temp_dig0\(3) ) ) ) # ( 
-- !\showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(3) & \showkey|temp_dig0\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011001100110011000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(3),
	datac => \showkey|ALT_INV_temp_dig0\(1),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y10_N0
\showkey|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux0~0_combout\ = ( \showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(1)) # (\showkey|temp_dig0\(3)) ) ) ) # ( !\showkey|temp_dig0\(2) & ( \showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(3)) # (\showkey|temp_dig0\(1)) ) 
-- ) ) # ( \showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (!\showkey|temp_dig0\(3)) # (\showkey|temp_dig0\(1)) ) ) ) # ( !\showkey|temp_dig0\(2) & ( !\showkey|temp_dig0\(0) & ( (\showkey|temp_dig0\(3)) # (\showkey|temp_dig0\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111111111110011001100110011111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig0\(1),
	datad => \showkey|ALT_INV_temp_dig0\(3),
	datae => \showkey|ALT_INV_temp_dig0\(2),
	dataf => \showkey|ALT_INV_temp_dig0\(0),
	combout => \showkey|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y10_N3
\showkey|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux13~0_combout\ = ( \showkey|temp_dig1[0]~DUPLICATE_q\ & ( (!\showkey|temp_dig1\(3) & (!\showkey|temp_dig1\(1) & !\showkey|temp_dig1\(2))) # (\showkey|temp_dig1\(3) & (!\showkey|temp_dig1\(1) $ (!\showkey|temp_dig1\(2)))) ) ) # ( 
-- !\showkey|temp_dig1[0]~DUPLICATE_q\ & ( (!\showkey|temp_dig1\(3) & (!\showkey|temp_dig1\(1) & \showkey|temp_dig1\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig1\(3),
	datab => \showkey|ALT_INV_temp_dig1\(1),
	datac => \showkey|ALT_INV_temp_dig1\(2),
	dataf => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	combout => \showkey|Mux13~0_combout\);

-- Location: LABCELL_X83_Y10_N24
\showkey|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux12~0_combout\ = ( \showkey|temp_dig1\(2) & ( (!\showkey|temp_dig1[0]~DUPLICATE_q\ & ((\showkey|temp_dig1\(1)) # (\showkey|temp_dig1\(3)))) # (\showkey|temp_dig1[0]~DUPLICATE_q\ & (!\showkey|temp_dig1\(3) $ (\showkey|temp_dig1\(1)))) ) ) # ( 
-- !\showkey|temp_dig1\(2) & ( (\showkey|temp_dig1[0]~DUPLICATE_q\ & (\showkey|temp_dig1\(3) & \showkey|temp_dig1\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	datac => \showkey|ALT_INV_temp_dig1\(3),
	datad => \showkey|ALT_INV_temp_dig1\(1),
	dataf => \showkey|ALT_INV_temp_dig1\(2),
	combout => \showkey|Mux12~0_combout\);

-- Location: MLABCELL_X84_Y10_N48
\showkey|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux11~0_combout\ = ( \showkey|temp_dig1\(1) & ( \showkey|temp_dig1\(2) & ( \showkey|temp_dig1\(3) ) ) ) # ( !\showkey|temp_dig1\(1) & ( \showkey|temp_dig1\(2) & ( (!\showkey|temp_dig1[0]~DUPLICATE_q\ & \showkey|temp_dig1\(3)) ) ) ) # ( 
-- \showkey|temp_dig1\(1) & ( !\showkey|temp_dig1\(2) & ( (!\showkey|temp_dig1[0]~DUPLICATE_q\ & !\showkey|temp_dig1\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	datac => \showkey|ALT_INV_temp_dig1\(3),
	datae => \showkey|ALT_INV_temp_dig1\(1),
	dataf => \showkey|ALT_INV_temp_dig1\(2),
	combout => \showkey|Mux11~0_combout\);

-- Location: MLABCELL_X84_Y10_N0
\showkey|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux10~0_combout\ = ( \showkey|temp_dig1\(2) & ( (!\showkey|temp_dig1\(1) & (!\showkey|temp_dig1\(3) & !\showkey|temp_dig1\(0))) # (\showkey|temp_dig1\(1) & ((\showkey|temp_dig1\(0)))) ) ) # ( !\showkey|temp_dig1\(2) & ( (!\showkey|temp_dig1\(3) & 
-- (!\showkey|temp_dig1\(1) & \showkey|temp_dig1\(0))) # (\showkey|temp_dig1\(3) & (\showkey|temp_dig1\(1) & !\showkey|temp_dig1\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig1\(3),
	datab => \showkey|ALT_INV_temp_dig1\(1),
	datac => \showkey|ALT_INV_temp_dig1\(0),
	dataf => \showkey|ALT_INV_temp_dig1\(2),
	combout => \showkey|Mux10~0_combout\);

-- Location: LABCELL_X83_Y10_N48
\showkey|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux9~0_combout\ = (!\showkey|temp_dig1\(1) & ((!\showkey|temp_dig1\(2) & ((\showkey|temp_dig1[0]~DUPLICATE_q\))) # (\showkey|temp_dig1\(2) & (!\showkey|temp_dig1\(3))))) # (\showkey|temp_dig1\(1) & (((!\showkey|temp_dig1\(3) & 
-- \showkey|temp_dig1[0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111000010000001111100001000000111110000100000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig1\(2),
	datab => \showkey|ALT_INV_temp_dig1\(1),
	datac => \showkey|ALT_INV_temp_dig1\(3),
	datad => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	combout => \showkey|Mux9~0_combout\);

-- Location: LABCELL_X83_Y10_N51
\showkey|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux8~0_combout\ = (!\showkey|temp_dig1\(2) & (!\showkey|temp_dig1\(3) & ((\showkey|temp_dig1[0]~DUPLICATE_q\) # (\showkey|temp_dig1\(1))))) # (\showkey|temp_dig1\(2) & (\showkey|temp_dig1[0]~DUPLICATE_q\ & (!\showkey|temp_dig1\(1) $ 
-- (!\showkey|temp_dig1\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110100001000001011010000100000101101000010000010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig1\(2),
	datab => \showkey|ALT_INV_temp_dig1\(1),
	datac => \showkey|ALT_INV_temp_dig1\(3),
	datad => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	combout => \showkey|Mux8~0_combout\);

-- Location: LABCELL_X83_Y10_N27
\showkey|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showkey|Mux7~0_combout\ = (!\showkey|temp_dig1[0]~DUPLICATE_q\ & ((!\showkey|temp_dig1\(2) $ (!\showkey|temp_dig1\(3))) # (\showkey|temp_dig1\(1)))) # (\showkey|temp_dig1[0]~DUPLICATE_q\ & ((!\showkey|temp_dig1\(2) $ (!\showkey|temp_dig1\(1))) # 
-- (\showkey|temp_dig1\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010111111010111101011111101011110101111110101111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \showkey|ALT_INV_temp_dig1\(2),
	datab => \showkey|ALT_INV_temp_dig1[0]~DUPLICATE_q\,
	datac => \showkey|ALT_INV_temp_dig1\(1),
	datad => \showkey|ALT_INV_temp_dig1\(3),
	combout => \showkey|Mux7~0_combout\);

-- Location: LABCELL_X83_Y10_N57
\constantkey|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux6~0_combout\ = ( \constantkey|temp_key\(1) & ( \constantkey|temp_key\(3) & ( (\constantkey|temp_key\(0) & !\constantkey|temp_key\(2)) ) ) ) # ( !\constantkey|temp_key\(1) & ( \constantkey|temp_key\(3) & ( (\constantkey|temp_key\(0) & 
-- \constantkey|temp_key\(2)) ) ) ) # ( !\constantkey|temp_key\(1) & ( !\constantkey|temp_key\(3) & ( !\constantkey|temp_key\(0) $ (!\constantkey|temp_key\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(0),
	datac => \constantkey|ALT_INV_temp_key\(2),
	datae => \constantkey|ALT_INV_temp_key\(1),
	dataf => \constantkey|ALT_INV_temp_key\(3),
	combout => \constantkey|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y10_N21
\constantkey|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux5~0_combout\ = ( \constantkey|temp_key\(3) & ( (!\constantkey|temp_key\(0) & ((\constantkey|temp_key\(2)))) # (\constantkey|temp_key\(0) & (\constantkey|temp_key\(1))) ) ) # ( !\constantkey|temp_key\(3) & ( (\constantkey|temp_key\(2) & 
-- (!\constantkey|temp_key\(1) $ (!\constantkey|temp_key\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(1),
	datab => \constantkey|ALT_INV_temp_key\(0),
	datac => \constantkey|ALT_INV_temp_key\(2),
	dataf => \constantkey|ALT_INV_temp_key\(3),
	combout => \constantkey|Mux5~0_combout\);

-- Location: LABCELL_X83_Y10_N33
\constantkey|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux4~0_combout\ = ( \constantkey|temp_key\(1) & ( (!\constantkey|temp_key\(3) & (!\constantkey|temp_key\(0) & !\constantkey|temp_key\(2))) # (\constantkey|temp_key\(3) & ((\constantkey|temp_key\(2)))) ) ) # ( !\constantkey|temp_key\(1) & ( 
-- (!\constantkey|temp_key\(0) & (\constantkey|temp_key\(3) & \constantkey|temp_key\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010100000111000001100000010000000101000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(0),
	datab => \constantkey|ALT_INV_temp_key\(3),
	datac => \constantkey|ALT_INV_temp_key\(2),
	datae => \constantkey|ALT_INV_temp_key\(1),
	combout => \constantkey|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y10_N9
\constantkey|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux3~0_combout\ = ( \constantkey|temp_key\(3) & ( (\constantkey|temp_key\(1) & (!\constantkey|temp_key\(2) $ (\constantkey|temp_key\(0)))) ) ) # ( !\constantkey|temp_key\(3) & ( (!\constantkey|temp_key\(1) & (!\constantkey|temp_key\(2) $ 
-- (!\constantkey|temp_key\(0)))) # (\constantkey|temp_key\(1) & (\constantkey|temp_key\(2) & \constantkey|temp_key\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(1),
	datac => \constantkey|ALT_INV_temp_key\(2),
	datad => \constantkey|ALT_INV_temp_key\(0),
	dataf => \constantkey|ALT_INV_temp_key\(3),
	combout => \constantkey|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y10_N6
\constantkey|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux2~0_combout\ = ( \constantkey|temp_key\(0) & ( (!\constantkey|temp_key\(3)) # ((!\constantkey|temp_key\(1) & !\constantkey|temp_key\(2))) ) ) # ( !\constantkey|temp_key\(0) & ( (!\constantkey|temp_key\(1) & (\constantkey|temp_key\(2) & 
-- !\constantkey|temp_key\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(1),
	datab => \constantkey|ALT_INV_temp_key\(2),
	datac => \constantkey|ALT_INV_temp_key\(3),
	dataf => \constantkey|ALT_INV_temp_key\(0),
	combout => \constantkey|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y10_N18
\constantkey|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux1~0_combout\ = ( \constantkey|temp_key\(2) & ( (\constantkey|temp_key\(0) & (!\constantkey|temp_key\(1) $ (!\constantkey|temp_key\(3)))) ) ) # ( !\constantkey|temp_key\(2) & ( (!\constantkey|temp_key\(3) & ((\constantkey|temp_key\(1)) # 
-- (\constantkey|temp_key\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \constantkey|ALT_INV_temp_key\(0),
	datac => \constantkey|ALT_INV_temp_key\(1),
	datad => \constantkey|ALT_INV_temp_key\(3),
	dataf => \constantkey|ALT_INV_temp_key\(2),
	combout => \constantkey|Mux1~0_combout\);

-- Location: LABCELL_X83_Y10_N0
\constantkey|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux0~0_combout\ = ( \constantkey|temp_key\(2) & ( (!\constantkey|temp_key\(3) & ((!\constantkey|temp_key\(0)) # (!\constantkey|temp_key\(1)))) # (\constantkey|temp_key\(3) & ((\constantkey|temp_key\(1)) # (\constantkey|temp_key\(0)))) ) ) # ( 
-- !\constantkey|temp_key\(2) & ( (\constantkey|temp_key\(1)) # (\constantkey|temp_key\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111001111111100111100111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \constantkey|ALT_INV_temp_key\(3),
	datac => \constantkey|ALT_INV_temp_key\(0),
	datad => \constantkey|ALT_INV_temp_key\(1),
	dataf => \constantkey|ALT_INV_temp_key\(2),
	combout => \constantkey|Mux0~0_combout\);

-- Location: LABCELL_X83_Y10_N45
\constantkey|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux13~0_combout\ = ( \constantkey|temp_key\(7) & ( (\constantkey|temp_key\(4) & (!\constantkey|temp_key\(5) $ (!\constantkey|temp_key\(6)))) ) ) # ( !\constantkey|temp_key\(7) & ( (!\constantkey|temp_key\(5) & (!\constantkey|temp_key\(4) $ 
-- (!\constantkey|temp_key\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000001010000101000001010101000000000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(5),
	datac => \constantkey|ALT_INV_temp_key\(4),
	datad => \constantkey|ALT_INV_temp_key\(6),
	datae => \constantkey|ALT_INV_temp_key\(7),
	combout => \constantkey|Mux13~0_combout\);

-- Location: LABCELL_X83_Y10_N6
\constantkey|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux12~0_combout\ = ( \constantkey|temp_key\(7) & ( (!\constantkey|temp_key\(4) & (\constantkey|temp_key\(6))) # (\constantkey|temp_key\(4) & ((\constantkey|temp_key\(5)))) ) ) # ( !\constantkey|temp_key\(7) & ( (\constantkey|temp_key\(6) & 
-- (!\constantkey|temp_key\(4) $ (!\constantkey|temp_key\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010001110100011100010100000101000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(6),
	datab => \constantkey|ALT_INV_temp_key\(4),
	datac => \constantkey|ALT_INV_temp_key\(5),
	datae => \constantkey|ALT_INV_temp_key\(7),
	combout => \constantkey|Mux12~0_combout\);

-- Location: LABCELL_X85_Y10_N6
\constantkey|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux11~0_combout\ = ( \constantkey|temp_key\(6) & ( (\constantkey|temp_key\(7) & ((!\constantkey|temp_key\(4)) # (\constantkey|temp_key\(5)))) ) ) # ( !\constantkey|temp_key\(6) & ( (!\constantkey|temp_key\(7) & (!\constantkey|temp_key\(4) & 
-- \constantkey|temp_key\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(7),
	datab => \constantkey|ALT_INV_temp_key\(4),
	datac => \constantkey|ALT_INV_temp_key\(5),
	dataf => \constantkey|ALT_INV_temp_key\(6),
	combout => \constantkey|Mux11~0_combout\);

-- Location: LABCELL_X85_Y10_N36
\constantkey|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux10~0_combout\ = ( \constantkey|temp_key\(6) & ( (!\constantkey|temp_key\(4) & (!\constantkey|temp_key\(7) & !\constantkey|temp_key\(5))) # (\constantkey|temp_key\(4) & ((\constantkey|temp_key\(5)))) ) ) # ( !\constantkey|temp_key\(6) & ( 
-- (!\constantkey|temp_key\(7) & (\constantkey|temp_key\(4) & !\constantkey|temp_key\(5))) # (\constantkey|temp_key\(7) & (!\constantkey|temp_key\(4) & \constantkey|temp_key\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(7),
	datab => \constantkey|ALT_INV_temp_key\(4),
	datac => \constantkey|ALT_INV_temp_key\(5),
	dataf => \constantkey|ALT_INV_temp_key\(6),
	combout => \constantkey|Mux10~0_combout\);

-- Location: LABCELL_X85_Y10_N39
\constantkey|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux9~0_combout\ = ( \constantkey|temp_key\(6) & ( (!\constantkey|temp_key\(7) & ((!\constantkey|temp_key\(5)) # (\constantkey|temp_key\(4)))) ) ) # ( !\constantkey|temp_key\(6) & ( (\constantkey|temp_key\(4) & ((!\constantkey|temp_key\(7)) # 
-- (!\constantkey|temp_key\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(7),
	datab => \constantkey|ALT_INV_temp_key\(4),
	datad => \constantkey|ALT_INV_temp_key\(5),
	dataf => \constantkey|ALT_INV_temp_key\(6),
	combout => \constantkey|Mux9~0_combout\);

-- Location: LABCELL_X83_Y10_N12
\constantkey|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux8~0_combout\ = ( \constantkey|temp_key\(7) & ( (\constantkey|temp_key\(6) & (\constantkey|temp_key\(4) & !\constantkey|temp_key\(5))) ) ) # ( !\constantkey|temp_key\(7) & ( (!\constantkey|temp_key\(6) & ((\constantkey|temp_key\(5)) # 
-- (\constantkey|temp_key\(4)))) # (\constantkey|temp_key\(6) & (\constantkey|temp_key\(4) & \constantkey|temp_key\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011000100000001000000101011001010110001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \constantkey|ALT_INV_temp_key\(6),
	datab => \constantkey|ALT_INV_temp_key\(4),
	datac => \constantkey|ALT_INV_temp_key\(5),
	datae => \constantkey|ALT_INV_temp_key\(7),
	combout => \constantkey|Mux8~0_combout\);

-- Location: MLABCELL_X84_Y10_N36
\constantkey|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \constantkey|Mux7~0_combout\ = ( \constantkey|temp_key\(7) & ( ((!\constantkey|temp_key\(6)) # (\constantkey|temp_key\(5))) # (\constantkey|temp_key\(4)) ) ) # ( !\constantkey|temp_key\(7) & ( (!\constantkey|temp_key\(6) & ((\constantkey|temp_key\(5)))) # 
-- (\constantkey|temp_key\(6) & ((!\constantkey|temp_key\(4)) # (!\constantkey|temp_key\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111100000011111111110011110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \constantkey|ALT_INV_temp_key\(4),
	datac => \constantkey|ALT_INV_temp_key\(6),
	datad => \constantkey|ALT_INV_temp_key\(5),
	dataf => \constantkey|ALT_INV_temp_key\(7),
	combout => \constantkey|Mux7~0_combout\);

-- Location: LABCELL_X50_Y21_N0
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


