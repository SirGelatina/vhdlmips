-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "11/23/2016 01:23:15"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
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

ENTITY 	Processor IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	f : OUT std_logic_vector(0 TO 31);
	dbg : OUT std_logic_vector(0 TO 31);
	t : OUT std_logic_vector(0 DOWNTO 0)
	);
END Processor;

-- Design Ports Information
-- f[31]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[30]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[29]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[28]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[27]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[26]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[25]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[24]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[23]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[21]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[20]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[19]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[18]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[16]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[14]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[11]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[9]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[31]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[30]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[29]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[28]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[27]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[26]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[25]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[23]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[22]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[21]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[20]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[18]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[17]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[15]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[12]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[11]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[9]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Processor IS
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
SIGNAL ww_clr : std_logic;
SIGNAL ww_f : std_logic_vector(0 TO 31);
SIGNAL ww_dbg : std_logic_vector(0 TO 31);
SIGNAL ww_t : std_logic_vector(0 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f[31]~output_o\ : std_logic;
SIGNAL \f[30]~output_o\ : std_logic;
SIGNAL \f[29]~output_o\ : std_logic;
SIGNAL \f[28]~output_o\ : std_logic;
SIGNAL \f[27]~output_o\ : std_logic;
SIGNAL \f[26]~output_o\ : std_logic;
SIGNAL \f[25]~output_o\ : std_logic;
SIGNAL \f[24]~output_o\ : std_logic;
SIGNAL \f[23]~output_o\ : std_logic;
SIGNAL \f[22]~output_o\ : std_logic;
SIGNAL \f[21]~output_o\ : std_logic;
SIGNAL \f[20]~output_o\ : std_logic;
SIGNAL \f[19]~output_o\ : std_logic;
SIGNAL \f[18]~output_o\ : std_logic;
SIGNAL \f[17]~output_o\ : std_logic;
SIGNAL \f[16]~output_o\ : std_logic;
SIGNAL \f[15]~output_o\ : std_logic;
SIGNAL \f[14]~output_o\ : std_logic;
SIGNAL \f[13]~output_o\ : std_logic;
SIGNAL \f[12]~output_o\ : std_logic;
SIGNAL \f[11]~output_o\ : std_logic;
SIGNAL \f[10]~output_o\ : std_logic;
SIGNAL \f[9]~output_o\ : std_logic;
SIGNAL \f[8]~output_o\ : std_logic;
SIGNAL \f[7]~output_o\ : std_logic;
SIGNAL \f[6]~output_o\ : std_logic;
SIGNAL \f[5]~output_o\ : std_logic;
SIGNAL \f[4]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \dbg[31]~output_o\ : std_logic;
SIGNAL \dbg[30]~output_o\ : std_logic;
SIGNAL \dbg[29]~output_o\ : std_logic;
SIGNAL \dbg[28]~output_o\ : std_logic;
SIGNAL \dbg[27]~output_o\ : std_logic;
SIGNAL \dbg[26]~output_o\ : std_logic;
SIGNAL \dbg[25]~output_o\ : std_logic;
SIGNAL \dbg[24]~output_o\ : std_logic;
SIGNAL \dbg[23]~output_o\ : std_logic;
SIGNAL \dbg[22]~output_o\ : std_logic;
SIGNAL \dbg[21]~output_o\ : std_logic;
SIGNAL \dbg[20]~output_o\ : std_logic;
SIGNAL \dbg[19]~output_o\ : std_logic;
SIGNAL \dbg[18]~output_o\ : std_logic;
SIGNAL \dbg[17]~output_o\ : std_logic;
SIGNAL \dbg[16]~output_o\ : std_logic;
SIGNAL \dbg[15]~output_o\ : std_logic;
SIGNAL \dbg[14]~output_o\ : std_logic;
SIGNAL \dbg[13]~output_o\ : std_logic;
SIGNAL \dbg[12]~output_o\ : std_logic;
SIGNAL \dbg[11]~output_o\ : std_logic;
SIGNAL \dbg[10]~output_o\ : std_logic;
SIGNAL \dbg[9]~output_o\ : std_logic;
SIGNAL \dbg[8]~output_o\ : std_logic;
SIGNAL \dbg[7]~output_o\ : std_logic;
SIGNAL \dbg[6]~output_o\ : std_logic;
SIGNAL \dbg[5]~output_o\ : std_logic;
SIGNAL \dbg[4]~output_o\ : std_logic;
SIGNAL \dbg[3]~output_o\ : std_logic;
SIGNAL \dbg[2]~output_o\ : std_logic;
SIGNAL \dbg[1]~output_o\ : std_logic;
SIGNAL \dbg[0]~output_o\ : std_logic;
SIGNAL \t[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \test|mem[0]~0_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \test|q[0]~feeder_combout\ : std_logic;
SIGNAL \test|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \test|mem\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \test|ALT_INV_q\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
f <= ww_f;
dbg <= ww_dbg;
t <= ww_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\test|ALT_INV_q\(0) <= NOT \test|q\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N9
\f[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[31]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\f[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[30]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\f[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[29]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\f[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[28]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\f[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[27]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\f[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[26]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\f[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[25]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\f[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[24]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\f[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[23]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\f[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[22]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\f[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[21]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\f[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[20]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\f[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[19]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\f[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[18]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\f[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[17]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\f[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\f[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\f[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[14]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\f[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[13]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\f[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\f[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[11]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\f[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\f[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\f[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\f[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\f[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\f[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\f[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\f[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[3]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\f[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\f[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\f[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|ALT_INV_q\(0),
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\dbg[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[31]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\dbg[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[30]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\dbg[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[29]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\dbg[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[28]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\dbg[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[27]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\dbg[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[26]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\dbg[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[25]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\dbg[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[24]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\dbg[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[23]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\dbg[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[22]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\dbg[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[21]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\dbg[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[20]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\dbg[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[19]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\dbg[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[18]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\dbg[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[17]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\dbg[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[16]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\dbg[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[15]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\dbg[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[14]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\dbg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[13]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\dbg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\dbg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\dbg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[10]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\dbg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[9]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\dbg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[8]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\dbg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\dbg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\dbg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[5]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\dbg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\dbg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\dbg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\dbg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\dbg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test|q\(0),
	devoe => ww_devoe,
	o => \dbg[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\t[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk~input_o\,
	devoe => ww_devoe,
	o => \t[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X16_Y21_N18
\test|mem[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \test|mem[0]~0_combout\ = !\test|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \test|q\(0),
	combout => \test|mem[0]~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X16_Y21_N19
\test|mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test|mem[0]~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test|mem\(0));

-- Location: LCCOMB_X16_Y21_N28
\test|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \test|q[0]~feeder_combout\ = \test|mem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \test|mem\(0),
	combout => \test|q[0]~feeder_combout\);

-- Location: FF_X16_Y21_N29
\test|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \test|q[0]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test|q\(0));

ww_f(31) <= \f[31]~output_o\;

ww_f(30) <= \f[30]~output_o\;

ww_f(29) <= \f[29]~output_o\;

ww_f(28) <= \f[28]~output_o\;

ww_f(27) <= \f[27]~output_o\;

ww_f(26) <= \f[26]~output_o\;

ww_f(25) <= \f[25]~output_o\;

ww_f(24) <= \f[24]~output_o\;

ww_f(23) <= \f[23]~output_o\;

ww_f(22) <= \f[22]~output_o\;

ww_f(21) <= \f[21]~output_o\;

ww_f(20) <= \f[20]~output_o\;

ww_f(19) <= \f[19]~output_o\;

ww_f(18) <= \f[18]~output_o\;

ww_f(17) <= \f[17]~output_o\;

ww_f(16) <= \f[16]~output_o\;

ww_f(15) <= \f[15]~output_o\;

ww_f(14) <= \f[14]~output_o\;

ww_f(13) <= \f[13]~output_o\;

ww_f(12) <= \f[12]~output_o\;

ww_f(11) <= \f[11]~output_o\;

ww_f(10) <= \f[10]~output_o\;

ww_f(9) <= \f[9]~output_o\;

ww_f(8) <= \f[8]~output_o\;

ww_f(7) <= \f[7]~output_o\;

ww_f(6) <= \f[6]~output_o\;

ww_f(5) <= \f[5]~output_o\;

ww_f(4) <= \f[4]~output_o\;

ww_f(3) <= \f[3]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(0) <= \f[0]~output_o\;

ww_dbg(31) <= \dbg[31]~output_o\;

ww_dbg(30) <= \dbg[30]~output_o\;

ww_dbg(29) <= \dbg[29]~output_o\;

ww_dbg(28) <= \dbg[28]~output_o\;

ww_dbg(27) <= \dbg[27]~output_o\;

ww_dbg(26) <= \dbg[26]~output_o\;

ww_dbg(25) <= \dbg[25]~output_o\;

ww_dbg(24) <= \dbg[24]~output_o\;

ww_dbg(23) <= \dbg[23]~output_o\;

ww_dbg(22) <= \dbg[22]~output_o\;

ww_dbg(21) <= \dbg[21]~output_o\;

ww_dbg(20) <= \dbg[20]~output_o\;

ww_dbg(19) <= \dbg[19]~output_o\;

ww_dbg(18) <= \dbg[18]~output_o\;

ww_dbg(17) <= \dbg[17]~output_o\;

ww_dbg(16) <= \dbg[16]~output_o\;

ww_dbg(15) <= \dbg[15]~output_o\;

ww_dbg(14) <= \dbg[14]~output_o\;

ww_dbg(13) <= \dbg[13]~output_o\;

ww_dbg(12) <= \dbg[12]~output_o\;

ww_dbg(11) <= \dbg[11]~output_o\;

ww_dbg(10) <= \dbg[10]~output_o\;

ww_dbg(9) <= \dbg[9]~output_o\;

ww_dbg(8) <= \dbg[8]~output_o\;

ww_dbg(7) <= \dbg[7]~output_o\;

ww_dbg(6) <= \dbg[6]~output_o\;

ww_dbg(5) <= \dbg[5]~output_o\;

ww_dbg(4) <= \dbg[4]~output_o\;

ww_dbg(3) <= \dbg[3]~output_o\;

ww_dbg(2) <= \dbg[2]~output_o\;

ww_dbg(1) <= \dbg[1]~output_o\;

ww_dbg(0) <= \dbg[0]~output_o\;

ww_t(0) <= \t[0]~output_o\;
END structure;


