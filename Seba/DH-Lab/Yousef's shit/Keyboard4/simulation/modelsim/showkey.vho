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

-- DATE "10/17/2022 10:31:28"

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

ENTITY 	showkey IS
    PORT (
	reset : IN std_logic;
	kbclock : IN std_logic;
	kbdata : IN std_logic;
	dig0 : OUT std_logic_vector(6 DOWNTO 0);
	dig1 : OUT std_logic_vector(6 DOWNTO 0);
	scancode : OUT std_logic_vector(7 DOWNTO 0);
	byte_read : OUT std_logic
	);
END showkey;

-- Design Ports Information
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
-- scancode[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[5]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[6]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_read	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kbclock	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kbdata	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF showkey IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_kbclock : std_logic;
SIGNAL ww_kbdata : std_logic;
SIGNAL ww_dig0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_scancode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_byte_read : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \kbclock~input_o\ : std_logic;
SIGNAL \kbclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \kbdata~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \key_array[1]~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \key_array[3]~2_combout\ : std_logic;
SIGNAL \key_array[2]~1_combout\ : std_logic;
SIGNAL \key_array[4]~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \key_array[7]~6_combout\ : std_logic;
SIGNAL \key_array[6]~5_combout\ : std_logic;
SIGNAL \key_array[8]~7_combout\ : std_logic;
SIGNAL \key_array[5]~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \temp_scancode[1]~feeder_combout\ : std_logic;
SIGNAL \temp_scancode[4]~feeder_combout\ : std_logic;
SIGNAL \temp_scancode[5]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \temp_byte_read~q\ : std_logic;
SIGNAL temp_dig0 : std_logic_vector(3 DOWNTO 0);
SIGNAL temp_dig1 : std_logic_vector(3 DOWNTO 0);
SIGNAL temp_scancode : std_logic_vector(7 DOWNTO 0);
SIGNAL key_array : std_logic_vector(10 DOWNTO 0);
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_kbclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_kbdata~input_o\ : std_logic;
SIGNAL ALT_INV_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_key_array : std_logic_vector(8 DOWNTO 1);
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL ALT_INV_temp_dig1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_temp_dig0 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_kbclock <= kbclock;
ww_kbdata <= kbdata;
dig0 <= ww_dig0;
dig1 <= ww_dig1;
scancode <= ww_scancode;
byte_read <= ww_byte_read;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \cnt[0]~DUPLICATE_q\;
\ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \cnt[1]~DUPLICATE_q\;
\ALT_INV_cnt[2]~DUPLICATE_q\ <= NOT \cnt[2]~DUPLICATE_q\;
\ALT_INV_cnt[3]~DUPLICATE_q\ <= NOT \cnt[3]~DUPLICATE_q\;
\ALT_INV_kbclock~inputCLKENA0_outclk\ <= NOT \kbclock~inputCLKENA0_outclk\;
\ALT_INV_kbdata~input_o\ <= NOT \kbdata~input_o\;
ALT_INV_cnt(0) <= NOT cnt(0);
ALT_INV_key_array(8) <= NOT key_array(8);
ALT_INV_key_array(7) <= NOT key_array(7);
ALT_INV_key_array(6) <= NOT key_array(6);
ALT_INV_key_array(5) <= NOT key_array(5);
ALT_INV_key_array(4) <= NOT key_array(4);
ALT_INV_key_array(3) <= NOT key_array(3);
ALT_INV_key_array(2) <= NOT key_array(2);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_key_array(1) <= NOT key_array(1);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
ALT_INV_temp_dig1(3) <= NOT temp_dig1(3);
ALT_INV_temp_dig1(2) <= NOT temp_dig1(2);
ALT_INV_temp_dig1(1) <= NOT temp_dig1(1);
ALT_INV_temp_dig1(0) <= NOT temp_dig1(0);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_temp_dig0(3) <= NOT temp_dig0(3);
ALT_INV_temp_dig0(2) <= NOT temp_dig0(2);
ALT_INV_temp_dig0(1) <= NOT temp_dig0(1);
ALT_INV_temp_dig0(0) <= NOT temp_dig0(0);

-- Location: IOOBUF_X89_Y8_N39
\dig0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
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
	i => \Mux5~0_combout\,
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
	i => \Mux4~0_combout\,
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
	i => \Mux3~0_combout\,
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
	i => \Mux2~0_combout\,
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
	i => \Mux1~0_combout\,
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
	i => \ALT_INV_Mux0~0_combout\,
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
	i => \Mux13~0_combout\,
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
	i => \Mux12~0_combout\,
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
	i => \Mux11~0_combout\,
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
	i => \Mux10~0_combout\,
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
	i => \Mux9~0_combout\,
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
	i => \Mux8~0_combout\,
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
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_dig1(6));

-- Location: IOOBUF_X89_Y11_N62
\scancode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(0),
	devoe => ww_devoe,
	o => ww_scancode(0));

-- Location: IOOBUF_X89_Y8_N5
\scancode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(1),
	devoe => ww_devoe,
	o => ww_scancode(1));

-- Location: IOOBUF_X89_Y8_N22
\scancode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(2),
	devoe => ww_devoe,
	o => ww_scancode(2));

-- Location: IOOBUF_X89_Y9_N56
\scancode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(3),
	devoe => ww_devoe,
	o => ww_scancode(3));

-- Location: IOOBUF_X89_Y9_N5
\scancode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(4),
	devoe => ww_devoe,
	o => ww_scancode(4));

-- Location: IOOBUF_X89_Y6_N5
\scancode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(5),
	devoe => ww_devoe,
	o => ww_scancode(5));

-- Location: IOOBUF_X89_Y9_N22
\scancode[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(6),
	devoe => ww_devoe,
	o => ww_scancode(6));

-- Location: IOOBUF_X89_Y9_N39
\scancode[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_scancode(7),
	devoe => ww_devoe,
	o => ww_scancode(7));

-- Location: IOOBUF_X52_Y0_N2
\byte_read~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_byte_read~q\,
	devoe => ww_devoe,
	o => ww_byte_read);

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

-- Location: CLKCTRL_G0
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

-- Location: FF_X88_Y9_N43
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: FF_X88_Y9_N8
\cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[3]~DUPLICATE_q\);

-- Location: FF_X88_Y9_N47
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LABCELL_X88_Y9_N45
\cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = ( \cnt[1]~DUPLICATE_q\ & ( (!\cnt[3]~DUPLICATE_q\ & (!\cnt[0]~DUPLICATE_q\ $ (!cnt(2)))) ) ) # ( !\cnt[1]~DUPLICATE_q\ & ( (!\cnt[3]~DUPLICATE_q\ & cnt(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt[3]~DUPLICATE_q\,
	datad => ALT_INV_cnt(2),
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \cnt~1_combout\);

-- Location: FF_X88_Y9_N46
\cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N6
\cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = ( \cnt[2]~DUPLICATE_q\ & ( (\cnt[0]~DUPLICATE_q\ & (cnt(1) & !cnt(3))) ) ) # ( !\cnt[2]~DUPLICATE_q\ & ( (!cnt(1) & cnt(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(1),
	datad => ALT_INV_cnt(3),
	dataf => \ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \cnt~0_combout\);

-- Location: FF_X88_Y9_N7
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LABCELL_X88_Y9_N42
\cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = ( \cnt[2]~DUPLICATE_q\ & ( (!cnt(3) & (!\cnt[0]~DUPLICATE_q\ $ (!cnt(1)))) ) ) # ( !\cnt[2]~DUPLICATE_q\ & ( (!\cnt[0]~DUPLICATE_q\ & (!cnt(3) & cnt(1))) # (\cnt[0]~DUPLICATE_q\ & ((!cnt(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100000010101011010000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(3),
	datad => ALT_INV_cnt(1),
	dataf => \ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \cnt~2_combout\);

-- Location: FF_X88_Y9_N44
\cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[1]~DUPLICATE_q\);

-- Location: FF_X87_Y9_N56
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: MLABCELL_X87_Y9_N54
\cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = ( cnt(2) & ( (!\cnt[3]~DUPLICATE_q\ & !cnt(0)) ) ) # ( !cnt(2) & ( (!cnt(0) & ((!\cnt[1]~DUPLICATE_q\) # (!\cnt[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt[3]~DUPLICATE_q\,
	datad => ALT_INV_cnt(0),
	dataf => ALT_INV_cnt(2),
	combout => \cnt~3_combout\);

-- Location: FF_X87_Y9_N55
\cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \cnt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y9_N12
\key_array[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[1]~0_combout\ = ( key_array(1) & ( \cnt[3]~DUPLICATE_q\ ) ) # ( key_array(1) & ( !\cnt[3]~DUPLICATE_q\ & ( ((!\cnt[0]~DUPLICATE_q\) # ((\cnt[1]~DUPLICATE_q\) # (cnt(2)))) # (\kbdata~input_o\) ) ) ) # ( !key_array(1) & ( !\cnt[3]~DUPLICATE_q\ & 
-- ( (\kbdata~input_o\ & (\cnt[0]~DUPLICATE_q\ & (!cnt(2) & !\cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(1),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \key_array[1]~0_combout\);

-- Location: FF_X87_Y9_N14
\key_array[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(1));

-- Location: LABCELL_X88_Y9_N24
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( cnt(2) & ( \cnt[1]~DUPLICATE_q\ & ( \cnt[3]~DUPLICATE_q\ ) ) ) # ( !cnt(2) & ( \cnt[1]~DUPLICATE_q\ & ( \cnt[3]~DUPLICATE_q\ ) ) ) # ( cnt(2) & ( !\cnt[1]~DUPLICATE_q\ & ( \cnt[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cnt[3]~DUPLICATE_q\,
	datae => ALT_INV_cnt(2),
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X88_Y9_N26
\temp_dig0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig0(0));

-- Location: MLABCELL_X87_Y9_N48
\key_array[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[3]~2_combout\ = ( key_array(3) & ( \cnt[3]~DUPLICATE_q\ ) ) # ( key_array(3) & ( !\cnt[3]~DUPLICATE_q\ & ( (!cnt(0)) # (((!\cnt[1]~DUPLICATE_q\) # (cnt(2))) # (\kbdata~input_o\)) ) ) ) # ( !key_array(3) & ( !\cnt[3]~DUPLICATE_q\ & ( (cnt(0) & 
-- (\kbdata~input_o\ & (!cnt(2) & \cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111111011111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(0),
	datab => \ALT_INV_kbdata~input_o\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(3),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \key_array[3]~2_combout\);

-- Location: FF_X87_Y9_N50
\key_array[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(3));

-- Location: FF_X88_Y9_N17
\temp_dig0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig0(2));

-- Location: MLABCELL_X87_Y9_N18
\key_array[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[2]~1_combout\ = ( key_array(2) & ( \cnt[3]~DUPLICATE_q\ ) ) # ( key_array(2) & ( !\cnt[3]~DUPLICATE_q\ & ( (((!\cnt[1]~DUPLICATE_q\) # (cnt(2))) # (\cnt[0]~DUPLICATE_q\)) # (\kbdata~input_o\) ) ) ) # ( !key_array(2) & ( !\cnt[3]~DUPLICATE_q\ & 
-- ( (\kbdata~input_o\ & (!\cnt[0]~DUPLICATE_q\ & (!cnt(2) & \cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111111110111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(2),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \key_array[2]~1_combout\);

-- Location: FF_X87_Y9_N20
\key_array[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(2));

-- Location: FF_X88_Y9_N14
\temp_dig0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig0(1));

-- Location: MLABCELL_X87_Y9_N30
\key_array[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[4]~3_combout\ = ( key_array(4) & ( cnt(2) & ( (((\cnt[1]~DUPLICATE_q\) # (\cnt[3]~DUPLICATE_q\)) # (\cnt[0]~DUPLICATE_q\)) # (\kbdata~input_o\) ) ) ) # ( !key_array(4) & ( cnt(2) & ( (\kbdata~input_o\ & (!\cnt[0]~DUPLICATE_q\ & 
-- (!\cnt[3]~DUPLICATE_q\ & !\cnt[1]~DUPLICATE_q\))) ) ) ) # ( key_array(4) & ( !cnt(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt[3]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(4),
	dataf => ALT_INV_cnt(2),
	combout => \key_array[4]~3_combout\);

-- Location: FF_X87_Y9_N32
\key_array[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[4]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(4));

-- Location: FF_X88_Y9_N2
\temp_dig0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig0(3));

-- Location: LABCELL_X88_Y9_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!temp_dig0(2) & (temp_dig0(0) & (!temp_dig0(1) $ (temp_dig0(3))))) # (temp_dig0(2) & (!temp_dig0(1) & (!temp_dig0(0) $ (temp_dig0(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010100011000000001010001100000000101000110000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(0),
	datab => ALT_INV_temp_dig0(2),
	datac => ALT_INV_temp_dig0(1),
	datad => ALT_INV_temp_dig0(3),
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X87_Y9_N3
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( temp_dig0(2) & ( temp_dig0(1) & ( (!temp_dig0(0)) # (temp_dig0(3)) ) ) ) # ( !temp_dig0(2) & ( temp_dig0(1) & ( (temp_dig0(3) & temp_dig0(0)) ) ) ) # ( temp_dig0(2) & ( !temp_dig0(1) & ( !temp_dig0(3) $ (!temp_dig0(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(3),
	datac => ALT_INV_temp_dig0(0),
	datae => ALT_INV_temp_dig0(2),
	dataf => ALT_INV_temp_dig0(1),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y9_N48
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( temp_dig0(2) & ( (temp_dig0(3) & ((!temp_dig0(0)) # (temp_dig0(1)))) ) ) # ( !temp_dig0(2) & ( (!temp_dig0(0) & (temp_dig0(1) & !temp_dig0(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(0),
	datab => ALT_INV_temp_dig0(1),
	datac => ALT_INV_temp_dig0(3),
	dataf => ALT_INV_temp_dig0(2),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y9_N57
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( temp_dig0(2) & ( (!temp_dig0(1) & (!temp_dig0(3) & !temp_dig0(0))) # (temp_dig0(1) & ((temp_dig0(0)))) ) ) # ( !temp_dig0(2) & ( (!temp_dig0(3) & (!temp_dig0(1) & temp_dig0(0))) # (temp_dig0(3) & (temp_dig0(1) & !temp_dig0(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(3),
	datac => ALT_INV_temp_dig0(1),
	datad => ALT_INV_temp_dig0(0),
	dataf => ALT_INV_temp_dig0(2),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y9_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( temp_dig0(2) & ( (!temp_dig0(3) & ((!temp_dig0(1)) # (temp_dig0(0)))) ) ) # ( !temp_dig0(2) & ( (temp_dig0(0) & ((!temp_dig0(3)) # (!temp_dig0(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(3),
	datab => ALT_INV_temp_dig0(0),
	datad => ALT_INV_temp_dig0(1),
	dataf => ALT_INV_temp_dig0(2),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y9_N15
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!temp_dig0(0) & (!temp_dig0(3) & (temp_dig0(1) & !temp_dig0(2)))) # (temp_dig0(0) & (!temp_dig0(3) $ (((!temp_dig0(1) & temp_dig0(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010010001010100001001000101010000100100010101000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(3),
	datab => ALT_INV_temp_dig0(0),
	datac => ALT_INV_temp_dig0(1),
	datad => ALT_INV_temp_dig0(2),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y9_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( temp_dig0(1) & ( (!temp_dig0(0)) # ((!temp_dig0(2)) # (temp_dig0(3))) ) ) # ( !temp_dig0(1) & ( (!temp_dig0(2) & ((temp_dig0(3)))) # (temp_dig0(2) & ((!temp_dig0(3)) # (temp_dig0(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111011101001100111101110111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig0(0),
	datab => ALT_INV_temp_dig0(2),
	datad => ALT_INV_temp_dig0(3),
	dataf => ALT_INV_temp_dig0(1),
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X87_Y9_N36
\key_array[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[7]~6_combout\ = ( key_array(7) & ( \cnt[3]~DUPLICATE_q\ ) ) # ( key_array(7) & ( !\cnt[3]~DUPLICATE_q\ & ( ((!\cnt[0]~DUPLICATE_q\) # ((!cnt(2)) # (!\cnt[1]~DUPLICATE_q\))) # (\kbdata~input_o\) ) ) ) # ( !key_array(7) & ( !\cnt[3]~DUPLICATE_q\ 
-- & ( (\kbdata~input_o\ & (\cnt[0]~DUPLICATE_q\ & (cnt(2) & \cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(7),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \key_array[7]~6_combout\);

-- Location: FF_X87_Y9_N38
\key_array[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[7]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(7));

-- Location: FF_X88_Y9_N56
\temp_dig1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig1(2));

-- Location: MLABCELL_X87_Y9_N6
\key_array[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[6]~5_combout\ = ( key_array(6) & ( \cnt[3]~DUPLICATE_q\ ) ) # ( key_array(6) & ( !\cnt[3]~DUPLICATE_q\ & ( (((!cnt(2)) # (!\cnt[1]~DUPLICATE_q\)) # (\cnt[0]~DUPLICATE_q\)) # (\kbdata~input_o\) ) ) ) # ( !key_array(6) & ( !\cnt[3]~DUPLICATE_q\ & 
-- ( (\kbdata~input_o\ & (!\cnt[0]~DUPLICATE_q\ & (cnt(2) & \cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111111011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(6),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \key_array[6]~5_combout\);

-- Location: FF_X87_Y9_N8
\key_array[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[6]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(6));

-- Location: FF_X88_Y9_N32
\temp_dig1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig1(1));

-- Location: MLABCELL_X87_Y9_N42
\key_array[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[8]~7_combout\ = ( key_array(8) & ( cnt(2) ) ) # ( key_array(8) & ( !cnt(2) & ( (((!\cnt[3]~DUPLICATE_q\) # (\cnt[1]~DUPLICATE_q\)) # (\cnt[0]~DUPLICATE_q\)) # (\kbdata~input_o\) ) ) ) # ( !key_array(8) & ( !cnt(2) & ( (\kbdata~input_o\ & 
-- (!\cnt[0]~DUPLICATE_q\ & (\cnt[3]~DUPLICATE_q\ & !\cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111101111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt[3]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(8),
	dataf => ALT_INV_cnt(2),
	combout => \key_array[8]~7_combout\);

-- Location: FF_X87_Y9_N44
\key_array[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[8]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(8));

-- Location: FF_X88_Y9_N38
\temp_dig1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(8),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig1(3));

-- Location: MLABCELL_X87_Y9_N24
\key_array[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_array[5]~4_combout\ = ( key_array(5) & ( \cnt[3]~DUPLICATE_q\ ) ) # ( key_array(5) & ( !\cnt[3]~DUPLICATE_q\ & ( ((!\cnt[0]~DUPLICATE_q\) # ((!cnt(2)) # (\cnt[1]~DUPLICATE_q\))) # (\kbdata~input_o\) ) ) ) # ( !key_array(5) & ( !\cnt[3]~DUPLICATE_q\ & 
-- ( (\kbdata~input_o\ & (\cnt[0]~DUPLICATE_q\ & (cnt(2) & !\cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111011111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kbdata~input_o\,
	datab => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt(2),
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_key_array(5),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \key_array[5]~4_combout\);

-- Location: FF_X87_Y9_N26
\key_array[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \key_array[5]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_array(5));

-- Location: FF_X88_Y9_N41
\temp_dig1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_dig1(0));

-- Location: LABCELL_X88_Y9_N36
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( temp_dig1(0) & ( (!temp_dig1(2) & (!temp_dig1(1) $ (temp_dig1(3)))) # (temp_dig1(2) & (!temp_dig1(1) & temp_dig1(3))) ) ) # ( !temp_dig1(0) & ( (temp_dig1(2) & (!temp_dig1(1) & !temp_dig1(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000010001000011001101000100001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig1(2),
	datab => ALT_INV_temp_dig1(1),
	datad => ALT_INV_temp_dig1(3),
	dataf => ALT_INV_temp_dig1(0),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X88_Y9_N9
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( temp_dig1(1) & ( (!temp_dig1(0) & ((temp_dig1(2)))) # (temp_dig1(0) & (temp_dig1(3))) ) ) # ( !temp_dig1(1) & ( (temp_dig1(2) & (!temp_dig1(3) $ (!temp_dig1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig1(3),
	datac => ALT_INV_temp_dig1(0),
	datad => ALT_INV_temp_dig1(2),
	dataf => ALT_INV_temp_dig1(1),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X88_Y9_N39
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( temp_dig1(3) & ( (temp_dig1(2) & ((!temp_dig1(0)) # (temp_dig1(1)))) ) ) # ( !temp_dig1(3) & ( (!temp_dig1(2) & (temp_dig1(1) & !temp_dig1(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig1(2),
	datab => ALT_INV_temp_dig1(1),
	datad => ALT_INV_temp_dig1(0),
	dataf => ALT_INV_temp_dig1(3),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X88_Y9_N33
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!temp_dig1(1) & (!temp_dig1(3) & (!temp_dig1(0) $ (!temp_dig1(2))))) # (temp_dig1(1) & ((!temp_dig1(0) & (temp_dig1(3) & !temp_dig1(2))) # (temp_dig1(0) & ((temp_dig1(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig1(3),
	datab => ALT_INV_temp_dig1(0),
	datac => ALT_INV_temp_dig1(1),
	datad => ALT_INV_temp_dig1(2),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( temp_dig1(0) & ( (!temp_dig1(3)) # ((!temp_dig1(2) & !temp_dig1(1))) ) ) # ( !temp_dig1(0) & ( (!temp_dig1(3) & (temp_dig1(2) & !temp_dig1(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig1(3),
	datac => ALT_INV_temp_dig1(2),
	datad => ALT_INV_temp_dig1(1),
	dataf => ALT_INV_temp_dig1(0),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X88_Y9_N54
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( temp_dig1(0) & ( !temp_dig1(3) $ (((!temp_dig1(1) & temp_dig1(2)))) ) ) # ( !temp_dig1(0) & ( (temp_dig1(1) & (!temp_dig1(3) & !temp_dig1(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_dig1(1),
	datac => ALT_INV_temp_dig1(3),
	datad => ALT_INV_temp_dig1(2),
	dataf => ALT_INV_temp_dig1(0),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X85_Y9_N3
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( temp_dig1(1) & ( ((!temp_dig1(2)) # (!temp_dig1(0))) # (temp_dig1(3)) ) ) # ( !temp_dig1(1) & ( (!temp_dig1(3) & (temp_dig1(2))) # (temp_dig1(3) & ((!temp_dig1(2)) # (temp_dig1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011111010110100101111111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_dig1(3),
	datac => ALT_INV_temp_dig1(2),
	datad => ALT_INV_temp_dig1(0),
	dataf => ALT_INV_temp_dig1(1),
	combout => \Mux7~0_combout\);

-- Location: FF_X88_Y9_N53
\temp_scancode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(0));

-- Location: LABCELL_X88_Y9_N21
\temp_scancode[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_scancode[1]~feeder_combout\ = ( key_array(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_key_array(2),
	combout => \temp_scancode[1]~feeder_combout\);

-- Location: FF_X88_Y9_N22
\temp_scancode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \temp_scancode[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(1));

-- Location: FF_X88_Y9_N49
\temp_scancode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(2));

-- Location: FF_X88_Y9_N28
\temp_scancode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(3));

-- Location: LABCELL_X88_Y9_N51
\temp_scancode[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_scancode[4]~feeder_combout\ = ( key_array(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_key_array(5),
	combout => \temp_scancode[4]~feeder_combout\);

-- Location: FF_X88_Y9_N52
\temp_scancode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \temp_scancode[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(4));

-- Location: LABCELL_X88_Y9_N18
\temp_scancode[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_scancode[5]~feeder_combout\ = ( key_array(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_key_array(6),
	combout => \temp_scancode[5]~feeder_combout\);

-- Location: FF_X88_Y9_N19
\temp_scancode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \temp_scancode[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(5));

-- Location: FF_X88_Y9_N20
\temp_scancode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(6));

-- Location: FF_X88_Y9_N23
\temp_scancode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	asdata => key_array(8),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_scancode(7));

-- Location: MLABCELL_X87_Y9_N57
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \cnt[3]~DUPLICATE_q\ & ( (!cnt(2) & (\cnt[1]~DUPLICATE_q\ & !cnt(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => ALT_INV_cnt(0),
	dataf => \ALT_INV_cnt[3]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X87_Y9_N58
temp_byte_read : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputCLKENA0_outclk\,
	d => \Equal0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_byte_read~q\);

-- Location: LABCELL_X31_Y41_N3
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


