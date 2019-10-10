-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "09/14/2019 15:39:18"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	count_bin IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	y : BUFFER std_logic_vector(20 DOWNTO 0)
	);
END count_bin;

-- Design Ports Information
-- y[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[18]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[19]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF count_bin IS
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
SIGNAL ww_y : std_logic_vector(20 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \y[12]~output_o\ : std_logic;
SIGNAL \y[13]~output_o\ : std_logic;
SIGNAL \y[14]~output_o\ : std_logic;
SIGNAL \y[15]~output_o\ : std_logic;
SIGNAL \y[16]~output_o\ : std_logic;
SIGNAL \y[17]~output_o\ : std_logic;
SIGNAL \y[18]~output_o\ : std_logic;
SIGNAL \y[19]~output_o\ : std_logic;
SIGNAL \y[20]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~60_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[1]~20_combout\ : std_logic;
SIGNAL \cnt[1]~21\ : std_logic;
SIGNAL \cnt[2]~22_combout\ : std_logic;
SIGNAL \cnt[2]~23\ : std_logic;
SIGNAL \cnt[3]~24_combout\ : std_logic;
SIGNAL \cnt[3]~25\ : std_logic;
SIGNAL \cnt[4]~26_combout\ : std_logic;
SIGNAL \cnt[4]~27\ : std_logic;
SIGNAL \cnt[5]~28_combout\ : std_logic;
SIGNAL \cnt[5]~29\ : std_logic;
SIGNAL \cnt[6]~30_combout\ : std_logic;
SIGNAL \cnt[6]~31\ : std_logic;
SIGNAL \cnt[7]~32_combout\ : std_logic;
SIGNAL \cnt[7]~33\ : std_logic;
SIGNAL \cnt[8]~34_combout\ : std_logic;
SIGNAL \cnt[8]~35\ : std_logic;
SIGNAL \cnt[9]~36_combout\ : std_logic;
SIGNAL \cnt[9]~37\ : std_logic;
SIGNAL \cnt[10]~38_combout\ : std_logic;
SIGNAL \cnt[10]~39\ : std_logic;
SIGNAL \cnt[11]~40_combout\ : std_logic;
SIGNAL \cnt[11]~41\ : std_logic;
SIGNAL \cnt[12]~42_combout\ : std_logic;
SIGNAL \cnt[12]~43\ : std_logic;
SIGNAL \cnt[13]~44_combout\ : std_logic;
SIGNAL \cnt[13]~45\ : std_logic;
SIGNAL \cnt[14]~46_combout\ : std_logic;
SIGNAL \cnt[14]~47\ : std_logic;
SIGNAL \cnt[15]~48_combout\ : std_logic;
SIGNAL \cnt[15]~49\ : std_logic;
SIGNAL \cnt[16]~50_combout\ : std_logic;
SIGNAL \cnt[16]~51\ : std_logic;
SIGNAL \cnt[17]~52_combout\ : std_logic;
SIGNAL \cnt[17]~53\ : std_logic;
SIGNAL \cnt[18]~54_combout\ : std_logic;
SIGNAL \cnt[18]~55\ : std_logic;
SIGNAL \cnt[19]~56_combout\ : std_logic;
SIGNAL \cnt[19]~57\ : std_logic;
SIGNAL \cnt[20]~58_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y34_N9
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(0),
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(1),
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(2),
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(3),
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(4),
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(5),
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(6),
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(7),
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(8),
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(9),
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(10),
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(11),
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(12),
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(13),
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(14),
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(15),
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(16),
	devoe => ww_devoe,
	o => \y[16]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(17),
	devoe => ww_devoe,
	o => \y[17]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(18),
	devoe => ww_devoe,
	o => \y[18]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(19),
	devoe => ww_devoe,
	o => \y[19]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(20),
	devoe => ww_devoe,
	o => \y[20]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y33_N0
\cnt[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~60_combout\ = !cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	combout => \cnt[0]~60_combout\);

-- Location: IOIBUF_X0_Y16_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X46_Y33_N1
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[0]~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X46_Y33_N12
\cnt[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~20_combout\ = (cnt(1) & (cnt(0) $ (VCC))) # (!cnt(1) & (cnt(0) & VCC))
-- \cnt[1]~21\ = CARRY((cnt(1) & cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[1]~20_combout\,
	cout => \cnt[1]~21\);

-- Location: FF_X46_Y33_N13
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[1]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X46_Y33_N14
\cnt[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~22_combout\ = (cnt(2) & (!\cnt[1]~21\)) # (!cnt(2) & ((\cnt[1]~21\) # (GND)))
-- \cnt[2]~23\ = CARRY((!\cnt[1]~21\) # (!cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~21\,
	combout => \cnt[2]~22_combout\,
	cout => \cnt[2]~23\);

-- Location: FF_X46_Y33_N15
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[2]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X46_Y33_N16
\cnt[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~24_combout\ = (cnt(3) & (\cnt[2]~23\ $ (GND))) # (!cnt(3) & (!\cnt[2]~23\ & VCC))
-- \cnt[3]~25\ = CARRY((cnt(3) & !\cnt[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~23\,
	combout => \cnt[3]~24_combout\,
	cout => \cnt[3]~25\);

-- Location: FF_X46_Y33_N17
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X46_Y33_N18
\cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~26_combout\ = (cnt(4) & (!\cnt[3]~25\)) # (!cnt(4) & ((\cnt[3]~25\) # (GND)))
-- \cnt[4]~27\ = CARRY((!\cnt[3]~25\) # (!cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~25\,
	combout => \cnt[4]~26_combout\,
	cout => \cnt[4]~27\);

-- Location: FF_X46_Y33_N19
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[4]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X46_Y33_N20
\cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~28_combout\ = (cnt(5) & (\cnt[4]~27\ $ (GND))) # (!cnt(5) & (!\cnt[4]~27\ & VCC))
-- \cnt[5]~29\ = CARRY((cnt(5) & !\cnt[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~27\,
	combout => \cnt[5]~28_combout\,
	cout => \cnt[5]~29\);

-- Location: FF_X46_Y33_N21
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[5]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X46_Y33_N22
\cnt[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~30_combout\ = (cnt(6) & (!\cnt[5]~29\)) # (!cnt(6) & ((\cnt[5]~29\) # (GND)))
-- \cnt[6]~31\ = CARRY((!\cnt[5]~29\) # (!cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \cnt[5]~29\,
	combout => \cnt[6]~30_combout\,
	cout => \cnt[6]~31\);

-- Location: FF_X46_Y33_N23
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[6]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X46_Y33_N24
\cnt[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~32_combout\ = (cnt(7) & (\cnt[6]~31\ $ (GND))) # (!cnt(7) & (!\cnt[6]~31\ & VCC))
-- \cnt[7]~33\ = CARRY((cnt(7) & !\cnt[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~31\,
	combout => \cnt[7]~32_combout\,
	cout => \cnt[7]~33\);

-- Location: FF_X46_Y33_N25
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[7]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X46_Y33_N26
\cnt[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~34_combout\ = (cnt(8) & (!\cnt[7]~33\)) # (!cnt(8) & ((\cnt[7]~33\) # (GND)))
-- \cnt[8]~35\ = CARRY((!\cnt[7]~33\) # (!cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \cnt[7]~33\,
	combout => \cnt[8]~34_combout\,
	cout => \cnt[8]~35\);

-- Location: FF_X46_Y33_N27
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[8]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X46_Y33_N28
\cnt[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~36_combout\ = (cnt(9) & (\cnt[8]~35\ $ (GND))) # (!cnt(9) & (!\cnt[8]~35\ & VCC))
-- \cnt[9]~37\ = CARRY((cnt(9) & !\cnt[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \cnt[8]~35\,
	combout => \cnt[9]~36_combout\,
	cout => \cnt[9]~37\);

-- Location: FF_X46_Y33_N29
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[9]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X46_Y33_N30
\cnt[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[10]~38_combout\ = (cnt(10) & (!\cnt[9]~37\)) # (!cnt(10) & ((\cnt[9]~37\) # (GND)))
-- \cnt[10]~39\ = CARRY((!\cnt[9]~37\) # (!cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datad => VCC,
	cin => \cnt[9]~37\,
	combout => \cnt[10]~38_combout\,
	cout => \cnt[10]~39\);

-- Location: FF_X46_Y33_N31
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[10]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X46_Y32_N0
\cnt[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[11]~40_combout\ = (cnt(11) & (\cnt[10]~39\ $ (GND))) # (!cnt(11) & (!\cnt[10]~39\ & VCC))
-- \cnt[11]~41\ = CARRY((cnt(11) & !\cnt[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \cnt[10]~39\,
	combout => \cnt[11]~40_combout\,
	cout => \cnt[11]~41\);

-- Location: FF_X46_Y32_N1
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[11]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X46_Y32_N2
\cnt[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[12]~42_combout\ = (cnt(12) & (!\cnt[11]~41\)) # (!cnt(12) & ((\cnt[11]~41\) # (GND)))
-- \cnt[12]~43\ = CARRY((!\cnt[11]~41\) # (!cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~41\,
	combout => \cnt[12]~42_combout\,
	cout => \cnt[12]~43\);

-- Location: FF_X46_Y32_N3
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[12]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X46_Y32_N4
\cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[13]~44_combout\ = (cnt(13) & (\cnt[12]~43\ $ (GND))) # (!cnt(13) & (!\cnt[12]~43\ & VCC))
-- \cnt[13]~45\ = CARRY((cnt(13) & !\cnt[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \cnt[12]~43\,
	combout => \cnt[13]~44_combout\,
	cout => \cnt[13]~45\);

-- Location: FF_X46_Y32_N5
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[13]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X46_Y32_N6
\cnt[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[14]~46_combout\ = (cnt(14) & (!\cnt[13]~45\)) # (!cnt(14) & ((\cnt[13]~45\) # (GND)))
-- \cnt[14]~47\ = CARRY((!\cnt[13]~45\) # (!cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datad => VCC,
	cin => \cnt[13]~45\,
	combout => \cnt[14]~46_combout\,
	cout => \cnt[14]~47\);

-- Location: FF_X46_Y32_N7
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[14]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X46_Y32_N8
\cnt[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[15]~48_combout\ = (cnt(15) & (\cnt[14]~47\ $ (GND))) # (!cnt(15) & (!\cnt[14]~47\ & VCC))
-- \cnt[15]~49\ = CARRY((cnt(15) & !\cnt[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \cnt[14]~47\,
	combout => \cnt[15]~48_combout\,
	cout => \cnt[15]~49\);

-- Location: FF_X46_Y32_N9
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[15]~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X46_Y32_N10
\cnt[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[16]~50_combout\ = (cnt(16) & (!\cnt[15]~49\)) # (!cnt(16) & ((\cnt[15]~49\) # (GND)))
-- \cnt[16]~51\ = CARRY((!\cnt[15]~49\) # (!cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datad => VCC,
	cin => \cnt[15]~49\,
	combout => \cnt[16]~50_combout\,
	cout => \cnt[16]~51\);

-- Location: FF_X46_Y32_N11
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[16]~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X46_Y32_N12
\cnt[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[17]~52_combout\ = (cnt(17) & (\cnt[16]~51\ $ (GND))) # (!cnt(17) & (!\cnt[16]~51\ & VCC))
-- \cnt[17]~53\ = CARRY((cnt(17) & !\cnt[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datad => VCC,
	cin => \cnt[16]~51\,
	combout => \cnt[17]~52_combout\,
	cout => \cnt[17]~53\);

-- Location: FF_X46_Y32_N13
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[17]~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X46_Y32_N14
\cnt[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[18]~54_combout\ = (cnt(18) & (!\cnt[17]~53\)) # (!cnt(18) & ((\cnt[17]~53\) # (GND)))
-- \cnt[18]~55\ = CARRY((!\cnt[17]~53\) # (!cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \cnt[17]~53\,
	combout => \cnt[18]~54_combout\,
	cout => \cnt[18]~55\);

-- Location: FF_X46_Y32_N15
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[18]~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X46_Y32_N16
\cnt[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[19]~56_combout\ = (cnt(19) & (\cnt[18]~55\ $ (GND))) # (!cnt(19) & (!\cnt[18]~55\ & VCC))
-- \cnt[19]~57\ = CARRY((cnt(19) & !\cnt[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \cnt[18]~55\,
	combout => \cnt[19]~56_combout\,
	cout => \cnt[19]~57\);

-- Location: FF_X46_Y32_N17
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[19]~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X46_Y32_N18
\cnt[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[20]~58_combout\ = \cnt[19]~57\ $ (cnt(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(20),
	cin => \cnt[19]~57\,
	combout => \cnt[20]~58_combout\);

-- Location: FF_X46_Y32_N19
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[20]~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(11) <= \y[11]~output_o\;

ww_y(12) <= \y[12]~output_o\;

ww_y(13) <= \y[13]~output_o\;

ww_y(14) <= \y[14]~output_o\;

ww_y(15) <= \y[15]~output_o\;

ww_y(16) <= \y[16]~output_o\;

ww_y(17) <= \y[17]~output_o\;

ww_y(18) <= \y[18]~output_o\;

ww_y(19) <= \y[19]~output_o\;

ww_y(20) <= \y[20]~output_o\;
END structure;


