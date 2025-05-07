-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "05/07/2025 09:56:59"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	CLOCK_50_B6A : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \divider_inst|Add0~81_sumout\ : std_logic;
SIGNAL \divider_inst|counter[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \divider_inst|Add0~82\ : std_logic;
SIGNAL \divider_inst|Add0~77_sumout\ : std_logic;
SIGNAL \divider_inst|counter[1]~feeder_combout\ : std_logic;
SIGNAL \divider_inst|Add0~78\ : std_logic;
SIGNAL \divider_inst|Add0~73_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~74\ : std_logic;
SIGNAL \divider_inst|Add0~69_sumout\ : std_logic;
SIGNAL \divider_inst|counter[3]~feeder_combout\ : std_logic;
SIGNAL \divider_inst|Add0~70\ : std_logic;
SIGNAL \divider_inst|Add0~65_sumout\ : std_logic;
SIGNAL \divider_inst|counter[4]~feeder_combout\ : std_logic;
SIGNAL \divider_inst|Add0~66\ : std_logic;
SIGNAL \divider_inst|Add0~61_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~62\ : std_logic;
SIGNAL \divider_inst|Add0~57_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~58\ : std_logic;
SIGNAL \divider_inst|Add0~53_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~54\ : std_logic;
SIGNAL \divider_inst|Add0~49_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~50\ : std_logic;
SIGNAL \divider_inst|Add0~45_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~46\ : std_logic;
SIGNAL \divider_inst|Add0~41_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~42\ : std_logic;
SIGNAL \divider_inst|Add0~37_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~38\ : std_logic;
SIGNAL \divider_inst|Add0~33_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~34\ : std_logic;
SIGNAL \divider_inst|Add0~29_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~30\ : std_logic;
SIGNAL \divider_inst|Add0~25_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~26\ : std_logic;
SIGNAL \divider_inst|Add0~21_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~22\ : std_logic;
SIGNAL \divider_inst|Add0~17_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~18\ : std_logic;
SIGNAL \divider_inst|Add0~13_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~14\ : std_logic;
SIGNAL \divider_inst|Add0~9_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~10\ : std_logic;
SIGNAL \divider_inst|Add0~5_sumout\ : std_logic;
SIGNAL \divider_inst|Add0~6\ : std_logic;
SIGNAL \divider_inst|Add0~1_sumout\ : std_logic;
SIGNAL \chenillard_inst|state~0_combout\ : std_logic;
SIGNAL \chenillard_inst|state~3_combout\ : std_logic;
SIGNAL \chenillard_inst|state~1_combout\ : std_logic;
SIGNAL \chenillard_inst|state~2_combout\ : std_logic;
SIGNAL \chenillard_inst|state[2]~feeder_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux8~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Equal0~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux6~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux5~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux4~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux3~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux2~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux1~0_combout\ : std_logic;
SIGNAL \chenillard_inst|Mux0~0_combout\ : std_logic;
SIGNAL \divider_inst|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \chenillard_inst|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \chenillard_inst|ALT_INV_state~2_combout\ : std_logic;
SIGNAL \chenillard_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \chenillard_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \chenillard_inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \chenillard_inst|ALT_INV_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider_inst|ALT_INV_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \divider_inst|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \divider_inst|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \divider_inst|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \divider_inst|ALT_INV_Add0~65_sumout\ : std_logic;

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\chenillard_inst|ALT_INV_state~2_combout\ <= NOT \chenillard_inst|state~2_combout\;
\chenillard_inst|ALT_INV_Mux5~0_combout\ <= NOT \chenillard_inst|Mux5~0_combout\;
\chenillard_inst|ALT_INV_Mux6~0_combout\ <= NOT \chenillard_inst|Mux6~0_combout\;
\chenillard_inst|ALT_INV_Mux8~0_combout\ <= NOT \chenillard_inst|Mux8~0_combout\;
\chenillard_inst|ALT_INV_state\(3) <= NOT \chenillard_inst|state\(3);
\chenillard_inst|ALT_INV_state\(2) <= NOT \chenillard_inst|state\(2);
\chenillard_inst|ALT_INV_state\(1) <= NOT \chenillard_inst|state\(1);
\chenillard_inst|ALT_INV_state\(0) <= NOT \chenillard_inst|state\(0);
\divider_inst|ALT_INV_counter\(0) <= NOT \divider_inst|counter\(0);
\divider_inst|ALT_INV_Add0~81_sumout\ <= NOT \divider_inst|Add0~81_sumout\;
\divider_inst|ALT_INV_counter\(1) <= NOT \divider_inst|counter\(1);
\divider_inst|ALT_INV_Add0~77_sumout\ <= NOT \divider_inst|Add0~77_sumout\;
\divider_inst|ALT_INV_counter\(2) <= NOT \divider_inst|counter\(2);
\divider_inst|ALT_INV_counter\(3) <= NOT \divider_inst|counter\(3);
\divider_inst|ALT_INV_Add0~69_sumout\ <= NOT \divider_inst|Add0~69_sumout\;
\divider_inst|ALT_INV_counter\(4) <= NOT \divider_inst|counter\(4);
\divider_inst|ALT_INV_Add0~65_sumout\ <= NOT \divider_inst|Add0~65_sumout\;
\divider_inst|ALT_INV_counter\(5) <= NOT \divider_inst|counter\(5);
\divider_inst|ALT_INV_counter\(6) <= NOT \divider_inst|counter\(6);
\divider_inst|ALT_INV_counter\(7) <= NOT \divider_inst|counter\(7);
\divider_inst|ALT_INV_counter\(8) <= NOT \divider_inst|counter\(8);
\divider_inst|ALT_INV_counter\(9) <= NOT \divider_inst|counter\(9);
\divider_inst|ALT_INV_counter\(10) <= NOT \divider_inst|counter\(10);
\divider_inst|ALT_INV_counter\(11) <= NOT \divider_inst|counter\(11);
\divider_inst|ALT_INV_counter\(12) <= NOT \divider_inst|counter\(12);
\divider_inst|ALT_INV_counter\(13) <= NOT \divider_inst|counter\(13);
\divider_inst|ALT_INV_counter\(14) <= NOT \divider_inst|counter\(14);
\divider_inst|ALT_INV_counter\(15) <= NOT \divider_inst|counter\(15);
\divider_inst|ALT_INV_counter\(16) <= NOT \divider_inst|counter\(16);
\divider_inst|ALT_INV_counter\(17) <= NOT \divider_inst|counter\(17);
\divider_inst|ALT_INV_counter\(18) <= NOT \divider_inst|counter\(18);
\divider_inst|ALT_INV_counter\(19) <= NOT \divider_inst|counter\(19);
\divider_inst|ALT_INV_counter\(20) <= NOT \divider_inst|counter\(20);

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|state\(2),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard_inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X68_Y32_N44
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50_B6A~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B6A~input_o\,
	outclk => \CLOCK_50_B6A~inputCLKENA0_outclk\);

-- Location: LABCELL_X65_Y48_N30
\divider_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~81_sumout\ = SUM(( \divider_inst|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \divider_inst|Add0~82\ = CARRY(( \divider_inst|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(0),
	cin => GND,
	sumout => \divider_inst|Add0~81_sumout\,
	cout => \divider_inst|Add0~82\);

-- Location: LABCELL_X65_Y48_N0
\divider_inst|counter[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|counter[0]~feeder_combout\ = ( \divider_inst|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \divider_inst|ALT_INV_Add0~81_sumout\,
	combout => \divider_inst|counter[0]~feeder_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X65_Y48_N2
\divider_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|counter[0]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(0));

-- Location: LABCELL_X65_Y48_N33
\divider_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~77_sumout\ = SUM(( \divider_inst|counter\(1) ) + ( GND ) + ( \divider_inst|Add0~82\ ))
-- \divider_inst|Add0~78\ = CARRY(( \divider_inst|counter\(1) ) + ( GND ) + ( \divider_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(1),
	cin => \divider_inst|Add0~82\,
	sumout => \divider_inst|Add0~77_sumout\,
	cout => \divider_inst|Add0~78\);

-- Location: LABCELL_X65_Y48_N6
\divider_inst|counter[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|counter[1]~feeder_combout\ = ( \divider_inst|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \divider_inst|ALT_INV_Add0~77_sumout\,
	combout => \divider_inst|counter[1]~feeder_combout\);

-- Location: FF_X65_Y48_N8
\divider_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|counter[1]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(1));

-- Location: LABCELL_X65_Y48_N36
\divider_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~73_sumout\ = SUM(( \divider_inst|counter\(2) ) + ( GND ) + ( \divider_inst|Add0~78\ ))
-- \divider_inst|Add0~74\ = CARRY(( \divider_inst|counter\(2) ) + ( GND ) + ( \divider_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(2),
	cin => \divider_inst|Add0~78\,
	sumout => \divider_inst|Add0~73_sumout\,
	cout => \divider_inst|Add0~74\);

-- Location: FF_X65_Y48_N23
\divider_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	asdata => \divider_inst|Add0~73_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(2));

-- Location: LABCELL_X65_Y48_N39
\divider_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~69_sumout\ = SUM(( \divider_inst|counter\(3) ) + ( GND ) + ( \divider_inst|Add0~74\ ))
-- \divider_inst|Add0~70\ = CARRY(( \divider_inst|counter\(3) ) + ( GND ) + ( \divider_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(3),
	cin => \divider_inst|Add0~74\,
	sumout => \divider_inst|Add0~69_sumout\,
	cout => \divider_inst|Add0~70\);

-- Location: LABCELL_X65_Y48_N15
\divider_inst|counter[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|counter[3]~feeder_combout\ = ( \divider_inst|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \divider_inst|ALT_INV_Add0~69_sumout\,
	combout => \divider_inst|counter[3]~feeder_combout\);

-- Location: FF_X65_Y48_N17
\divider_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|counter[3]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(3));

-- Location: LABCELL_X65_Y48_N42
\divider_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~65_sumout\ = SUM(( \divider_inst|counter\(4) ) + ( GND ) + ( \divider_inst|Add0~70\ ))
-- \divider_inst|Add0~66\ = CARRY(( \divider_inst|counter\(4) ) + ( GND ) + ( \divider_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(4),
	cin => \divider_inst|Add0~70\,
	sumout => \divider_inst|Add0~65_sumout\,
	cout => \divider_inst|Add0~66\);

-- Location: LABCELL_X65_Y48_N24
\divider_inst|counter[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|counter[4]~feeder_combout\ = ( \divider_inst|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \divider_inst|ALT_INV_Add0~65_sumout\,
	combout => \divider_inst|counter[4]~feeder_combout\);

-- Location: FF_X65_Y48_N26
\divider_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|counter[4]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(4));

-- Location: LABCELL_X65_Y48_N45
\divider_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~61_sumout\ = SUM(( \divider_inst|counter\(5) ) + ( GND ) + ( \divider_inst|Add0~66\ ))
-- \divider_inst|Add0~62\ = CARRY(( \divider_inst|counter\(5) ) + ( GND ) + ( \divider_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(5),
	cin => \divider_inst|Add0~66\,
	sumout => \divider_inst|Add0~61_sumout\,
	cout => \divider_inst|Add0~62\);

-- Location: FF_X65_Y48_N47
\divider_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~61_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(5));

-- Location: LABCELL_X65_Y48_N48
\divider_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~57_sumout\ = SUM(( \divider_inst|counter\(6) ) + ( GND ) + ( \divider_inst|Add0~62\ ))
-- \divider_inst|Add0~58\ = CARRY(( \divider_inst|counter\(6) ) + ( GND ) + ( \divider_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(6),
	cin => \divider_inst|Add0~62\,
	sumout => \divider_inst|Add0~57_sumout\,
	cout => \divider_inst|Add0~58\);

-- Location: FF_X65_Y48_N50
\divider_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~57_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(6));

-- Location: LABCELL_X65_Y48_N51
\divider_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~53_sumout\ = SUM(( \divider_inst|counter\(7) ) + ( GND ) + ( \divider_inst|Add0~58\ ))
-- \divider_inst|Add0~54\ = CARRY(( \divider_inst|counter\(7) ) + ( GND ) + ( \divider_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(7),
	cin => \divider_inst|Add0~58\,
	sumout => \divider_inst|Add0~53_sumout\,
	cout => \divider_inst|Add0~54\);

-- Location: FF_X65_Y48_N52
\divider_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~53_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(7));

-- Location: LABCELL_X65_Y48_N54
\divider_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~49_sumout\ = SUM(( \divider_inst|counter\(8) ) + ( GND ) + ( \divider_inst|Add0~54\ ))
-- \divider_inst|Add0~50\ = CARRY(( \divider_inst|counter\(8) ) + ( GND ) + ( \divider_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(8),
	cin => \divider_inst|Add0~54\,
	sumout => \divider_inst|Add0~49_sumout\,
	cout => \divider_inst|Add0~50\);

-- Location: FF_X65_Y48_N56
\divider_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~49_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(8));

-- Location: LABCELL_X65_Y48_N57
\divider_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~45_sumout\ = SUM(( \divider_inst|counter\(9) ) + ( GND ) + ( \divider_inst|Add0~50\ ))
-- \divider_inst|Add0~46\ = CARRY(( \divider_inst|counter\(9) ) + ( GND ) + ( \divider_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(9),
	cin => \divider_inst|Add0~50\,
	sumout => \divider_inst|Add0~45_sumout\,
	cout => \divider_inst|Add0~46\);

-- Location: FF_X65_Y48_N59
\divider_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~45_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(9));

-- Location: LABCELL_X65_Y47_N0
\divider_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~41_sumout\ = SUM(( \divider_inst|counter\(10) ) + ( GND ) + ( \divider_inst|Add0~46\ ))
-- \divider_inst|Add0~42\ = CARRY(( \divider_inst|counter\(10) ) + ( GND ) + ( \divider_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(10),
	cin => \divider_inst|Add0~46\,
	sumout => \divider_inst|Add0~41_sumout\,
	cout => \divider_inst|Add0~42\);

-- Location: FF_X65_Y47_N2
\divider_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~41_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(10));

-- Location: LABCELL_X65_Y47_N3
\divider_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~37_sumout\ = SUM(( \divider_inst|counter\(11) ) + ( GND ) + ( \divider_inst|Add0~42\ ))
-- \divider_inst|Add0~38\ = CARRY(( \divider_inst|counter\(11) ) + ( GND ) + ( \divider_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(11),
	cin => \divider_inst|Add0~42\,
	sumout => \divider_inst|Add0~37_sumout\,
	cout => \divider_inst|Add0~38\);

-- Location: FF_X65_Y47_N5
\divider_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~37_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(11));

-- Location: LABCELL_X65_Y47_N6
\divider_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~33_sumout\ = SUM(( \divider_inst|counter\(12) ) + ( GND ) + ( \divider_inst|Add0~38\ ))
-- \divider_inst|Add0~34\ = CARRY(( \divider_inst|counter\(12) ) + ( GND ) + ( \divider_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(12),
	cin => \divider_inst|Add0~38\,
	sumout => \divider_inst|Add0~33_sumout\,
	cout => \divider_inst|Add0~34\);

-- Location: FF_X65_Y47_N7
\divider_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~33_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(12));

-- Location: LABCELL_X65_Y47_N9
\divider_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~29_sumout\ = SUM(( \divider_inst|counter\(13) ) + ( GND ) + ( \divider_inst|Add0~34\ ))
-- \divider_inst|Add0~30\ = CARRY(( \divider_inst|counter\(13) ) + ( GND ) + ( \divider_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(13),
	cin => \divider_inst|Add0~34\,
	sumout => \divider_inst|Add0~29_sumout\,
	cout => \divider_inst|Add0~30\);

-- Location: FF_X65_Y47_N11
\divider_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~29_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(13));

-- Location: LABCELL_X65_Y47_N12
\divider_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~25_sumout\ = SUM(( \divider_inst|counter\(14) ) + ( GND ) + ( \divider_inst|Add0~30\ ))
-- \divider_inst|Add0~26\ = CARRY(( \divider_inst|counter\(14) ) + ( GND ) + ( \divider_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|ALT_INV_counter\(14),
	cin => \divider_inst|Add0~30\,
	sumout => \divider_inst|Add0~25_sumout\,
	cout => \divider_inst|Add0~26\);

-- Location: FF_X65_Y47_N14
\divider_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~25_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(14));

-- Location: LABCELL_X65_Y47_N15
\divider_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~21_sumout\ = SUM(( \divider_inst|counter\(15) ) + ( GND ) + ( \divider_inst|Add0~26\ ))
-- \divider_inst|Add0~22\ = CARRY(( \divider_inst|counter\(15) ) + ( GND ) + ( \divider_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(15),
	cin => \divider_inst|Add0~26\,
	sumout => \divider_inst|Add0~21_sumout\,
	cout => \divider_inst|Add0~22\);

-- Location: FF_X65_Y47_N16
\divider_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~21_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(15));

-- Location: LABCELL_X65_Y47_N18
\divider_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~17_sumout\ = SUM(( \divider_inst|counter\(16) ) + ( GND ) + ( \divider_inst|Add0~22\ ))
-- \divider_inst|Add0~18\ = CARRY(( \divider_inst|counter\(16) ) + ( GND ) + ( \divider_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|ALT_INV_counter\(16),
	cin => \divider_inst|Add0~22\,
	sumout => \divider_inst|Add0~17_sumout\,
	cout => \divider_inst|Add0~18\);

-- Location: FF_X65_Y47_N19
\divider_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~17_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(16));

-- Location: LABCELL_X65_Y47_N21
\divider_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~13_sumout\ = SUM(( \divider_inst|counter\(17) ) + ( GND ) + ( \divider_inst|Add0~18\ ))
-- \divider_inst|Add0~14\ = CARRY(( \divider_inst|counter\(17) ) + ( GND ) + ( \divider_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|ALT_INV_counter\(17),
	cin => \divider_inst|Add0~18\,
	sumout => \divider_inst|Add0~13_sumout\,
	cout => \divider_inst|Add0~14\);

-- Location: FF_X65_Y47_N23
\divider_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~13_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(17));

-- Location: LABCELL_X65_Y47_N24
\divider_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~9_sumout\ = SUM(( \divider_inst|counter\(18) ) + ( GND ) + ( \divider_inst|Add0~14\ ))
-- \divider_inst|Add0~10\ = CARRY(( \divider_inst|counter\(18) ) + ( GND ) + ( \divider_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|ALT_INV_counter\(18),
	cin => \divider_inst|Add0~14\,
	sumout => \divider_inst|Add0~9_sumout\,
	cout => \divider_inst|Add0~10\);

-- Location: FF_X65_Y47_N25
\divider_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~9_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(18));

-- Location: LABCELL_X65_Y47_N27
\divider_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~5_sumout\ = SUM(( \divider_inst|counter\(19) ) + ( GND ) + ( \divider_inst|Add0~10\ ))
-- \divider_inst|Add0~6\ = CARRY(( \divider_inst|counter\(19) ) + ( GND ) + ( \divider_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|ALT_INV_counter\(19),
	cin => \divider_inst|Add0~10\,
	sumout => \divider_inst|Add0~5_sumout\,
	cout => \divider_inst|Add0~6\);

-- Location: FF_X65_Y47_N28
\divider_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider_inst|Add0~5_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(19));

-- Location: LABCELL_X65_Y47_N30
\divider_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider_inst|Add0~1_sumout\ = SUM(( \divider_inst|counter\(20) ) + ( GND ) + ( \divider_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|ALT_INV_counter\(20),
	cin => \divider_inst|Add0~6\,
	sumout => \divider_inst|Add0~1_sumout\);

-- Location: FF_X65_Y47_N32
\divider_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~input_o\,
	d => \divider_inst|Add0~1_sumout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|counter\(20));

-- Location: LABCELL_X64_Y47_N36
\chenillard_inst|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|state~0_combout\ = (!\chenillard_inst|state\(0) & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chenillard_inst|ALT_INV_state\(0),
	datad => \ALT_INV_KEY[0]~input_o\,
	combout => \chenillard_inst|state~0_combout\);

-- Location: FF_X64_Y47_N50
\chenillard_inst|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider_inst|counter\(20),
	asdata => \chenillard_inst|state~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard_inst|state\(0));

-- Location: LABCELL_X64_Y47_N30
\chenillard_inst|state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|state~3_combout\ = ( \chenillard_inst|state\(2) & ( \chenillard_inst|state\(1) & ( (\KEY[0]~input_o\ & (!\chenillard_inst|state\(0) $ (!\chenillard_inst|state\(3)))) ) ) ) # ( !\chenillard_inst|state\(2) & ( \chenillard_inst|state\(1) & ( 
-- (\KEY[0]~input_o\ & \chenillard_inst|state\(3)) ) ) ) # ( \chenillard_inst|state\(2) & ( !\chenillard_inst|state\(1) & ( (\KEY[0]~input_o\ & \chenillard_inst|state\(3)) ) ) ) # ( !\chenillard_inst|state\(2) & ( !\chenillard_inst|state\(1) & ( 
-- (\KEY[0]~input_o\ & (!\chenillard_inst|state\(0) & \chenillard_inst|state\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011001100000000001100110000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \chenillard_inst|ALT_INV_state\(0),
	datad => \chenillard_inst|ALT_INV_state\(3),
	datae => \chenillard_inst|ALT_INV_state\(2),
	dataf => \chenillard_inst|ALT_INV_state\(1),
	combout => \chenillard_inst|state~3_combout\);

-- Location: FF_X64_Y47_N41
\chenillard_inst|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider_inst|counter\(20),
	asdata => \chenillard_inst|state~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard_inst|state\(3));

-- Location: LABCELL_X64_Y47_N9
\chenillard_inst|state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|state~1_combout\ = ( \chenillard_inst|state\(2) & ( \chenillard_inst|state\(3) & ( (\KEY[0]~input_o\ & (!\chenillard_inst|state\(1) $ (!\chenillard_inst|state\(0)))) ) ) ) # ( !\chenillard_inst|state\(2) & ( \chenillard_inst|state\(3) & ( 
-- (\KEY[0]~input_o\ & (\chenillard_inst|state\(1) & !\chenillard_inst|state\(0))) ) ) ) # ( \chenillard_inst|state\(2) & ( !\chenillard_inst|state\(3) & ( (\KEY[0]~input_o\ & (!\chenillard_inst|state\(1) $ (!\chenillard_inst|state\(0)))) ) ) ) # ( 
-- !\chenillard_inst|state\(2) & ( !\chenillard_inst|state\(3) & ( (\KEY[0]~input_o\ & (!\chenillard_inst|state\(1) $ (!\chenillard_inst|state\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000011000000000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \chenillard_inst|ALT_INV_state\(1),
	datad => \chenillard_inst|ALT_INV_state\(0),
	datae => \chenillard_inst|ALT_INV_state\(2),
	dataf => \chenillard_inst|ALT_INV_state\(3),
	combout => \chenillard_inst|state~1_combout\);

-- Location: FF_X64_Y47_N47
\chenillard_inst|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider_inst|counter\(20),
	asdata => \chenillard_inst|state~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard_inst|state\(1));

-- Location: LABCELL_X64_Y47_N27
\chenillard_inst|state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|state~2_combout\ = ( \chenillard_inst|state\(0) & ( (\KEY[0]~input_o\ & (!\chenillard_inst|state\(2) $ (!\chenillard_inst|state\(1)))) ) ) # ( !\chenillard_inst|state\(0) & ( (\chenillard_inst|state\(2) & \KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard_inst|ALT_INV_state\(2),
	datac => \chenillard_inst|ALT_INV_state\(1),
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \chenillard_inst|ALT_INV_state\(0),
	combout => \chenillard_inst|state~2_combout\);

-- Location: LABCELL_X64_Y47_N0
\chenillard_inst|state[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|state[2]~feeder_combout\ = ( \chenillard_inst|state~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \chenillard_inst|ALT_INV_state~2_combout\,
	combout => \chenillard_inst|state[2]~feeder_combout\);

-- Location: FF_X64_Y47_N2
\chenillard_inst|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider_inst|counter\(20),
	d => \chenillard_inst|state[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard_inst|state\(2));

-- Location: LABCELL_X64_Y47_N24
\chenillard_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux8~0_combout\ = ( !\chenillard_inst|state\(3) & ( (!\chenillard_inst|state\(2) & ((\chenillard_inst|state\(0)) # (\chenillard_inst|state\(1)))) # (\chenillard_inst|state\(2) & ((!\chenillard_inst|state\(1)) # 
-- (!\chenillard_inst|state\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111001111110011111100111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard_inst|ALT_INV_state\(2),
	datab => \chenillard_inst|ALT_INV_state\(1),
	datac => \chenillard_inst|ALT_INV_state\(0),
	dataf => \chenillard_inst|ALT_INV_state\(3),
	combout => \chenillard_inst|Mux8~0_combout\);

-- Location: LABCELL_X64_Y47_N15
\chenillard_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Equal0~0_combout\ = ( !\chenillard_inst|state\(1) & ( !\chenillard_inst|state\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard_inst|ALT_INV_state\(2),
	dataf => \chenillard_inst|ALT_INV_state\(1),
	combout => \chenillard_inst|Equal0~0_combout\);

-- Location: LABCELL_X64_Y47_N39
\chenillard_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux6~0_combout\ = ( \chenillard_inst|state\(1) & ( ((\chenillard_inst|state\(3)) # (\chenillard_inst|state\(2))) # (\chenillard_inst|state\(0)) ) ) # ( !\chenillard_inst|state\(1) & ( ((!\chenillard_inst|state\(0) & 
-- \chenillard_inst|state\(3))) # (\chenillard_inst|state\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard_inst|ALT_INV_state\(0),
	datac => \chenillard_inst|ALT_INV_state\(2),
	datad => \chenillard_inst|ALT_INV_state\(3),
	dataf => \chenillard_inst|ALT_INV_state\(1),
	combout => \chenillard_inst|Mux6~0_combout\);

-- Location: LABCELL_X64_Y47_N12
\chenillard_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux5~0_combout\ = ( \chenillard_inst|state\(3) ) # ( !\chenillard_inst|state\(3) & ( \chenillard_inst|state\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard_inst|ALT_INV_state\(2),
	dataf => \chenillard_inst|ALT_INV_state\(3),
	combout => \chenillard_inst|Mux5~0_combout\);

-- Location: LABCELL_X64_Y47_N51
\chenillard_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux4~0_combout\ = ( \chenillard_inst|state\(0) & ( (!\chenillard_inst|state\(2) & !\chenillard_inst|state\(3)) ) ) # ( !\chenillard_inst|state\(0) & ( (!\chenillard_inst|state\(3) & (!\chenillard_inst|state\(1) $ 
-- (!\chenillard_inst|state\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard_inst|ALT_INV_state\(1),
	datab => \chenillard_inst|ALT_INV_state\(2),
	datac => \chenillard_inst|ALT_INV_state\(3),
	dataf => \chenillard_inst|ALT_INV_state\(0),
	combout => \chenillard_inst|Mux4~0_combout\);

-- Location: LABCELL_X64_Y47_N54
\chenillard_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux3~0_combout\ = ( \chenillard_inst|state\(1) & ( !\chenillard_inst|state\(2) ) ) # ( !\chenillard_inst|state\(1) & ( \chenillard_inst|state\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard_inst|ALT_INV_state\(2),
	dataf => \chenillard_inst|ALT_INV_state\(1),
	combout => \chenillard_inst|Mux3~0_combout\);

-- Location: LABCELL_X64_Y47_N18
\chenillard_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux2~0_combout\ = ( \chenillard_inst|state\(0) & ( !\chenillard_inst|state\(2) $ (!\chenillard_inst|state\(1)) ) ) # ( !\chenillard_inst|state\(0) & ( \chenillard_inst|state\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard_inst|ALT_INV_state\(2),
	datac => \chenillard_inst|ALT_INV_state\(1),
	dataf => \chenillard_inst|ALT_INV_state\(0),
	combout => \chenillard_inst|Mux2~0_combout\);

-- Location: LABCELL_X64_Y47_N42
\chenillard_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux1~0_combout\ = ( \chenillard_inst|state\(2) & ( (!\chenillard_inst|state\(3) & ((\chenillard_inst|state\(0)) # (\chenillard_inst|state\(1)))) ) ) # ( !\chenillard_inst|state\(2) & ( (!\chenillard_inst|state\(1) & 
-- (!\chenillard_inst|state\(0) & \chenillard_inst|state\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000010111110000000000000000101000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard_inst|ALT_INV_state\(1),
	datac => \chenillard_inst|ALT_INV_state\(0),
	datad => \chenillard_inst|ALT_INV_state\(3),
	datae => \chenillard_inst|ALT_INV_state\(2),
	combout => \chenillard_inst|Mux1~0_combout\);

-- Location: LABCELL_X64_Y47_N48
\chenillard_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard_inst|Mux0~0_combout\ = ( \chenillard_inst|state\(3) ) # ( !\chenillard_inst|state\(3) & ( (\chenillard_inst|state\(1) & \chenillard_inst|state\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard_inst|ALT_INV_state\(1),
	datab => \chenillard_inst|ALT_INV_state\(2),
	dataf => \chenillard_inst|ALT_INV_state\(3),
	combout => \chenillard_inst|Mux0~0_combout\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X54_Y6_N3
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


