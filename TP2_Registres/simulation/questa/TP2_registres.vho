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

-- DATE "05/05/2025 10:19:08"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \reg_univ|reg[0]~27_combout\ : std_logic;
SIGNAL \reg_univ|reg[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \reg_univ|reg[7]~28_combout\ : std_logic;
SIGNAL \reg_univ|Mux2~2_combout\ : std_logic;
SIGNAL \reg_univ|Mux4~2_combout\ : std_logic;
SIGNAL \reg_univ|Mux6~0_combout\ : std_logic;
SIGNAL \reg_univ|Mux6~1_combout\ : std_logic;
SIGNAL \reg_univ|Mux6~2_combout\ : std_logic;
SIGNAL \reg_univ|reg[1]~5_combout\ : std_logic;
SIGNAL \reg_univ|reg[0]~0_combout\ : std_logic;
SIGNAL \reg_univ|reg[1]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[1]~4_combout\ : std_logic;
SIGNAL \reg_univ|Mux5~0_combout\ : std_logic;
SIGNAL \reg_univ|Mux5~2_combout\ : std_logic;
SIGNAL \reg_univ|Mux5~1_combout\ : std_logic;
SIGNAL \reg_univ|reg[2]~7_combout\ : std_logic;
SIGNAL \reg_univ|reg[2]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[2]~6_combout\ : std_logic;
SIGNAL \reg_univ|Mux4~1_combout\ : std_logic;
SIGNAL \reg_univ|Mux4~0_combout\ : std_logic;
SIGNAL \reg_univ|reg[3]~9_combout\ : std_logic;
SIGNAL \reg_univ|reg[3]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[3]~8_combout\ : std_logic;
SIGNAL \reg_univ|Mux3~0_combout\ : std_logic;
SIGNAL \reg_univ|Mux3~2_combout\ : std_logic;
SIGNAL \reg_univ|Mux3~1_combout\ : std_logic;
SIGNAL \reg_univ|reg[4]~11_combout\ : std_logic;
SIGNAL \reg_univ|reg[4]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[4]~10_combout\ : std_logic;
SIGNAL \reg_univ|Mux2~0_combout\ : std_logic;
SIGNAL \reg_univ|Mux2~1_combout\ : std_logic;
SIGNAL \reg_univ|reg[5]~13_combout\ : std_logic;
SIGNAL \reg_univ|reg[5]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[5]~12_combout\ : std_logic;
SIGNAL \reg_univ|Mux1~0_combout\ : std_logic;
SIGNAL \reg_univ|Mux1~1_combout\ : std_logic;
SIGNAL \reg_univ|Mux1~2_combout\ : std_logic;
SIGNAL \reg_univ|reg[6]~15_combout\ : std_logic;
SIGNAL \reg_univ|reg[6]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[6]~14_combout\ : std_logic;
SIGNAL \reg_univ|reg[7]~17_combout\ : std_logic;
SIGNAL \reg_univ|reg[7]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[7]~16_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \reg_univ|reg[0]~29_combout\ : std_logic;
SIGNAL \reg_univ|reg[0]~3_combout\ : std_logic;
SIGNAL \reg_univ|reg[0]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|reg[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[0]~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[0]~29_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[7]~28_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[0]~27_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[0]~0_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[7]~16_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[7]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[6]~14_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[6]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[5]~12_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[5]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[4]~10_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[4]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[3]~8_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[3]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[2]~6_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[2]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[1]~4_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[1]~_emulated_q\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[0]~2_combout\ : std_logic;
SIGNAL \reg_univ|ALT_INV_reg[0]~_emulated_q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\reg_univ|ALT_INV_reg[0]~1_combout\ <= NOT \reg_univ|reg[0]~1_combout\;
\reg_univ|ALT_INV_reg[0]~29_combout\ <= NOT \reg_univ|reg[0]~29_combout\;
\reg_univ|ALT_INV_reg[7]~28_combout\ <= NOT \reg_univ|reg[7]~28_combout\;
\reg_univ|ALT_INV_Mux1~2_combout\ <= NOT \reg_univ|Mux1~2_combout\;
\reg_univ|ALT_INV_Mux1~1_combout\ <= NOT \reg_univ|Mux1~1_combout\;
\reg_univ|ALT_INV_Mux1~0_combout\ <= NOT \reg_univ|Mux1~0_combout\;
\reg_univ|ALT_INV_Mux2~2_combout\ <= NOT \reg_univ|Mux2~2_combout\;
\reg_univ|ALT_INV_Mux2~1_combout\ <= NOT \reg_univ|Mux2~1_combout\;
\reg_univ|ALT_INV_Mux2~0_combout\ <= NOT \reg_univ|Mux2~0_combout\;
\reg_univ|ALT_INV_Mux3~2_combout\ <= NOT \reg_univ|Mux3~2_combout\;
\reg_univ|ALT_INV_Mux3~1_combout\ <= NOT \reg_univ|Mux3~1_combout\;
\reg_univ|ALT_INV_Mux3~0_combout\ <= NOT \reg_univ|Mux3~0_combout\;
\reg_univ|ALT_INV_Mux4~2_combout\ <= NOT \reg_univ|Mux4~2_combout\;
\reg_univ|ALT_INV_Mux4~1_combout\ <= NOT \reg_univ|Mux4~1_combout\;
\reg_univ|ALT_INV_Mux4~0_combout\ <= NOT \reg_univ|Mux4~0_combout\;
\reg_univ|ALT_INV_Mux5~2_combout\ <= NOT \reg_univ|Mux5~2_combout\;
\reg_univ|ALT_INV_Mux5~1_combout\ <= NOT \reg_univ|Mux5~1_combout\;
\reg_univ|ALT_INV_Mux5~0_combout\ <= NOT \reg_univ|Mux5~0_combout\;
\reg_univ|ALT_INV_Mux6~2_combout\ <= NOT \reg_univ|Mux6~2_combout\;
\reg_univ|ALT_INV_Mux6~1_combout\ <= NOT \reg_univ|Mux6~1_combout\;
\reg_univ|ALT_INV_Mux6~0_combout\ <= NOT \reg_univ|Mux6~0_combout\;
\reg_univ|ALT_INV_reg[0]~27_combout\ <= NOT \reg_univ|reg[0]~27_combout\;
\reg_univ|ALT_INV_reg[0]~0_combout\ <= NOT \reg_univ|reg[0]~0_combout\;
\reg_univ|ALT_INV_reg[7]~16_combout\ <= NOT \reg_univ|reg[7]~16_combout\;
\reg_univ|ALT_INV_reg[7]~_emulated_q\ <= NOT \reg_univ|reg[7]~_emulated_q\;
\reg_univ|ALT_INV_reg[6]~14_combout\ <= NOT \reg_univ|reg[6]~14_combout\;
\reg_univ|ALT_INV_reg[6]~_emulated_q\ <= NOT \reg_univ|reg[6]~_emulated_q\;
\reg_univ|ALT_INV_reg[5]~12_combout\ <= NOT \reg_univ|reg[5]~12_combout\;
\reg_univ|ALT_INV_reg[5]~_emulated_q\ <= NOT \reg_univ|reg[5]~_emulated_q\;
\reg_univ|ALT_INV_reg[4]~10_combout\ <= NOT \reg_univ|reg[4]~10_combout\;
\reg_univ|ALT_INV_reg[4]~_emulated_q\ <= NOT \reg_univ|reg[4]~_emulated_q\;
\reg_univ|ALT_INV_reg[3]~8_combout\ <= NOT \reg_univ|reg[3]~8_combout\;
\reg_univ|ALT_INV_reg[3]~_emulated_q\ <= NOT \reg_univ|reg[3]~_emulated_q\;
\reg_univ|ALT_INV_reg[2]~6_combout\ <= NOT \reg_univ|reg[2]~6_combout\;
\reg_univ|ALT_INV_reg[2]~_emulated_q\ <= NOT \reg_univ|reg[2]~_emulated_q\;
\reg_univ|ALT_INV_reg[1]~4_combout\ <= NOT \reg_univ|reg[1]~4_combout\;
\reg_univ|ALT_INV_reg[1]~_emulated_q\ <= NOT \reg_univ|reg[1]~_emulated_q\;
\reg_univ|ALT_INV_reg[0]~2_combout\ <= NOT \reg_univ|reg[0]~2_combout\;
\reg_univ|ALT_INV_reg[0]~_emulated_q\ <= NOT \reg_univ|reg[0]~_emulated_q\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[2]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[3]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_univ|reg[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

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

-- Location: MLABCELL_X25_Y4_N45
\reg_univ|reg[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[0]~27_combout\ = ( \KEY[2]~input_o\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \reg_univ|reg[0]~27_combout\);

-- Location: MLABCELL_X25_Y4_N48
\reg_univ|reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[0]~1_combout\ = ( !\reg_univ|reg[0]~27_combout\ & ( \reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|reg[0]~27_combout\ & ( !\reg_univ|reg[0]~1_combout\ & ( !\KEY[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	datae => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \reg_univ|ALT_INV_reg[0]~1_combout\,
	combout => \reg_univ|reg[0]~1_combout\);

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

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X23_Y4_N12
\reg_univ|reg[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[7]~28_combout\ = ( \reg_univ|reg[7]~16_combout\ & ( \SW[9]~input_o\ & ( !\reg_univ|reg[0]~1_combout\ $ (((\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\)))) ) ) ) # ( !\reg_univ|reg[7]~16_combout\ & ( \SW[9]~input_o\ & ( 
-- !\SW[1]~input_o\ $ (!\reg_univ|reg[0]~1_combout\ $ (\SW[0]~input_o\)) ) ) ) # ( \reg_univ|reg[7]~16_combout\ & ( !\SW[9]~input_o\ & ( !\reg_univ|reg[0]~1_combout\ $ (((\SW[0]~input_o\ & (!\SW[2]~input_o\ $ (\SW[1]~input_o\))))) ) ) ) # ( 
-- !\reg_univ|reg[7]~16_combout\ & ( !\SW[9]~input_o\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\SW[1]~input_o\ & ((!\SW[2]~input_o\) # (!\SW[0]~input_o\))) # (\SW[1]~input_o\ & ((\SW[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001001011111100000110100100111100110000111111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \reg_univ|ALT_INV_reg[7]~16_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \reg_univ|reg[7]~28_combout\);

-- Location: LABCELL_X22_Y4_N57
\reg_univ|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux2~2_combout\ = ( \reg_univ|reg[5]~12_combout\ & ( (!\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (\reg_univ|reg[6]~14_combout\))) ) ) # ( !\reg_univ|reg[5]~12_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \reg_univ|reg[6]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \reg_univ|ALT_INV_reg[6]~14_combout\,
	dataf => \reg_univ|ALT_INV_reg[5]~12_combout\,
	combout => \reg_univ|Mux2~2_combout\);

-- Location: LABCELL_X22_Y4_N24
\reg_univ|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux4~2_combout\ = ( \reg_univ|reg[4]~10_combout\ & ( (!\SW[1]~input_o\ & ((\reg_univ|reg[3]~8_combout\) # (\SW[0]~input_o\))) ) ) # ( !\reg_univ|reg[4]~10_combout\ & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \reg_univ|reg[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \reg_univ|ALT_INV_reg[3]~8_combout\,
	dataf => \reg_univ|ALT_INV_reg[4]~10_combout\,
	combout => \reg_univ|Mux4~2_combout\);

-- Location: LABCELL_X23_Y4_N54
\reg_univ|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux6~0_combout\ = ( \reg_univ|reg[0]~2_combout\ & ( (!\SW[0]~input_o\ & (\SW[2]~input_o\ & \SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[0]~2_combout\,
	combout => \reg_univ|Mux6~0_combout\);

-- Location: LABCELL_X23_Y4_N21
\reg_univ|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux6~1_combout\ = ( \reg_univ|reg[0]~2_combout\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (\reg_univ|reg[1]~4_combout\)))) ) ) # ( !\reg_univ|reg[0]~2_combout\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & 
-- (\reg_univ|reg[1]~4_combout\ & \SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000100010000000100010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \reg_univ|ALT_INV_reg[1]~4_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[0]~2_combout\,
	combout => \reg_univ|Mux6~1_combout\);

-- Location: LABCELL_X23_Y4_N27
\reg_univ|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux6~2_combout\ = ( \reg_univ|reg[2]~6_combout\ & ( (!\SW[1]~input_o\ & ((\reg_univ|reg[1]~4_combout\) # (\SW[0]~input_o\))) ) ) # ( !\reg_univ|reg[2]~6_combout\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \reg_univ|reg[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \reg_univ|ALT_INV_reg[1]~4_combout\,
	dataf => \reg_univ|ALT_INV_reg[2]~6_combout\,
	combout => \reg_univ|Mux6~2_combout\);

-- Location: LABCELL_X23_Y4_N57
\reg_univ|reg[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[1]~5_combout\ = ( \reg_univ|Mux6~2_combout\ & ( !\reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|Mux6~2_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\reg_univ|Mux6~0_combout\ & !\reg_univ|Mux6~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_Mux6~0_combout\,
	datac => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datad => \reg_univ|ALT_INV_Mux6~1_combout\,
	dataf => \reg_univ|ALT_INV_Mux6~2_combout\,
	combout => \reg_univ|reg[1]~5_combout\);

-- Location: MLABCELL_X25_Y4_N36
\reg_univ|reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[0]~0_combout\ = ( \reg_univ|reg[0]~27_combout\ & ( \KEY[2]~input_o\ ) ) # ( \reg_univ|reg[0]~27_combout\ & ( !\KEY[2]~input_o\ ) ) # ( !\reg_univ|reg[0]~27_combout\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \reg_univ|reg[0]~0_combout\);

-- Location: FF_X23_Y4_N58
\reg_univ|reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[1]~5_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[1]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N6
\reg_univ|reg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[1]~4_combout\ = ( \reg_univ|reg[1]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[1]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \reg_univ|ALT_INV_reg[1]~_emulated_q\,
	combout => \reg_univ|reg[1]~4_combout\);

-- Location: LABCELL_X23_Y4_N24
\reg_univ|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux5~0_combout\ = ( \reg_univ|reg[1]~4_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[1]~4_combout\,
	combout => \reg_univ|Mux5~0_combout\);

-- Location: LABCELL_X23_Y4_N9
\reg_univ|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux5~2_combout\ = ( \reg_univ|reg[3]~8_combout\ & ( (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\reg_univ|reg[2]~6_combout\))) ) ) # ( !\reg_univ|reg[3]~8_combout\ & ( (!\SW[1]~input_o\ & (\reg_univ|reg[2]~6_combout\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \reg_univ|ALT_INV_reg[2]~6_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[3]~8_combout\,
	combout => \reg_univ|Mux5~2_combout\);

-- Location: LABCELL_X23_Y4_N18
\reg_univ|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux5~1_combout\ = ( \reg_univ|reg[1]~4_combout\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (\reg_univ|reg[2]~6_combout\)))) ) ) # ( !\reg_univ|reg[1]~4_combout\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (\SW[0]~input_o\ & 
-- \reg_univ|reg[2]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000100000001000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \reg_univ|ALT_INV_reg[2]~6_combout\,
	dataf => \reg_univ|ALT_INV_reg[1]~4_combout\,
	combout => \reg_univ|Mux5~1_combout\);

-- Location: LABCELL_X23_Y4_N42
\reg_univ|reg[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[2]~7_combout\ = ( \reg_univ|Mux5~1_combout\ & ( !\reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|Mux5~1_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\reg_univ|Mux5~0_combout\ & !\reg_univ|Mux5~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \reg_univ|ALT_INV_Mux5~0_combout\,
	datad => \reg_univ|ALT_INV_Mux5~2_combout\,
	dataf => \reg_univ|ALT_INV_Mux5~1_combout\,
	combout => \reg_univ|reg[2]~7_combout\);

-- Location: FF_X23_Y4_N44
\reg_univ|reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[2]~7_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[2]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N39
\reg_univ|reg[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[2]~6_combout\ = ( \reg_univ|reg[2]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[2]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011000100010011001100100010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datab => \reg_univ|ALT_INV_reg[0]~27_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[2]~_emulated_q\,
	combout => \reg_univ|reg[2]~6_combout\);

-- Location: LABCELL_X22_Y4_N12
\reg_univ|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux4~1_combout\ = ( \reg_univ|reg[2]~6_combout\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & ((!\SW[0]~input_o\) # (\reg_univ|reg[3]~8_combout\)))) ) ) # ( !\reg_univ|reg[2]~6_combout\ & ( (\SW[1]~input_o\ & (\SW[0]~input_o\ & (!\SW[2]~input_o\ & 
-- \reg_univ|reg[3]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000001000000010100000100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[3]~8_combout\,
	dataf => \reg_univ|ALT_INV_reg[2]~6_combout\,
	combout => \reg_univ|Mux4~1_combout\);

-- Location: LABCELL_X22_Y4_N33
\reg_univ|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux4~0_combout\ = ( \reg_univ|reg[2]~6_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[2]~6_combout\,
	combout => \reg_univ|Mux4~0_combout\);

-- Location: LABCELL_X22_Y4_N27
\reg_univ|reg[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[3]~9_combout\ = ( \reg_univ|Mux4~0_combout\ & ( !\reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|Mux4~0_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\reg_univ|Mux4~2_combout\ & !\reg_univ|Mux4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_Mux4~2_combout\,
	datac => \reg_univ|ALT_INV_Mux4~1_combout\,
	datad => \reg_univ|ALT_INV_reg[0]~1_combout\,
	dataf => \reg_univ|ALT_INV_Mux4~0_combout\,
	combout => \reg_univ|reg[3]~9_combout\);

-- Location: FF_X22_Y4_N28
\reg_univ|reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[3]~9_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[3]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N0
\reg_univ|reg[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[3]~8_combout\ = ( \reg_univ|reg[3]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[3]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \reg_univ|ALT_INV_reg[3]~_emulated_q\,
	combout => \reg_univ|reg[3]~8_combout\);

-- Location: LABCELL_X22_Y4_N42
\reg_univ|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux3~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[2]~input_o\ & \reg_univ|reg[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[3]~8_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \reg_univ|Mux3~0_combout\);

-- Location: LABCELL_X22_Y4_N3
\reg_univ|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux3~2_combout\ = ( \reg_univ|reg[5]~12_combout\ & ( (!\SW[1]~input_o\ & ((\reg_univ|reg[4]~10_combout\) # (\SW[0]~input_o\))) ) ) # ( !\reg_univ|reg[5]~12_combout\ & ( (!\SW[0]~input_o\ & (\reg_univ|reg[4]~10_combout\ & !\SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \reg_univ|ALT_INV_reg[4]~10_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[5]~12_combout\,
	combout => \reg_univ|Mux3~2_combout\);

-- Location: LABCELL_X22_Y4_N30
\reg_univ|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux3~1_combout\ = ( \reg_univ|reg[4]~10_combout\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & ((\reg_univ|reg[3]~8_combout\) # (\SW[0]~input_o\)))) ) ) # ( !\reg_univ|reg[4]~10_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\SW[2]~input_o\ 
-- & \reg_univ|reg[3]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[3]~8_combout\,
	dataf => \reg_univ|ALT_INV_reg[4]~10_combout\,
	combout => \reg_univ|Mux3~1_combout\);

-- Location: LABCELL_X22_Y4_N9
\reg_univ|reg[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[4]~11_combout\ = ( \reg_univ|Mux3~1_combout\ & ( !\reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|Mux3~1_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\reg_univ|Mux3~0_combout\ & !\reg_univ|Mux3~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \reg_univ|ALT_INV_Mux3~0_combout\,
	datad => \reg_univ|ALT_INV_Mux3~2_combout\,
	dataf => \reg_univ|ALT_INV_Mux3~1_combout\,
	combout => \reg_univ|reg[4]~11_combout\);

-- Location: FF_X22_Y4_N11
\reg_univ|reg[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[4]~11_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[4]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N6
\reg_univ|reg[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[4]~10_combout\ = ( \reg_univ|reg[4]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[4]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000110111010000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \reg_univ|ALT_INV_reg[4]~_emulated_q\,
	combout => \reg_univ|reg[4]~10_combout\);

-- Location: LABCELL_X22_Y4_N54
\reg_univ|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux2~0_combout\ = ( \reg_univ|reg[4]~10_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[4]~10_combout\,
	combout => \reg_univ|Mux2~0_combout\);

-- Location: LABCELL_X22_Y4_N15
\reg_univ|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux2~1_combout\ = ( \reg_univ|reg[5]~12_combout\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & ((\reg_univ|reg[4]~10_combout\) # (\SW[0]~input_o\)))) ) ) # ( !\reg_univ|reg[5]~12_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & 
-- (\reg_univ|reg[4]~10_combout\ & !\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \reg_univ|ALT_INV_reg[4]~10_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[5]~12_combout\,
	combout => \reg_univ|Mux2~1_combout\);

-- Location: LABCELL_X22_Y4_N21
\reg_univ|reg[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[5]~13_combout\ = ( \reg_univ|Mux2~1_combout\ & ( !\reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|Mux2~1_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\reg_univ|Mux2~2_combout\ & !\reg_univ|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \reg_univ|ALT_INV_Mux2~2_combout\,
	datad => \reg_univ|ALT_INV_Mux2~0_combout\,
	dataf => \reg_univ|ALT_INV_Mux2~1_combout\,
	combout => \reg_univ|reg[5]~13_combout\);

-- Location: FF_X22_Y4_N22
\reg_univ|reg[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[5]~13_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[5]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N18
\reg_univ|reg[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[5]~12_combout\ = ( \reg_univ|reg[5]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[5]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000110111010000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \reg_univ|ALT_INV_reg[5]~_emulated_q\,
	combout => \reg_univ|reg[5]~12_combout\);

-- Location: LABCELL_X22_Y4_N39
\reg_univ|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux1~0_combout\ = ( \reg_univ|reg[5]~12_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[5]~12_combout\,
	combout => \reg_univ|Mux1~0_combout\);

-- Location: LABCELL_X22_Y4_N45
\reg_univ|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux1~1_combout\ = ( \reg_univ|reg[5]~12_combout\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (\reg_univ|reg[6]~14_combout\)))) ) ) # ( !\reg_univ|reg[5]~12_combout\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ 
-- & \reg_univ|reg[6]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000001000000010100000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \reg_univ|ALT_INV_reg[6]~14_combout\,
	dataf => \reg_univ|ALT_INV_reg[5]~12_combout\,
	combout => \reg_univ|Mux1~1_combout\);

-- Location: LABCELL_X22_Y4_N51
\reg_univ|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|Mux1~2_combout\ = ( \reg_univ|reg[7]~16_combout\ & ( (!\SW[1]~input_o\ & ((\reg_univ|reg[6]~14_combout\) # (\SW[0]~input_o\))) ) ) # ( !\reg_univ|reg[7]~16_combout\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \reg_univ|reg[6]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \reg_univ|ALT_INV_reg[6]~14_combout\,
	dataf => \reg_univ|ALT_INV_reg[7]~16_combout\,
	combout => \reg_univ|Mux1~2_combout\);

-- Location: LABCELL_X22_Y4_N48
\reg_univ|reg[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[6]~15_combout\ = ( \reg_univ|Mux1~2_combout\ & ( !\reg_univ|reg[0]~1_combout\ ) ) # ( !\reg_univ|Mux1~2_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((!\reg_univ|Mux1~0_combout\ & !\reg_univ|Mux1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_univ|ALT_INV_Mux1~0_combout\,
	datac => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datad => \reg_univ|ALT_INV_Mux1~1_combout\,
	dataf => \reg_univ|ALT_INV_Mux1~2_combout\,
	combout => \reg_univ|reg[6]~15_combout\);

-- Location: FF_X22_Y4_N50
\reg_univ|reg[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[6]~15_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[6]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N36
\reg_univ|reg[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[6]~14_combout\ = ( \reg_univ|reg[6]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[6]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[0]~27_combout\,
	dataf => \reg_univ|ALT_INV_reg[6]~_emulated_q\,
	combout => \reg_univ|reg[6]~14_combout\);

-- Location: LABCELL_X23_Y4_N48
\reg_univ|reg[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[7]~17_combout\ = ( \reg_univ|reg[0]~2_combout\ & ( \reg_univ|reg[6]~14_combout\ & ( \reg_univ|reg[7]~28_combout\ ) ) ) # ( !\reg_univ|reg[0]~2_combout\ & ( \reg_univ|reg[6]~14_combout\ & ( !\reg_univ|reg[7]~28_combout\ $ (((!\SW[2]~input_o\) 
-- # ((!\SW[0]~input_o\) # (\SW[1]~input_o\)))) ) ) ) # ( \reg_univ|reg[0]~2_combout\ & ( !\reg_univ|reg[6]~14_combout\ & ( !\reg_univ|reg[7]~28_combout\ $ (((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) ) ) # ( !\reg_univ|reg[0]~2_combout\ & ( 
-- !\reg_univ|reg[6]~14_combout\ & ( !\reg_univ|reg[7]~28_combout\ $ (((!\SW[0]~input_o\ & ((!\SW[1]~input_o\))) # (\SW[0]~input_o\ & ((!\SW[2]~input_o\) # (\SW[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110011100011000011001111001100010000111011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \reg_univ|ALT_INV_reg[7]~28_combout\,
	datae => \reg_univ|ALT_INV_reg[0]~2_combout\,
	dataf => \reg_univ|ALT_INV_reg[6]~14_combout\,
	combout => \reg_univ|reg[7]~17_combout\);

-- Location: FF_X23_Y4_N50
\reg_univ|reg[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[7]~17_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[7]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N45
\reg_univ|reg[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[7]~16_combout\ = ( \reg_univ|reg[7]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[7]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datac => \reg_univ|ALT_INV_reg[0]~27_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[7]~_emulated_q\,
	combout => \reg_univ|reg[7]~16_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X23_Y4_N0
\reg_univ|reg[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[0]~29_combout\ = ( \SW[2]~input_o\ & ( \reg_univ|reg[0]~2_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) ) # ( !\SW[2]~input_o\ & ( \reg_univ|reg[0]~2_combout\ & ( !\reg_univ|reg[0]~1_combout\ $ 
-- (((!\SW[8]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\)))) ) ) ) # ( \SW[2]~input_o\ & ( !\reg_univ|reg[0]~2_combout\ & ( !\SW[1]~input_o\ $ (!\reg_univ|reg[0]~1_combout\ $ (\SW[0]~input_o\)) ) ) ) # ( !\SW[2]~input_o\ & ( !\reg_univ|reg[0]~2_combout\ 
-- & ( !\reg_univ|reg[0]~1_combout\ $ (((!\SW[1]~input_o\ & ((!\SW[0]~input_o\))) # (\SW[1]~input_o\ & ((!\SW[8]~input_o\) # (\SW[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011000011001111001100001111010010111100001111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[0]~2_combout\,
	combout => \reg_univ|reg[0]~29_combout\);

-- Location: LABCELL_X23_Y4_N30
\reg_univ|reg[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[0]~3_combout\ = ( \reg_univ|reg[0]~29_combout\ & ( \reg_univ|reg[1]~4_combout\ & ( (!\SW[1]~input_o\) # (((!\SW[2]~input_o\) # (\reg_univ|reg[7]~16_combout\)) # (\SW[0]~input_o\)) ) ) ) # ( !\reg_univ|reg[0]~29_combout\ & ( 
-- \reg_univ|reg[1]~4_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[2]~input_o\ & !\reg_univ|reg[7]~16_combout\))) ) ) ) # ( \reg_univ|reg[0]~29_combout\ & ( !\reg_univ|reg[1]~4_combout\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\)) # 
-- (\SW[1]~input_o\ & (((!\SW[2]~input_o\) # (\reg_univ|reg[7]~16_combout\)) # (\SW[0]~input_o\))) ) ) ) # ( !\reg_univ|reg[0]~29_combout\ & ( !\reg_univ|reg[1]~4_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\)) # (\SW[1]~input_o\ & (!\SW[0]~input_o\ & 
-- (\SW[2]~input_o\ & !\reg_univ|reg[7]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000100010110110011101110100000100000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \reg_univ|ALT_INV_reg[7]~16_combout\,
	datae => \reg_univ|ALT_INV_reg[0]~29_combout\,
	dataf => \reg_univ|ALT_INV_reg[1]~4_combout\,
	combout => \reg_univ|reg[0]~3_combout\);

-- Location: FF_X23_Y4_N32
\reg_univ|reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \reg_univ|reg[0]~3_combout\,
	clrn => \reg_univ|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_univ|reg[0]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N36
\reg_univ|reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_univ|reg[0]~2_combout\ = ( \reg_univ|reg[0]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\reg_univ|reg[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\reg_univ|reg[0]~_emulated_q\ & ( (!\reg_univ|reg[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\reg_univ|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_univ|ALT_INV_reg[0]~1_combout\,
	datab => \reg_univ|ALT_INV_reg[0]~27_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \reg_univ|ALT_INV_reg[0]~_emulated_q\,
	combout => \reg_univ|reg[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X13_Y48_N3
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


