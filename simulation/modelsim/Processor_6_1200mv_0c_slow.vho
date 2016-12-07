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

-- DATE "12/07/2016 18:14:03"

-- 
-- Device: Altera EP4CE15F23C6 Package FBGA484
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Processor IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	debug1 : OUT std_logic_vector(31 DOWNTO 0);
	debug2 : OUT std_logic_vector(31 DOWNTO 0);
	debug3 : OUT std_logic_vector(31 DOWNTO 0);
	debug4 : OUT std_logic_vector(31 DOWNTO 0);
	debug5 : OUT std_logic_vector(31 DOWNTO 0);
	debug6 : OUT std_logic_vector(31 DOWNTO 0);
	debugstate : OUT STD.STANDARD.integer
	);
END Processor;

-- Design Ports Information
-- debug1[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[10]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[11]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[13]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[14]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[15]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[16]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[17]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[18]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[19]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[20]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[21]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[22]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[23]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[24]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[25]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[26]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[27]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[28]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[29]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[30]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug1[31]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[9]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[12]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[15]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[16]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[17]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[18]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[19]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[20]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[21]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[22]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[23]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[24]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[26]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[27]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[28]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[29]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[30]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug2[31]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[3]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[8]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[10]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[12]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[13]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[15]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[16]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[18]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[19]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[20]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[21]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[22]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[24]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[25]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[26]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[27]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[28]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[29]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug3[31]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[1]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[10]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[11]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[12]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[13]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[14]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[15]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[16]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[17]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[18]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[19]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[20]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[21]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[23]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[24]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[25]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[26]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[27]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[28]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[29]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[30]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug4[31]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[10]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[11]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[14]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[15]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[16]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[18]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[19]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[20]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[21]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[22]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[23]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[24]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[25]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[26]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[27]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[28]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[29]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[30]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug5[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[18]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[19]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[20]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[22]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[23]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[24]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[25]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[26]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[27]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[28]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[29]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[30]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug6[31]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[8]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[11]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[13]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[14]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[16]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[19]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[20]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[21]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[22]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[23]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[25]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[26]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[27]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[28]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[29]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[30]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debugstate[31]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_debug1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug5 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug6 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debugstate : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debug1[0]~output_o\ : std_logic;
SIGNAL \debug1[1]~output_o\ : std_logic;
SIGNAL \debug1[2]~output_o\ : std_logic;
SIGNAL \debug1[3]~output_o\ : std_logic;
SIGNAL \debug1[4]~output_o\ : std_logic;
SIGNAL \debug1[5]~output_o\ : std_logic;
SIGNAL \debug1[6]~output_o\ : std_logic;
SIGNAL \debug1[7]~output_o\ : std_logic;
SIGNAL \debug1[8]~output_o\ : std_logic;
SIGNAL \debug1[9]~output_o\ : std_logic;
SIGNAL \debug1[10]~output_o\ : std_logic;
SIGNAL \debug1[11]~output_o\ : std_logic;
SIGNAL \debug1[12]~output_o\ : std_logic;
SIGNAL \debug1[13]~output_o\ : std_logic;
SIGNAL \debug1[14]~output_o\ : std_logic;
SIGNAL \debug1[15]~output_o\ : std_logic;
SIGNAL \debug1[16]~output_o\ : std_logic;
SIGNAL \debug1[17]~output_o\ : std_logic;
SIGNAL \debug1[18]~output_o\ : std_logic;
SIGNAL \debug1[19]~output_o\ : std_logic;
SIGNAL \debug1[20]~output_o\ : std_logic;
SIGNAL \debug1[21]~output_o\ : std_logic;
SIGNAL \debug1[22]~output_o\ : std_logic;
SIGNAL \debug1[23]~output_o\ : std_logic;
SIGNAL \debug1[24]~output_o\ : std_logic;
SIGNAL \debug1[25]~output_o\ : std_logic;
SIGNAL \debug1[26]~output_o\ : std_logic;
SIGNAL \debug1[27]~output_o\ : std_logic;
SIGNAL \debug1[28]~output_o\ : std_logic;
SIGNAL \debug1[29]~output_o\ : std_logic;
SIGNAL \debug1[30]~output_o\ : std_logic;
SIGNAL \debug1[31]~output_o\ : std_logic;
SIGNAL \debug2[0]~output_o\ : std_logic;
SIGNAL \debug2[1]~output_o\ : std_logic;
SIGNAL \debug2[2]~output_o\ : std_logic;
SIGNAL \debug2[3]~output_o\ : std_logic;
SIGNAL \debug2[4]~output_o\ : std_logic;
SIGNAL \debug2[5]~output_o\ : std_logic;
SIGNAL \debug2[6]~output_o\ : std_logic;
SIGNAL \debug2[7]~output_o\ : std_logic;
SIGNAL \debug2[8]~output_o\ : std_logic;
SIGNAL \debug2[9]~output_o\ : std_logic;
SIGNAL \debug2[10]~output_o\ : std_logic;
SIGNAL \debug2[11]~output_o\ : std_logic;
SIGNAL \debug2[12]~output_o\ : std_logic;
SIGNAL \debug2[13]~output_o\ : std_logic;
SIGNAL \debug2[14]~output_o\ : std_logic;
SIGNAL \debug2[15]~output_o\ : std_logic;
SIGNAL \debug2[16]~output_o\ : std_logic;
SIGNAL \debug2[17]~output_o\ : std_logic;
SIGNAL \debug2[18]~output_o\ : std_logic;
SIGNAL \debug2[19]~output_o\ : std_logic;
SIGNAL \debug2[20]~output_o\ : std_logic;
SIGNAL \debug2[21]~output_o\ : std_logic;
SIGNAL \debug2[22]~output_o\ : std_logic;
SIGNAL \debug2[23]~output_o\ : std_logic;
SIGNAL \debug2[24]~output_o\ : std_logic;
SIGNAL \debug2[25]~output_o\ : std_logic;
SIGNAL \debug2[26]~output_o\ : std_logic;
SIGNAL \debug2[27]~output_o\ : std_logic;
SIGNAL \debug2[28]~output_o\ : std_logic;
SIGNAL \debug2[29]~output_o\ : std_logic;
SIGNAL \debug2[30]~output_o\ : std_logic;
SIGNAL \debug2[31]~output_o\ : std_logic;
SIGNAL \debug3[0]~output_o\ : std_logic;
SIGNAL \debug3[1]~output_o\ : std_logic;
SIGNAL \debug3[2]~output_o\ : std_logic;
SIGNAL \debug3[3]~output_o\ : std_logic;
SIGNAL \debug3[4]~output_o\ : std_logic;
SIGNAL \debug3[5]~output_o\ : std_logic;
SIGNAL \debug3[6]~output_o\ : std_logic;
SIGNAL \debug3[7]~output_o\ : std_logic;
SIGNAL \debug3[8]~output_o\ : std_logic;
SIGNAL \debug3[9]~output_o\ : std_logic;
SIGNAL \debug3[10]~output_o\ : std_logic;
SIGNAL \debug3[11]~output_o\ : std_logic;
SIGNAL \debug3[12]~output_o\ : std_logic;
SIGNAL \debug3[13]~output_o\ : std_logic;
SIGNAL \debug3[14]~output_o\ : std_logic;
SIGNAL \debug3[15]~output_o\ : std_logic;
SIGNAL \debug3[16]~output_o\ : std_logic;
SIGNAL \debug3[17]~output_o\ : std_logic;
SIGNAL \debug3[18]~output_o\ : std_logic;
SIGNAL \debug3[19]~output_o\ : std_logic;
SIGNAL \debug3[20]~output_o\ : std_logic;
SIGNAL \debug3[21]~output_o\ : std_logic;
SIGNAL \debug3[22]~output_o\ : std_logic;
SIGNAL \debug3[23]~output_o\ : std_logic;
SIGNAL \debug3[24]~output_o\ : std_logic;
SIGNAL \debug3[25]~output_o\ : std_logic;
SIGNAL \debug3[26]~output_o\ : std_logic;
SIGNAL \debug3[27]~output_o\ : std_logic;
SIGNAL \debug3[28]~output_o\ : std_logic;
SIGNAL \debug3[29]~output_o\ : std_logic;
SIGNAL \debug3[30]~output_o\ : std_logic;
SIGNAL \debug3[31]~output_o\ : std_logic;
SIGNAL \debug4[0]~output_o\ : std_logic;
SIGNAL \debug4[1]~output_o\ : std_logic;
SIGNAL \debug4[2]~output_o\ : std_logic;
SIGNAL \debug4[3]~output_o\ : std_logic;
SIGNAL \debug4[4]~output_o\ : std_logic;
SIGNAL \debug4[5]~output_o\ : std_logic;
SIGNAL \debug4[6]~output_o\ : std_logic;
SIGNAL \debug4[7]~output_o\ : std_logic;
SIGNAL \debug4[8]~output_o\ : std_logic;
SIGNAL \debug4[9]~output_o\ : std_logic;
SIGNAL \debug4[10]~output_o\ : std_logic;
SIGNAL \debug4[11]~output_o\ : std_logic;
SIGNAL \debug4[12]~output_o\ : std_logic;
SIGNAL \debug4[13]~output_o\ : std_logic;
SIGNAL \debug4[14]~output_o\ : std_logic;
SIGNAL \debug4[15]~output_o\ : std_logic;
SIGNAL \debug4[16]~output_o\ : std_logic;
SIGNAL \debug4[17]~output_o\ : std_logic;
SIGNAL \debug4[18]~output_o\ : std_logic;
SIGNAL \debug4[19]~output_o\ : std_logic;
SIGNAL \debug4[20]~output_o\ : std_logic;
SIGNAL \debug4[21]~output_o\ : std_logic;
SIGNAL \debug4[22]~output_o\ : std_logic;
SIGNAL \debug4[23]~output_o\ : std_logic;
SIGNAL \debug4[24]~output_o\ : std_logic;
SIGNAL \debug4[25]~output_o\ : std_logic;
SIGNAL \debug4[26]~output_o\ : std_logic;
SIGNAL \debug4[27]~output_o\ : std_logic;
SIGNAL \debug4[28]~output_o\ : std_logic;
SIGNAL \debug4[29]~output_o\ : std_logic;
SIGNAL \debug4[30]~output_o\ : std_logic;
SIGNAL \debug4[31]~output_o\ : std_logic;
SIGNAL \debug5[0]~output_o\ : std_logic;
SIGNAL \debug5[1]~output_o\ : std_logic;
SIGNAL \debug5[2]~output_o\ : std_logic;
SIGNAL \debug5[3]~output_o\ : std_logic;
SIGNAL \debug5[4]~output_o\ : std_logic;
SIGNAL \debug5[5]~output_o\ : std_logic;
SIGNAL \debug5[6]~output_o\ : std_logic;
SIGNAL \debug5[7]~output_o\ : std_logic;
SIGNAL \debug5[8]~output_o\ : std_logic;
SIGNAL \debug5[9]~output_o\ : std_logic;
SIGNAL \debug5[10]~output_o\ : std_logic;
SIGNAL \debug5[11]~output_o\ : std_logic;
SIGNAL \debug5[12]~output_o\ : std_logic;
SIGNAL \debug5[13]~output_o\ : std_logic;
SIGNAL \debug5[14]~output_o\ : std_logic;
SIGNAL \debug5[15]~output_o\ : std_logic;
SIGNAL \debug5[16]~output_o\ : std_logic;
SIGNAL \debug5[17]~output_o\ : std_logic;
SIGNAL \debug5[18]~output_o\ : std_logic;
SIGNAL \debug5[19]~output_o\ : std_logic;
SIGNAL \debug5[20]~output_o\ : std_logic;
SIGNAL \debug5[21]~output_o\ : std_logic;
SIGNAL \debug5[22]~output_o\ : std_logic;
SIGNAL \debug5[23]~output_o\ : std_logic;
SIGNAL \debug5[24]~output_o\ : std_logic;
SIGNAL \debug5[25]~output_o\ : std_logic;
SIGNAL \debug5[26]~output_o\ : std_logic;
SIGNAL \debug5[27]~output_o\ : std_logic;
SIGNAL \debug5[28]~output_o\ : std_logic;
SIGNAL \debug5[29]~output_o\ : std_logic;
SIGNAL \debug5[30]~output_o\ : std_logic;
SIGNAL \debug5[31]~output_o\ : std_logic;
SIGNAL \debug6[0]~output_o\ : std_logic;
SIGNAL \debug6[1]~output_o\ : std_logic;
SIGNAL \debug6[2]~output_o\ : std_logic;
SIGNAL \debug6[3]~output_o\ : std_logic;
SIGNAL \debug6[4]~output_o\ : std_logic;
SIGNAL \debug6[5]~output_o\ : std_logic;
SIGNAL \debug6[6]~output_o\ : std_logic;
SIGNAL \debug6[7]~output_o\ : std_logic;
SIGNAL \debug6[8]~output_o\ : std_logic;
SIGNAL \debug6[9]~output_o\ : std_logic;
SIGNAL \debug6[10]~output_o\ : std_logic;
SIGNAL \debug6[11]~output_o\ : std_logic;
SIGNAL \debug6[12]~output_o\ : std_logic;
SIGNAL \debug6[13]~output_o\ : std_logic;
SIGNAL \debug6[14]~output_o\ : std_logic;
SIGNAL \debug6[15]~output_o\ : std_logic;
SIGNAL \debug6[16]~output_o\ : std_logic;
SIGNAL \debug6[17]~output_o\ : std_logic;
SIGNAL \debug6[18]~output_o\ : std_logic;
SIGNAL \debug6[19]~output_o\ : std_logic;
SIGNAL \debug6[20]~output_o\ : std_logic;
SIGNAL \debug6[21]~output_o\ : std_logic;
SIGNAL \debug6[22]~output_o\ : std_logic;
SIGNAL \debug6[23]~output_o\ : std_logic;
SIGNAL \debug6[24]~output_o\ : std_logic;
SIGNAL \debug6[25]~output_o\ : std_logic;
SIGNAL \debug6[26]~output_o\ : std_logic;
SIGNAL \debug6[27]~output_o\ : std_logic;
SIGNAL \debug6[28]~output_o\ : std_logic;
SIGNAL \debug6[29]~output_o\ : std_logic;
SIGNAL \debug6[30]~output_o\ : std_logic;
SIGNAL \debug6[31]~output_o\ : std_logic;
SIGNAL \debugstate[0]~output_o\ : std_logic;
SIGNAL \debugstate[1]~output_o\ : std_logic;
SIGNAL \debugstate[2]~output_o\ : std_logic;
SIGNAL \debugstate[3]~output_o\ : std_logic;
SIGNAL \debugstate[4]~output_o\ : std_logic;
SIGNAL \debugstate[5]~output_o\ : std_logic;
SIGNAL \debugstate[6]~output_o\ : std_logic;
SIGNAL \debugstate[7]~output_o\ : std_logic;
SIGNAL \debugstate[8]~output_o\ : std_logic;
SIGNAL \debugstate[9]~output_o\ : std_logic;
SIGNAL \debugstate[10]~output_o\ : std_logic;
SIGNAL \debugstate[11]~output_o\ : std_logic;
SIGNAL \debugstate[12]~output_o\ : std_logic;
SIGNAL \debugstate[13]~output_o\ : std_logic;
SIGNAL \debugstate[14]~output_o\ : std_logic;
SIGNAL \debugstate[15]~output_o\ : std_logic;
SIGNAL \debugstate[16]~output_o\ : std_logic;
SIGNAL \debugstate[17]~output_o\ : std_logic;
SIGNAL \debugstate[18]~output_o\ : std_logic;
SIGNAL \debugstate[19]~output_o\ : std_logic;
SIGNAL \debugstate[20]~output_o\ : std_logic;
SIGNAL \debugstate[21]~output_o\ : std_logic;
SIGNAL \debugstate[22]~output_o\ : std_logic;
SIGNAL \debugstate[23]~output_o\ : std_logic;
SIGNAL \debugstate[24]~output_o\ : std_logic;
SIGNAL \debugstate[25]~output_o\ : std_logic;
SIGNAL \debugstate[26]~output_o\ : std_logic;
SIGNAL \debugstate[27]~output_o\ : std_logic;
SIGNAL \debugstate[28]~output_o\ : std_logic;
SIGNAL \debugstate[29]~output_o\ : std_logic;
SIGNAL \debugstate[30]~output_o\ : std_logic;
SIGNAL \debugstate[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fu_controlunit|Equal5~7_combout\ : std_logic;
SIGNAL \fu_controlunit|WriteReg~0_combout\ : std_logic;
SIGNAL \fu_controlunit|WriteReg~q\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \fu_controlunit|Equal5~5_combout\ : std_logic;
SIGNAL \fu_controlunit|IorD~0_combout\ : std_logic;
SIGNAL \fu_controlunit|IorD~q\ : std_logic;
SIGNAL \fu_alucontrol|Mux2~0_combout\ : std_logic;
SIGNAL \fu_alucontrol|Mux5~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal5~0_combout\ : std_logic;
SIGNAL \fu_alucontrol|Mux3~1_combout\ : std_logic;
SIGNAL \fu_alucontrol|Mux3~2_combout\ : std_logic;
SIGNAL \fu_controlunit|OrigBALU~0_combout\ : std_logic;
SIGNAL \fu_controlunit|OrigBALU~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal5~6_combout\ : std_logic;
SIGNAL \fu_controlunit|RegDst~q\ : std_logic;
SIGNAL \fu_alucontrol|Mux3~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux30~0_combout\ : std_logic;
SIGNAL \fu_controlunit|WideOr0~0_combout\ : std_logic;
SIGNAL \fu_controlunit|OrigAALU~q\ : std_logic;
SIGNAL \fu_pc|q[2]~0_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal5~4_combout\ : std_logic;
SIGNAL \fu_pc|q[8]~26_combout\ : std_logic;
SIGNAL \fu_pc|q[7]~5_combout\ : std_logic;
SIGNAL \fu_pc|q[8]~6_combout\ : std_logic;
SIGNAL \fu_pc|q[22]~20_combout\ : std_logic;
SIGNAL \fu_pc|q[20]~18_combout\ : std_logic;
SIGNAL \fu_pc|q[15]~13_combout\ : std_logic;
SIGNAL \fu_pc|q[11]~9_combout\ : std_logic;
SIGNAL \fu_pc|q[10]~8_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[9]~9_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[8]~8_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[6]~6_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[5]~5_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[4]~4_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[3]~3_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[2]~2_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[7]~7_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[10]~22_combout\ : std_logic;
SIGNAL \fu_mux4|Mux21~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux21~1_combout\ : std_logic;
SIGNAL \fu_alu|Add0~32_combout\ : std_logic;
SIGNAL \fu_mux4|Mux22~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux22~1_combout\ : std_logic;
SIGNAL \fu_alu|Add0~29_combout\ : std_logic;
SIGNAL \fu_mux4|Mux23~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux23~1_combout\ : std_logic;
SIGNAL \fu_alu|Add0~26_combout\ : std_logic;
SIGNAL \fu_mux4|Mux24~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux24~1_combout\ : std_logic;
SIGNAL \fu_alu|Add0~23_combout\ : std_logic;
SIGNAL \fu_alu|Add0~20_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[6]~26_combout\ : std_logic;
SIGNAL \fu_alu|Add0~17_combout\ : std_logic;
SIGNAL \fu_pc|q[5]~3_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[5]~27_combout\ : std_logic;
SIGNAL \fu_alu|Add0~14_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[4]~28_combout\ : std_logic;
SIGNAL \fu_mux4|Mux28~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux28~1_combout\ : std_logic;
SIGNAL \fu_alu|Add0~11_combout\ : std_logic;
SIGNAL \fu_mux4|Mux29~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux29~1_combout\ : std_logic;
SIGNAL \fu_alu|Add0~8_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[1]~1_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[5][1]~48_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~12_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[6][1]~35_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[6][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~14_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[4][1]~36_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[4][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~12_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~15_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[7][1]~37_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[7][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~13_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[5][1]~34_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[5][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~13_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~10_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[3][1]~41_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[3][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~4_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[0][1]~40_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[0][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~6_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[1][1]~39_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[1][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~14_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~8_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[2][1]~38_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[2][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~15_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~16_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[15][1]~51_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[15][1]~45_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[15][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~16_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[13][1]~42_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[13][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[12][1]~50_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[12][1]~44_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[12][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[14][1]~49_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[14][1]~43_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[14][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~17_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~18_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][1]~52_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~5_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~7_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~10_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][1]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~11_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][1]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|Decoder0~9_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~11_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~19_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[26][1]~47_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[30][1]~21_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[30][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[22][1]~46_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[18][1]~20_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[18][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[26][1]~19_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[26][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~0_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[22][1]~18_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[22][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~1_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[29][1]~25_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[29][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[25][1]~22_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[25][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[17][1]~24_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[17][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[21][1]~23_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[21][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~2_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~3_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[28][1]~29_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[28][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[20][1]~26_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[20][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[16][1]~28_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[16][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[24][1]~27_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[24][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~4_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~5_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~6_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[19][1]~32_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[19][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[23][1]~31_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[23][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~7_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[31][1]~33_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[31][1]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[27][1]~30_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[27][1]~q\ : std_logic;
SIGNAL \fu_registerbank|Mux30~8_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~9_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux30~20_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[1]~31_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[0]~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux31~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~2_cout\ : std_logic;
SIGNAL \fu_alu|Add0~4\ : std_logic;
SIGNAL \fu_alu|Add0~7\ : std_logic;
SIGNAL \fu_alu|Add0~10\ : std_logic;
SIGNAL \fu_alu|Add0~13\ : std_logic;
SIGNAL \fu_alu|Add0~16\ : std_logic;
SIGNAL \fu_alu|Add0~19\ : std_logic;
SIGNAL \fu_alu|Add0~22\ : std_logic;
SIGNAL \fu_alu|Add0~25\ : std_logic;
SIGNAL \fu_alu|Add0~28\ : std_logic;
SIGNAL \fu_alu|Add0~31\ : std_logic;
SIGNAL \fu_alu|Add0~33_combout\ : std_logic;
SIGNAL \fu_alu|Mux23~8_combout\ : std_logic;
SIGNAL \fu_alu|Mux21~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux21~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[10]~10_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[11]~21_combout\ : std_logic;
SIGNAL \fu_mux4|Mux20~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux20~1_combout\ : std_logic;
SIGNAL \fu_alu|Mux20~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~35_combout\ : std_logic;
SIGNAL \fu_alu|Add0~34\ : std_logic;
SIGNAL \fu_alu|Add0~36_combout\ : std_logic;
SIGNAL \fu_alu|Mux20~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[11]~11_combout\ : std_logic;
SIGNAL \fu_mux4|Mux19~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux19~1_combout\ : std_logic;
SIGNAL \fu_pc|q[12]~10_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[12]~20_combout\ : std_logic;
SIGNAL \fu_alu|Mux19~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~38_combout\ : std_logic;
SIGNAL \fu_alu|Add0~37\ : std_logic;
SIGNAL \fu_alu|Add0~39_combout\ : std_logic;
SIGNAL \fu_alu|Mux19~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[12]~12_combout\ : std_logic;
SIGNAL \fu_mux4|Mux18~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux18~1_combout\ : std_logic;
SIGNAL \fu_pc|q[13]~11_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[13]~19_combout\ : std_logic;
SIGNAL \fu_alu|Mux18~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~41_combout\ : std_logic;
SIGNAL \fu_alu|Add0~40\ : std_logic;
SIGNAL \fu_alu|Add0~42_combout\ : std_logic;
SIGNAL \fu_alu|Mux18~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[13]~13_combout\ : std_logic;
SIGNAL \fu_mux4|Mux17~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux17~1_combout\ : std_logic;
SIGNAL \fu_pc|q[14]~12_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[14]~18_combout\ : std_logic;
SIGNAL \fu_alu|Mux17~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~44_combout\ : std_logic;
SIGNAL \fu_alu|Add0~43\ : std_logic;
SIGNAL \fu_alu|Add0~45_combout\ : std_logic;
SIGNAL \fu_alu|Mux17~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[14]~14_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[15]~17_combout\ : std_logic;
SIGNAL \fu_mux4|Mux16~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux16~1_combout\ : std_logic;
SIGNAL \fu_alu|Mux16~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~47_combout\ : std_logic;
SIGNAL \fu_alu|Add0~46\ : std_logic;
SIGNAL \fu_alu|Add0~48_combout\ : std_logic;
SIGNAL \fu_alu|Mux16~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[15]~15_combout\ : std_logic;
SIGNAL \fu_mux4|Mux15~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux15~1_combout\ : std_logic;
SIGNAL \fu_pc|q[16]~14_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[16]~16_combout\ : std_logic;
SIGNAL \fu_alu|Mux15~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~50_combout\ : std_logic;
SIGNAL \fu_alu|Add0~49\ : std_logic;
SIGNAL \fu_alu|Add0~51_combout\ : std_logic;
SIGNAL \fu_alu|Mux15~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[16]~16_combout\ : std_logic;
SIGNAL \fu_mux4|Mux14~0_combout\ : std_logic;
SIGNAL \fu_pc|q[17]~15_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[17]~15_combout\ : std_logic;
SIGNAL \fu_alu|Mux14~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~53_combout\ : std_logic;
SIGNAL \fu_alu|Add0~52\ : std_logic;
SIGNAL \fu_alu|Add0~54_combout\ : std_logic;
SIGNAL \fu_alu|Mux14~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[17]~17_combout\ : std_logic;
SIGNAL \fu_pc|q[18]~16_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[18]~14_combout\ : std_logic;
SIGNAL \fu_mux4|Mux13~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux13~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~56_combout\ : std_logic;
SIGNAL \fu_alu|Add0~55\ : std_logic;
SIGNAL \fu_alu|Add0~57_combout\ : std_logic;
SIGNAL \fu_alu|Mux13~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[18]~18_combout\ : std_logic;
SIGNAL \fu_pc|q[19]~17_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[19]~13_combout\ : std_logic;
SIGNAL \fu_mux4|Mux12~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux12~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~59_combout\ : std_logic;
SIGNAL \fu_alu|Add0~58\ : std_logic;
SIGNAL \fu_alu|Add0~60_combout\ : std_logic;
SIGNAL \fu_alu|Mux12~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[19]~19_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[20]~12_combout\ : std_logic;
SIGNAL \fu_mux4|Mux11~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux11~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~62_combout\ : std_logic;
SIGNAL \fu_alu|Add0~61\ : std_logic;
SIGNAL \fu_alu|Add0~63_combout\ : std_logic;
SIGNAL \fu_alu|Mux11~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[20]~20_combout\ : std_logic;
SIGNAL \fu_pc|q[21]~19_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[21]~11_combout\ : std_logic;
SIGNAL \fu_mux4|Mux10~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux10~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~65_combout\ : std_logic;
SIGNAL \fu_alu|Add0~64\ : std_logic;
SIGNAL \fu_alu|Add0~66_combout\ : std_logic;
SIGNAL \fu_alu|Mux10~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[21]~21_combout\ : std_logic;
SIGNAL \fu_mdr|q[25]~feeder_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[22]~10_combout\ : std_logic;
SIGNAL \fu_mux4|Mux9~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux9~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~68_combout\ : std_logic;
SIGNAL \fu_alu|Add0~67\ : std_logic;
SIGNAL \fu_alu|Add0~69_combout\ : std_logic;
SIGNAL \fu_alu|Mux9~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[22]~22_combout\ : std_logic;
SIGNAL \fu_mux4|Mux8~0_combout\ : std_logic;
SIGNAL \fu_pc|q[23]~21_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[23]~9_combout\ : std_logic;
SIGNAL \fu_alu|Mux8~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~71_combout\ : std_logic;
SIGNAL \fu_alu|Add0~70\ : std_logic;
SIGNAL \fu_alu|Add0~72_combout\ : std_logic;
SIGNAL \fu_alu|Mux8~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[23]~23_combout\ : std_logic;
SIGNAL \fu_mux4|Mux7~0_combout\ : std_logic;
SIGNAL \fu_pc|q[24]~22_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[24]~8_combout\ : std_logic;
SIGNAL \fu_alu|Mux7~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~74_combout\ : std_logic;
SIGNAL \fu_alu|Add0~73\ : std_logic;
SIGNAL \fu_alu|Add0~75_combout\ : std_logic;
SIGNAL \fu_alu|Mux7~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[24]~24_combout\ : std_logic;
SIGNAL \fu_pc|q[25]~23_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[25]~7_combout\ : std_logic;
SIGNAL \fu_mux4|Mux6~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~77_combout\ : std_logic;
SIGNAL \fu_alu|Add0~76\ : std_logic;
SIGNAL \fu_alu|Add0~78_combout\ : std_logic;
SIGNAL \fu_alu|Mux6~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux6~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[25]~25_combout\ : std_logic;
SIGNAL \fu_mux4|Mux5~0_combout\ : std_logic;
SIGNAL \fu_pc|q[26]~24_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[26]~6_combout\ : std_logic;
SIGNAL \fu_alu|Mux5~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~80_combout\ : std_logic;
SIGNAL \fu_alu|Add0~79\ : std_logic;
SIGNAL \fu_alu|Add0~81_combout\ : std_logic;
SIGNAL \fu_alu|Mux5~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[26]~26_combout\ : std_logic;
SIGNAL \fu_mdr|q[27]~feeder_combout\ : std_logic;
SIGNAL \fu_pc|q[27]~28_combout\ : std_logic;
SIGNAL \fu_mux4|Mux4~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux4~0_combout\ : std_logic;
SIGNAL \fu_pc|q[27]~25_combout\ : std_logic;
SIGNAL \fu_pc|q[27]~feeder_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[27]~5_combout\ : std_logic;
SIGNAL \fu_alu|Add0~83_combout\ : std_logic;
SIGNAL \fu_alu|Add0~82\ : std_logic;
SIGNAL \fu_alu|Add0~84_combout\ : std_logic;
SIGNAL \fu_alu|Mux4~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[27]~27_combout\ : std_logic;
SIGNAL \fu_mux4|Mux3~0_combout\ : std_logic;
SIGNAL \fu_mux5|Mux3~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~86_combout\ : std_logic;
SIGNAL \fu_alu|Add0~85\ : std_logic;
SIGNAL \fu_alu|Add0~87_combout\ : std_logic;
SIGNAL \fu_mux5|Mux3~1_combout\ : std_logic;
SIGNAL \fu_pc|q[29]~27_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[28]~4_combout\ : std_logic;
SIGNAL \fu_alu|Mux3~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux3~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[28]~28_combout\ : std_logic;
SIGNAL \fu_mux5|Mux2~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux2~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~89_combout\ : std_logic;
SIGNAL \fu_alu|Add0~88\ : std_logic;
SIGNAL \fu_alu|Add0~90_combout\ : std_logic;
SIGNAL \fu_mux5|Mux2~1_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[29]~3_combout\ : std_logic;
SIGNAL \fu_alu|Mux2~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux2~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[29]~29_combout\ : std_logic;
SIGNAL \fu_mux4|Mux1~0_combout\ : std_logic;
SIGNAL \fu_mux5|Mux1~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~92_combout\ : std_logic;
SIGNAL \fu_alu|Add0~91\ : std_logic;
SIGNAL \fu_alu|Add0~93_combout\ : std_logic;
SIGNAL \fu_mux5|Mux1~1_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[30]~2_combout\ : std_logic;
SIGNAL \fu_alu|Mux1~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux1~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[30]~30_combout\ : std_logic;
SIGNAL \fu_mdr|q[18]~feeder_combout\ : std_logic;
SIGNAL \fu_mdr|q[17]~feeder_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[9]~23_combout\ : std_logic;
SIGNAL \fu_alu|Add0~30_combout\ : std_logic;
SIGNAL \fu_alu|Mux22~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux22~1_combout\ : std_logic;
SIGNAL \fu_pc|q[9]~7_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[9]~9_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[8]~24_combout\ : std_logic;
SIGNAL \fu_alu|Add0~27_combout\ : std_logic;
SIGNAL \fu_alu|Mux23~9_combout\ : std_logic;
SIGNAL \fu_alu|Mux23~10_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[8]~8_combout\ : std_logic;
SIGNAL \fu_mdr|q[21]~feeder_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[7]~25_combout\ : std_logic;
SIGNAL \fu_alu|Mux24~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~24_combout\ : std_logic;
SIGNAL \fu_alu|Mux24~1_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[7]~7_combout\ : std_logic;
SIGNAL \fu_mux4|Mux25~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux25~1_combout\ : std_logic;
SIGNAL \fu_alu|Mux25~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~21_combout\ : std_logic;
SIGNAL \fu_alu|Mux25~1_combout\ : std_logic;
SIGNAL \fu_pc|q[6]~4_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[6]~6_combout\ : std_logic;
SIGNAL \fu_mux1|muxout[4]~4_combout\ : std_logic;
SIGNAL \fu_mux4|Mux26~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux26~1_combout\ : std_logic;
SIGNAL \fu_alu|Mux26~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~18_combout\ : std_logic;
SIGNAL \fu_alu|Mux26~1_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[5]~5_combout\ : std_logic;
SIGNAL \fu_mux4|Mux27~0_combout\ : std_logic;
SIGNAL \fu_mux4|Mux27~1_combout\ : std_logic;
SIGNAL \fu_alu|Mux27~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~15_combout\ : std_logic;
SIGNAL \fu_alu|Mux27~1_combout\ : std_logic;
SIGNAL \fu_pc|q[4]~2_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[4]~4_combout\ : std_logic;
SIGNAL \fu_mux1|muxout[3]~3_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[3]~29_combout\ : std_logic;
SIGNAL \fu_alu|Mux28~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~12_combout\ : std_logic;
SIGNAL \fu_alu|Mux28~1_combout\ : std_logic;
SIGNAL \fu_pc|q[3]~1_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[3]~3_combout\ : std_logic;
SIGNAL \fu_mux1|muxout[2]~2_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[2]~30_combout\ : std_logic;
SIGNAL \fu_alu|Add0~9_combout\ : std_logic;
SIGNAL \fu_alu|Mux29~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux29~1_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[2]~2_combout\ : std_logic;
SIGNAL \fu_mux1|muxout[1]~1_combout\ : std_logic;
SIGNAL \fu_mdr|q[16]~feeder_combout\ : std_logic;
SIGNAL \fu_mux1|muxout[0]~0_combout\ : std_logic;
SIGNAL \fu_mdr|q[19]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~10_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~11_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~17_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~18_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~14_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~15_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~12_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~13_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~16_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~19_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~7_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~8_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~0_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~1_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~4_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~5_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~2_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~3_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~6_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~9_combout\ : std_logic;
SIGNAL \fu_registerbank|Mux62~20_combout\ : std_logic;
SIGNAL \fu_mux4|Mux30~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~5_combout\ : std_logic;
SIGNAL \fu_alu|Add0~6_combout\ : std_logic;
SIGNAL \fu_alu|Mux30~1_combout\ : std_logic;
SIGNAL \fu_alu|Mux30~2_combout\ : std_logic;
SIGNAL \fu_mux5|Mux30~0_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[1]~1_combout\ : std_logic;
SIGNAL \fu_alucontrol|Mux5~0_combout\ : std_logic;
SIGNAL \fu_alucontrol|Mux4~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~3_combout\ : std_logic;
SIGNAL \fu_alu|Mux31~3_combout\ : std_logic;
SIGNAL \fu_alu|Mux31~4_combout\ : std_logic;
SIGNAL \fu_alu|Mux31~5_combout\ : std_logic;
SIGNAL \fu_alu|Mux31~7_combout\ : std_logic;
SIGNAL \fu_alu|Mux31~2_combout\ : std_logic;
SIGNAL \fu_mux4|Mux0~0_combout\ : std_logic;
SIGNAL \fu_mux5|Mux0~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux0~0_combout\ : std_logic;
SIGNAL \fu_alu|Add0~95_combout\ : std_logic;
SIGNAL \fu_alu|Add0~94\ : std_logic;
SIGNAL \fu_alu|Add0~96_combout\ : std_logic;
SIGNAL \fu_mux5|Mux0~1_combout\ : std_logic;
SIGNAL \fu_mux3|muxout[31]~1_combout\ : std_logic;
SIGNAL \fu_alu|LessThan0~1_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~3_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~5_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~7_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~9_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~11_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~13_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~15_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~17_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~19_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~21_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~23_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~25_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~27_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~29_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~31_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~33_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~35_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~37_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~39_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~41_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~43_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~45_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~47_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~49_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~51_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~53_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~55_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~57_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~59_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~61_cout\ : std_logic;
SIGNAL \fu_alu|LessThan0~62_combout\ : std_logic;
SIGNAL \fu_alu|Mux31~6_combout\ : std_logic;
SIGNAL \fu_mux5|Mux31~0_combout\ : std_logic;
SIGNAL \fu_mux5|Mux31~1_combout\ : std_logic;
SIGNAL \fu_mux0|muxout[0]~0_combout\ : std_logic;
SIGNAL \fu_alucontrol|Mux1~0_combout\ : std_logic;
SIGNAL \fu_alu|Mux23~11_combout\ : std_logic;
SIGNAL \fu_alu|Mux0~1_combout\ : std_logic;
SIGNAL \fu_mux2|muxout[31]~31_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal4~0_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector3~0_combout\ : std_logic;
SIGNAL \fu_controlunit|CurrentState~5_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal5~8_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector3~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector3~2_combout\ : std_logic;
SIGNAL \fu_controlunit|ReadMem~0_combout\ : std_logic;
SIGNAL \fu_controlunit|ReadMem~q\ : std_logic;
SIGNAL \fu_mdr|q[2]~feeder_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal1~0_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal1~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal2~0_combout\ : std_logic;
SIGNAL \fu_controlunit|CurrentState~6_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector1~0_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector1~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector1~2_combout\ : std_logic;
SIGNAL \fu_controlunit|CurrentState~7_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector0~0_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector0~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal5~1_combout\ : std_logic;
SIGNAL \fu_controlunit|WriteMem~q\ : std_logic;
SIGNAL \MEM_writeenable~combout\ : std_logic;
SIGNAL \fu_controlunit|Equal4~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector2~2_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector2~0_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector2~1_combout\ : std_logic;
SIGNAL \fu_controlunit|Selector2~3_combout\ : std_logic;
SIGNAL \fu_controlunit|Equal5~2_combout\ : std_logic;
SIGNAL \fu_controlunit|MemtoReg~q\ : std_logic;
SIGNAL \fu_mux2|muxout[0]~0_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][0]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][0]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][2]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][2]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][3]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][3]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][4]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][4]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][5]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][5]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][6]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][6]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][7]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][7]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][8]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][8]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][9]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][9]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][10]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][10]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][11]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][11]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][12]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][12]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][13]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][13]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][14]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][14]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][15]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][15]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][16]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][16]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][17]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][17]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][18]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][18]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][19]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][19]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][20]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][20]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][21]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][21]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][22]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][22]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][23]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][23]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][24]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][24]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][25]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][25]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][26]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][26]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][27]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][27]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][28]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][28]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][29]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][29]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][30]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][30]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[8][31]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[8][31]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][0]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][0]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][2]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][2]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][3]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][3]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][4]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][4]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][5]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][5]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][6]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][6]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][7]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][7]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][8]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][8]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][9]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][9]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][10]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][10]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][11]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][11]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][12]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][12]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][13]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][13]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][14]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][14]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][15]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][15]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][16]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][16]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][17]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][17]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][18]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][18]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][19]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][19]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][20]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][20]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][21]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][21]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][22]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][22]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][23]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][23]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][24]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][24]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][25]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][25]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][26]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][26]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][27]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][27]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][28]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][28]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][29]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][29]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][30]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][30]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[9][31]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[9][31]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][0]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][0]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][2]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][2]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][3]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][3]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][4]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][4]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][5]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][5]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][6]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][6]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][7]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][7]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][8]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][8]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][9]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][9]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][10]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][10]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][11]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][11]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][12]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][12]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][13]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][13]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][14]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][14]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][15]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][15]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][16]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][16]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][17]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][17]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][18]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][18]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][19]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][19]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][20]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][20]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][21]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][21]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][22]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][22]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][23]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][23]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][24]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][24]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][25]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][25]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][26]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][26]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][27]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][27]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][28]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][28]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][29]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][29]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][30]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][30]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[10][31]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[10][31]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][0]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][0]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][2]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][2]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][3]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][4]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][5]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][5]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][6]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][7]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][8]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][9]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][10]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][11]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][11]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][12]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][13]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][14]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][15]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][16]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][17]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][18]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][18]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][19]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][19]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][20]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][20]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][21]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][22]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][23]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][24]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][25]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][25]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][26]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][26]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][27]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][28]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][29]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][29]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][30]~feeder_combout\ : std_logic;
SIGNAL \fu_registerbank|registers[11][30]~q\ : std_logic;
SIGNAL \fu_registerbank|registers[11][31]~q\ : std_logic;
SIGNAL \fu_controlunit|WritePCCond~q\ : std_logic;
SIGNAL \fu_controlunit|WritePC~0_combout\ : std_logic;
SIGNAL \fu_controlunit|WritePC~q\ : std_logic;
SIGNAL \fu_controlunit|Equal5~3_combout\ : std_logic;
SIGNAL \fu_controlunit|WriteIR~q\ : std_logic;
SIGNAL \fu_controlunit|OpALU\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fu_registerb|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_pc|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_controlunit|OrigBALU\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fu_registerbank|read2out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_registera|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_controlunit|OrigPC\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fu_mdr|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_controlunit|CurrentState\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_aluout|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_registerbank|read1out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fu_registerbank|ALT_INV_registers[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
debug1 <= ww_debug1;
debug2 <= ww_debug2;
debug3 <= ww_debug3;
debug4 <= ww_debug4;
debug5 <= ww_debug5;
debug6 <= ww_debug6;
debugstate <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_debugstate));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\fu_registerb|q\(8) & \fu_registerb|q\(7) & \fu_registerb|q\(6) & \fu_registerb|q\(5) & \fu_registerb|q\(4) & \fu_registerb|q\(3) & \fu_registerb|q\(2) & 
\fu_registerb|q\(1) & \fu_registerb|q\(0));

\fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fu_mux0|muxout[9]~9_combout\ & \fu_mux0|muxout[8]~8_combout\ & \fu_mux0|muxout[7]~7_combout\ & \fu_mux0|muxout[6]~6_combout\ & \fu_mux0|muxout[5]~5_combout\ & 
\fu_mux0|muxout[4]~4_combout\ & \fu_mux0|muxout[3]~3_combout\ & \fu_mux0|muxout[2]~2_combout\ & \fu_mux0|muxout[1]~1_combout\ & \fu_mux0|muxout[0]~0_combout\);

\fu_memory|altsyncram_component|auto_generated|q_a\(0) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\fu_memory|altsyncram_component|auto_generated|q_a\(1) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\fu_memory|altsyncram_component|auto_generated|q_a\(2) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\fu_memory|altsyncram_component|auto_generated|q_a\(3) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\fu_memory|altsyncram_component|auto_generated|q_a\(4) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\fu_memory|altsyncram_component|auto_generated|q_a\(5) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\fu_memory|altsyncram_component|auto_generated|q_a\(6) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\fu_memory|altsyncram_component|auto_generated|q_a\(7) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\fu_memory|altsyncram_component|auto_generated|q_a\(8) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ <= (\fu_registerb|q\(17) & \fu_registerb|q\(16) & \fu_registerb|q\(15) & \fu_registerb|q\(14) & \fu_registerb|q\(13) & \fu_registerb|q\(12) & \fu_registerb|q\(11) & 
\fu_registerb|q\(10) & \fu_registerb|q\(9));

\fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\fu_mux0|muxout[9]~9_combout\ & \fu_mux0|muxout[8]~8_combout\ & \fu_mux0|muxout[7]~7_combout\ & \fu_mux0|muxout[6]~6_combout\ & \fu_mux0|muxout[5]~5_combout\ & 
\fu_mux0|muxout[4]~4_combout\ & \fu_mux0|muxout[3]~3_combout\ & \fu_mux0|muxout[2]~2_combout\ & \fu_mux0|muxout[1]~1_combout\ & \fu_mux0|muxout[0]~0_combout\);

\fu_memory|altsyncram_component|auto_generated|q_a\(9) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\fu_memory|altsyncram_component|auto_generated|q_a\(10) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);
\fu_memory|altsyncram_component|auto_generated|q_a\(11) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(2);
\fu_memory|altsyncram_component|auto_generated|q_a\(12) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(3);
\fu_memory|altsyncram_component|auto_generated|q_a\(13) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(4);
\fu_memory|altsyncram_component|auto_generated|q_a\(14) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(5);
\fu_memory|altsyncram_component|auto_generated|q_a\(15) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(6);
\fu_memory|altsyncram_component|auto_generated|q_a\(16) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(7);
\fu_memory|altsyncram_component|auto_generated|q_a\(17) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(8);

\fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\fu_registerb|q\(26) & \fu_registerb|q\(25) & \fu_registerb|q\(24) & \fu_registerb|q\(23) & \fu_registerb|q\(22) & \fu_registerb|q\(21) & \fu_registerb|q\(20) & 
\fu_registerb|q\(19) & \fu_registerb|q\(18));

\fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\fu_mux0|muxout[9]~9_combout\ & \fu_mux0|muxout[8]~8_combout\ & \fu_mux0|muxout[7]~7_combout\ & \fu_mux0|muxout[6]~6_combout\ & \fu_mux0|muxout[5]~5_combout\ & 
\fu_mux0|muxout[4]~4_combout\ & \fu_mux0|muxout[3]~3_combout\ & \fu_mux0|muxout[2]~2_combout\ & \fu_mux0|muxout[1]~1_combout\ & \fu_mux0|muxout[0]~0_combout\);

\fu_memory|altsyncram_component|auto_generated|q_a\(18) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\fu_memory|altsyncram_component|auto_generated|q_a\(19) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\fu_memory|altsyncram_component|auto_generated|q_a\(20) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\fu_memory|altsyncram_component|auto_generated|q_a\(21) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\fu_memory|altsyncram_component|auto_generated|q_a\(22) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\fu_memory|altsyncram_component|auto_generated|q_a\(23) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\fu_memory|altsyncram_component|auto_generated|q_a\(24) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\fu_memory|altsyncram_component|auto_generated|q_a\(25) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\fu_memory|altsyncram_component|auto_generated|q_a\(26) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);

\fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \fu_registerb|q\(31) & \fu_registerb|q\(30) & \fu_registerb|q\(29) & \fu_registerb|q\(28) & \fu_registerb|q\(27));

\fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\fu_mux0|muxout[9]~9_combout\ & \fu_mux0|muxout[8]~8_combout\ & \fu_mux0|muxout[7]~7_combout\ & \fu_mux0|muxout[6]~6_combout\ & \fu_mux0|muxout[5]~5_combout\ & 
\fu_mux0|muxout[4]~4_combout\ & \fu_mux0|muxout[3]~3_combout\ & \fu_mux0|muxout[2]~2_combout\ & \fu_mux0|muxout[1]~1_combout\ & \fu_mux0|muxout[0]~0_combout\);

\fu_memory|altsyncram_component|auto_generated|q_a\(27) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\fu_memory|altsyncram_component|auto_generated|q_a\(28) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);
\fu_memory|altsyncram_component|auto_generated|q_a\(29) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(2);
\fu_memory|altsyncram_component|auto_generated|q_a\(30) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(3);
\fu_memory|altsyncram_component|auto_generated|q_a\(31) <= \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(4);

\fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & \fu_mux2|muxout[0]~0_combout\ & \fu_mux2|muxout[2]~2_combout\ & \fu_mux2|muxout[3]~3_combout\ & \fu_mux2|muxout[4]~4_combout\ & 
\fu_mux2|muxout[5]~5_combout\ & \fu_mux2|muxout[6]~6_combout\ & \fu_mux2|muxout[7]~7_combout\ & \fu_mux2|muxout[8]~8_combout\ & \fu_mux2|muxout[9]~9_combout\ & \fu_mux2|muxout[10]~10_combout\ & \fu_mux2|muxout[11]~11_combout\ & 
\fu_mux2|muxout[12]~12_combout\ & \fu_mux2|muxout[13]~13_combout\ & \fu_mux2|muxout[14]~14_combout\ & \fu_mux2|muxout[15]~15_combout\ & \fu_mux2|muxout[16]~16_combout\ & \fu_mux2|muxout[17]~17_combout\ & \fu_mux2|muxout[18]~18_combout\ & 
\fu_mux2|muxout[19]~19_combout\ & \fu_mux2|muxout[20]~20_combout\ & \fu_mux2|muxout[21]~21_combout\ & \fu_mux2|muxout[22]~22_combout\ & \fu_mux2|muxout[23]~23_combout\ & \fu_mux2|muxout[24]~24_combout\ & \fu_mux2|muxout[25]~25_combout\ & 
\fu_mux2|muxout[26]~26_combout\ & \fu_mux2|muxout[27]~27_combout\ & \fu_mux2|muxout[28]~28_combout\ & \fu_mux2|muxout[29]~29_combout\ & \fu_mux2|muxout[30]~30_combout\ & \fu_mux2|muxout[31]~31_combout\);

\fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fu_mux1|muxout[4]~4_combout\ & \fu_mux1|muxout[3]~3_combout\ & \fu_mux1|muxout[2]~2_combout\ & \fu_mux1|muxout[1]~1_combout\ & \fu_mux1|muxout[0]~0_combout\);

\fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fu_mdr|q\(20) & \fu_mdr|q\(19) & \fu_mdr|q\(18) & \fu_mdr|q\(17) & \fu_mdr|q\(16));

\fu_registerb|q\(31) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fu_registerb|q\(30) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fu_registerb|q\(29) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fu_registerb|q\(28) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fu_registerb|q\(27) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fu_registerb|q\(26) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fu_registerb|q\(25) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fu_registerb|q\(24) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\fu_registerb|q\(23) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\fu_registerb|q\(22) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\fu_registerb|q\(21) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\fu_registerb|q\(20) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\fu_registerb|q\(19) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\fu_registerb|q\(18) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\fu_registerb|q\(17) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\fu_registerb|q\(16) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\fu_registerb|q\(15) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\fu_registerb|q\(14) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\fu_registerb|q\(13) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\fu_registerb|q\(12) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\fu_registerb|q\(11) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\fu_registerb|q\(10) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\fu_registerb|q\(9) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\fu_registerb|q\(8) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\fu_registerb|q\(7) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\fu_registerb|q\(6) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\fu_registerb|q\(5) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\fu_registerb|q\(4) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\fu_registerb|q\(3) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\fu_registerb|q\(2) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\fu_registerb|q\(0) <= \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);

\fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & \fu_mux2|muxout[0]~0_combout\ & \fu_mux2|muxout[2]~2_combout\ & \fu_mux2|muxout[3]~3_combout\ & \fu_mux2|muxout[4]~4_combout\ & 
\fu_mux2|muxout[5]~5_combout\ & \fu_mux2|muxout[6]~6_combout\ & \fu_mux2|muxout[7]~7_combout\ & \fu_mux2|muxout[8]~8_combout\ & \fu_mux2|muxout[9]~9_combout\ & \fu_mux2|muxout[10]~10_combout\ & \fu_mux2|muxout[11]~11_combout\ & 
\fu_mux2|muxout[12]~12_combout\ & \fu_mux2|muxout[13]~13_combout\ & \fu_mux2|muxout[14]~14_combout\ & \fu_mux2|muxout[15]~15_combout\ & \fu_mux2|muxout[16]~16_combout\ & \fu_mux2|muxout[17]~17_combout\ & \fu_mux2|muxout[18]~18_combout\ & 
\fu_mux2|muxout[19]~19_combout\ & \fu_mux2|muxout[20]~20_combout\ & \fu_mux2|muxout[21]~21_combout\ & \fu_mux2|muxout[22]~22_combout\ & \fu_mux2|muxout[23]~23_combout\ & \fu_mux2|muxout[24]~24_combout\ & \fu_mux2|muxout[25]~25_combout\ & 
\fu_mux2|muxout[26]~26_combout\ & \fu_mux2|muxout[27]~27_combout\ & \fu_mux2|muxout[28]~28_combout\ & \fu_mux2|muxout[29]~29_combout\ & \fu_mux2|muxout[30]~30_combout\ & \fu_mux2|muxout[31]~31_combout\);

\fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fu_mux1|muxout[4]~4_combout\ & \fu_mux1|muxout[3]~3_combout\ & \fu_mux1|muxout[2]~2_combout\ & \fu_mux1|muxout[1]~1_combout\ & \fu_mux1|muxout[0]~0_combout\);

\fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fu_mdr|q\(25) & \fu_mdr|q\(24) & \fu_mdr|q\(23) & \fu_mdr|q\(22) & \fu_mdr|q\(21));

\fu_registera|q\(31) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fu_registera|q\(30) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fu_registera|q\(29) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fu_registera|q\(28) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fu_registera|q\(27) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fu_registera|q\(26) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fu_registera|q\(25) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fu_registera|q\(24) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\fu_registera|q\(23) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\fu_registera|q\(22) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\fu_registera|q\(21) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\fu_registera|q\(20) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\fu_registera|q\(19) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\fu_registera|q\(18) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\fu_registera|q\(17) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\fu_registera|q\(16) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\fu_registera|q\(15) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\fu_registera|q\(14) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\fu_registera|q\(13) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\fu_registera|q\(12) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\fu_registera|q\(11) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\fu_registera|q\(10) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\fu_registera|q\(9) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\fu_registera|q\(8) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\fu_registera|q\(7) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\fu_registera|q\(6) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\fu_registera|q\(5) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\fu_registera|q\(4) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\fu_registera|q\(3) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\fu_registera|q\(2) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\fu_registera|q\(0) <= \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\fu_registerbank|ALT_INV_registers[8][1]~q\ <= NOT \fu_registerbank|registers[8][1]~q\;
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X35_Y29_N9
\debug1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][0]~q\,
	devoe => ww_devoe,
	o => \debug1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\debug1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|ALT_INV_registers[8][1]~q\,
	devoe => ww_devoe,
	o => \debug1[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\debug1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][2]~q\,
	devoe => ww_devoe,
	o => \debug1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\debug1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][3]~q\,
	devoe => ww_devoe,
	o => \debug1[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\debug1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][4]~q\,
	devoe => ww_devoe,
	o => \debug1[4]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\debug1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][5]~q\,
	devoe => ww_devoe,
	o => \debug1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\debug1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][6]~q\,
	devoe => ww_devoe,
	o => \debug1[6]~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\debug1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][7]~q\,
	devoe => ww_devoe,
	o => \debug1[7]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\debug1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][8]~q\,
	devoe => ww_devoe,
	o => \debug1[8]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\debug1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][9]~q\,
	devoe => ww_devoe,
	o => \debug1[9]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\debug1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][10]~q\,
	devoe => ww_devoe,
	o => \debug1[10]~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\debug1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][11]~q\,
	devoe => ww_devoe,
	o => \debug1[11]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\debug1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][12]~q\,
	devoe => ww_devoe,
	o => \debug1[12]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\debug1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][13]~q\,
	devoe => ww_devoe,
	o => \debug1[13]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\debug1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][14]~q\,
	devoe => ww_devoe,
	o => \debug1[14]~output_o\);

-- Location: IOOBUF_X41_Y27_N9
\debug1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][15]~q\,
	devoe => ww_devoe,
	o => \debug1[15]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\debug1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][16]~q\,
	devoe => ww_devoe,
	o => \debug1[16]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\debug1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][17]~q\,
	devoe => ww_devoe,
	o => \debug1[17]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\debug1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][18]~q\,
	devoe => ww_devoe,
	o => \debug1[18]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\debug1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][19]~q\,
	devoe => ww_devoe,
	o => \debug1[19]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\debug1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][20]~q\,
	devoe => ww_devoe,
	o => \debug1[20]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\debug1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][21]~q\,
	devoe => ww_devoe,
	o => \debug1[21]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\debug1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][22]~q\,
	devoe => ww_devoe,
	o => \debug1[22]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\debug1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][23]~q\,
	devoe => ww_devoe,
	o => \debug1[23]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\debug1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][24]~q\,
	devoe => ww_devoe,
	o => \debug1[24]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\debug1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][25]~q\,
	devoe => ww_devoe,
	o => \debug1[25]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\debug1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][26]~q\,
	devoe => ww_devoe,
	o => \debug1[26]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\debug1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][27]~q\,
	devoe => ww_devoe,
	o => \debug1[27]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\debug1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][28]~q\,
	devoe => ww_devoe,
	o => \debug1[28]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\debug1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][29]~q\,
	devoe => ww_devoe,
	o => \debug1[29]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\debug1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][30]~q\,
	devoe => ww_devoe,
	o => \debug1[30]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\debug1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[8][31]~q\,
	devoe => ww_devoe,
	o => \debug1[31]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\debug2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][0]~q\,
	devoe => ww_devoe,
	o => \debug2[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\debug2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][1]~q\,
	devoe => ww_devoe,
	o => \debug2[1]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\debug2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][2]~q\,
	devoe => ww_devoe,
	o => \debug2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\debug2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][3]~q\,
	devoe => ww_devoe,
	o => \debug2[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\debug2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][4]~q\,
	devoe => ww_devoe,
	o => \debug2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\debug2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][5]~q\,
	devoe => ww_devoe,
	o => \debug2[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\debug2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][6]~q\,
	devoe => ww_devoe,
	o => \debug2[6]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\debug2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][7]~q\,
	devoe => ww_devoe,
	o => \debug2[7]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\debug2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][8]~q\,
	devoe => ww_devoe,
	o => \debug2[8]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\debug2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][9]~q\,
	devoe => ww_devoe,
	o => \debug2[9]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\debug2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][10]~q\,
	devoe => ww_devoe,
	o => \debug2[10]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\debug2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][11]~q\,
	devoe => ww_devoe,
	o => \debug2[11]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\debug2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][12]~q\,
	devoe => ww_devoe,
	o => \debug2[12]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\debug2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][13]~q\,
	devoe => ww_devoe,
	o => \debug2[13]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\debug2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][14]~q\,
	devoe => ww_devoe,
	o => \debug2[14]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\debug2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][15]~q\,
	devoe => ww_devoe,
	o => \debug2[15]~output_o\);

-- Location: IOOBUF_X41_Y27_N2
\debug2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][16]~q\,
	devoe => ww_devoe,
	o => \debug2[16]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\debug2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][17]~q\,
	devoe => ww_devoe,
	o => \debug2[17]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\debug2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][18]~q\,
	devoe => ww_devoe,
	o => \debug2[18]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\debug2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][19]~q\,
	devoe => ww_devoe,
	o => \debug2[19]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\debug2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][20]~q\,
	devoe => ww_devoe,
	o => \debug2[20]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\debug2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][21]~q\,
	devoe => ww_devoe,
	o => \debug2[21]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\debug2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][22]~q\,
	devoe => ww_devoe,
	o => \debug2[22]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\debug2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][23]~q\,
	devoe => ww_devoe,
	o => \debug2[23]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\debug2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][24]~q\,
	devoe => ww_devoe,
	o => \debug2[24]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\debug2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][25]~q\,
	devoe => ww_devoe,
	o => \debug2[25]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\debug2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][26]~q\,
	devoe => ww_devoe,
	o => \debug2[26]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\debug2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][27]~q\,
	devoe => ww_devoe,
	o => \debug2[27]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\debug2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][28]~q\,
	devoe => ww_devoe,
	o => \debug2[28]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\debug2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][29]~q\,
	devoe => ww_devoe,
	o => \debug2[29]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\debug2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][30]~q\,
	devoe => ww_devoe,
	o => \debug2[30]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\debug2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[9][31]~q\,
	devoe => ww_devoe,
	o => \debug2[31]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\debug3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][0]~q\,
	devoe => ww_devoe,
	o => \debug3[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\debug3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][1]~q\,
	devoe => ww_devoe,
	o => \debug3[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\debug3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][2]~q\,
	devoe => ww_devoe,
	o => \debug3[2]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\debug3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][3]~q\,
	devoe => ww_devoe,
	o => \debug3[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\debug3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][4]~q\,
	devoe => ww_devoe,
	o => \debug3[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\debug3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][5]~q\,
	devoe => ww_devoe,
	o => \debug3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\debug3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][6]~q\,
	devoe => ww_devoe,
	o => \debug3[6]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\debug3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][7]~q\,
	devoe => ww_devoe,
	o => \debug3[7]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\debug3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][8]~q\,
	devoe => ww_devoe,
	o => \debug3[8]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\debug3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][9]~q\,
	devoe => ww_devoe,
	o => \debug3[9]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\debug3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][10]~q\,
	devoe => ww_devoe,
	o => \debug3[10]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\debug3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][11]~q\,
	devoe => ww_devoe,
	o => \debug3[11]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\debug3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][12]~q\,
	devoe => ww_devoe,
	o => \debug3[12]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\debug3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][13]~q\,
	devoe => ww_devoe,
	o => \debug3[13]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\debug3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][14]~q\,
	devoe => ww_devoe,
	o => \debug3[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\debug3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][15]~q\,
	devoe => ww_devoe,
	o => \debug3[15]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\debug3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][16]~q\,
	devoe => ww_devoe,
	o => \debug3[16]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\debug3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][17]~q\,
	devoe => ww_devoe,
	o => \debug3[17]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\debug3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][18]~q\,
	devoe => ww_devoe,
	o => \debug3[18]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\debug3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][19]~q\,
	devoe => ww_devoe,
	o => \debug3[19]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\debug3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][20]~q\,
	devoe => ww_devoe,
	o => \debug3[20]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\debug3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][21]~q\,
	devoe => ww_devoe,
	o => \debug3[21]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\debug3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][22]~q\,
	devoe => ww_devoe,
	o => \debug3[22]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\debug3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][23]~q\,
	devoe => ww_devoe,
	o => \debug3[23]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\debug3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][24]~q\,
	devoe => ww_devoe,
	o => \debug3[24]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\debug3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][25]~q\,
	devoe => ww_devoe,
	o => \debug3[25]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\debug3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][26]~q\,
	devoe => ww_devoe,
	o => \debug3[26]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\debug3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][27]~q\,
	devoe => ww_devoe,
	o => \debug3[27]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\debug3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][28]~q\,
	devoe => ww_devoe,
	o => \debug3[28]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\debug3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][29]~q\,
	devoe => ww_devoe,
	o => \debug3[29]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\debug3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][30]~q\,
	devoe => ww_devoe,
	o => \debug3[30]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\debug3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[10][31]~q\,
	devoe => ww_devoe,
	o => \debug3[31]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\debug4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][0]~q\,
	devoe => ww_devoe,
	o => \debug4[0]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\debug4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][1]~q\,
	devoe => ww_devoe,
	o => \debug4[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\debug4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][2]~q\,
	devoe => ww_devoe,
	o => \debug4[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\debug4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][3]~q\,
	devoe => ww_devoe,
	o => \debug4[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\debug4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][4]~q\,
	devoe => ww_devoe,
	o => \debug4[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\debug4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][5]~q\,
	devoe => ww_devoe,
	o => \debug4[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\debug4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][6]~q\,
	devoe => ww_devoe,
	o => \debug4[6]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\debug4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][7]~q\,
	devoe => ww_devoe,
	o => \debug4[7]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\debug4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][8]~q\,
	devoe => ww_devoe,
	o => \debug4[8]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\debug4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][9]~q\,
	devoe => ww_devoe,
	o => \debug4[9]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\debug4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][10]~q\,
	devoe => ww_devoe,
	o => \debug4[10]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\debug4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][11]~q\,
	devoe => ww_devoe,
	o => \debug4[11]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\debug4[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][12]~q\,
	devoe => ww_devoe,
	o => \debug4[12]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\debug4[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][13]~q\,
	devoe => ww_devoe,
	o => \debug4[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\debug4[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][14]~q\,
	devoe => ww_devoe,
	o => \debug4[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\debug4[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][15]~q\,
	devoe => ww_devoe,
	o => \debug4[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\debug4[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][16]~q\,
	devoe => ww_devoe,
	o => \debug4[16]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\debug4[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][17]~q\,
	devoe => ww_devoe,
	o => \debug4[17]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\debug4[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][18]~q\,
	devoe => ww_devoe,
	o => \debug4[18]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\debug4[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][19]~q\,
	devoe => ww_devoe,
	o => \debug4[19]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\debug4[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][20]~q\,
	devoe => ww_devoe,
	o => \debug4[20]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\debug4[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][21]~q\,
	devoe => ww_devoe,
	o => \debug4[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\debug4[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][22]~q\,
	devoe => ww_devoe,
	o => \debug4[22]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\debug4[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][23]~q\,
	devoe => ww_devoe,
	o => \debug4[23]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\debug4[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][24]~q\,
	devoe => ww_devoe,
	o => \debug4[24]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\debug4[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][25]~q\,
	devoe => ww_devoe,
	o => \debug4[25]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\debug4[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][26]~q\,
	devoe => ww_devoe,
	o => \debug4[26]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\debug4[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][27]~q\,
	devoe => ww_devoe,
	o => \debug4[27]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\debug4[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][28]~q\,
	devoe => ww_devoe,
	o => \debug4[28]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\debug4[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][29]~q\,
	devoe => ww_devoe,
	o => \debug4[29]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\debug4[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][30]~q\,
	devoe => ww_devoe,
	o => \debug4[30]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\debug4[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_registerbank|registers[11][31]~q\,
	devoe => ww_devoe,
	o => \debug4[31]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\debug5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \debug5[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\debug5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \debug5[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\debug5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \debug5[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\debug5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \debug5[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\debug5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \debug5[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\debug5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \debug5[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\debug5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \debug5[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\debug5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \debug5[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\debug5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \debug5[8]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\debug5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \debug5[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\debug5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \debug5[10]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\debug5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \debug5[11]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\debug5[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \debug5[12]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\debug5[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \debug5[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\debug5[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \debug5[14]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\debug5[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \debug5[15]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\debug5[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \debug5[16]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\debug5[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \debug5[17]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\debug5[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \debug5[18]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\debug5[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \debug5[19]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\debug5[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \debug5[20]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\debug5[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \debug5[21]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\debug5[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \debug5[22]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\debug5[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \debug5[23]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\debug5[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \debug5[24]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\debug5[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \debug5[25]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\debug5[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \debug5[26]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\debug5[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \debug5[27]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\debug5[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \debug5[28]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\debug5[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \debug5[29]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\debug5[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \debug5[30]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\debug5[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_memory|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \debug5[31]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\debug6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|WritePCCond~q\,
	devoe => ww_devoe,
	o => \debug6[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\debug6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|WritePC~q\,
	devoe => ww_devoe,
	o => \debug6[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\debug6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|IorD~q\,
	devoe => ww_devoe,
	o => \debug6[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\debug6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|ReadMem~q\,
	devoe => ww_devoe,
	o => \debug6[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\debug6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|WriteMem~q\,
	devoe => ww_devoe,
	o => \debug6[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\debug6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|MemtoReg~q\,
	devoe => ww_devoe,
	o => \debug6[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\debug6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|WriteIR~q\,
	devoe => ww_devoe,
	o => \debug6[6]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\debug6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OpALU\(0),
	devoe => ww_devoe,
	o => \debug6[7]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\debug6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OrigPC\(1),
	devoe => ww_devoe,
	o => \debug6[8]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\debug6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OpALU\(0),
	devoe => ww_devoe,
	o => \debug6[9]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\debug6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OpALU\(1),
	devoe => ww_devoe,
	o => \debug6[10]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\debug6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OrigBALU\(0),
	devoe => ww_devoe,
	o => \debug6[11]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\debug6[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OrigBALU\(1),
	devoe => ww_devoe,
	o => \debug6[12]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\debug6[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|OrigAALU~q\,
	devoe => ww_devoe,
	o => \debug6[13]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\debug6[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|WriteReg~q\,
	devoe => ww_devoe,
	o => \debug6[14]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\debug6[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|RegDst~q\,
	devoe => ww_devoe,
	o => \debug6[15]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\debug6[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[16]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\debug6[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[17]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\debug6[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[18]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\debug6[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[19]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\debug6[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[20]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\debug6[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[21]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\debug6[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[22]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\debug6[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\debug6[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[24]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\debug6[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[25]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\debug6[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[26]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\debug6[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[27]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\debug6[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[28]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\debug6[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[29]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\debug6[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[30]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\debug6[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug6[31]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\debugstate[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|CurrentState\(0),
	devoe => ww_devoe,
	o => \debugstate[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\debugstate[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|CurrentState\(1),
	devoe => ww_devoe,
	o => \debugstate[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\debugstate[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|CurrentState\(2),
	devoe => ww_devoe,
	o => \debugstate[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\debugstate[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fu_controlunit|CurrentState\(3),
	devoe => ww_devoe,
	o => \debugstate[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\debugstate[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[4]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\debugstate[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[5]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\debugstate[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\debugstate[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\debugstate[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\debugstate[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\debugstate[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\debugstate[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\debugstate[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\debugstate[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[13]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\debugstate[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[14]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\debugstate[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[15]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\debugstate[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[16]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\debugstate[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[17]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\debugstate[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[18]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\debugstate[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[19]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\debugstate[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[20]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\debugstate[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[21]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\debugstate[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[22]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\debugstate[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[23]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\debugstate[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[24]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\debugstate[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[25]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\debugstate[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[26]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\debugstate[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\debugstate[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[28]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\debugstate[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[29]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\debugstate[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[30]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\debugstate[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debugstate[31]~output_o\);

-- Location: IOIBUF_X0_Y14_N8
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

-- Location: LCCOMB_X21_Y23_N20
\fu_controlunit|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~7_combout\ = (!\fu_controlunit|CurrentState\(1) & (\fu_controlunit|CurrentState\(0) & (!\fu_controlunit|CurrentState\(2) & !\fu_controlunit|CurrentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(0),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|Equal5~7_combout\);

-- Location: LCCOMB_X21_Y23_N2
\fu_controlunit|WriteReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|WriteReg~0_combout\ = (\fu_controlunit|CurrentState\(2) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(1) $ (!\fu_controlunit|CurrentState\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(0),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|WriteReg~0_combout\);

-- Location: FF_X21_Y23_N3
\fu_controlunit|WriteReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|WriteReg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|WriteReg~q\);

-- Location: IOIBUF_X0_Y14_N15
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

-- Location: LCCOMB_X22_Y23_N16
\fu_controlunit|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~5_combout\ = (\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(2) & !\fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|Equal5~5_combout\);

-- Location: FF_X23_Y21_N15
\fu_controlunit|OpALU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_controlunit|Equal5~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|OpALU\(1));

-- Location: LCCOMB_X22_Y23_N6
\fu_controlunit|IorD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|IorD~0_combout\ = (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(0) & (\fu_controlunit|CurrentState\(1) $ (\fu_controlunit|CurrentState\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|IorD~0_combout\);

-- Location: FF_X22_Y23_N7
\fu_controlunit|IorD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|IorD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|IorD~q\);

-- Location: LCCOMB_X20_Y21_N6
\fu_alucontrol|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux2~0_combout\ = (\fu_mdr|q\(2) & (\fu_mdr|q\(0) & (!\fu_mdr|q\(3) & !\fu_mdr|q\(1)))) # (!\fu_mdr|q\(2) & (!\fu_mdr|q\(0) & (\fu_mdr|q\(3) & \fu_mdr|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(2),
	datab => \fu_mdr|q\(0),
	datac => \fu_mdr|q\(3),
	datad => \fu_mdr|q\(1),
	combout => \fu_alucontrol|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y19_N14
\fu_alucontrol|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux5~1_combout\ = (\fu_controlunit|OpALU\(1) & (\fu_alucontrol|Mux5~0_combout\ & \fu_alucontrol|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(1),
	datac => \fu_alucontrol|Mux5~0_combout\,
	datad => \fu_alucontrol|Mux2~0_combout\,
	combout => \fu_alucontrol|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y21_N8
\fu_controlunit|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~0_combout\ = (!\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(0) & (!\fu_controlunit|CurrentState\(2) & \fu_controlunit|CurrentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(0),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|Equal5~0_combout\);

-- Location: FF_X23_Y21_N9
\fu_controlunit|OpALU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_controlunit|Equal5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|OpALU\(0));

-- Location: LCCOMB_X23_Y21_N14
\fu_alucontrol|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux3~1_combout\ = (!\fu_mdr|q\(0) & (\fu_controlunit|OpALU\(1) & !\fu_controlunit|OpALU\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(0),
	datac => \fu_controlunit|OpALU\(1),
	datad => \fu_controlunit|OpALU\(0),
	combout => \fu_alucontrol|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y21_N8
\fu_alucontrol|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux3~2_combout\ = (\fu_controlunit|OpALU\(0) & !\fu_controlunit|OpALU\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_controlunit|OpALU\(0),
	datad => \fu_controlunit|OpALU\(1),
	combout => \fu_alucontrol|Mux3~2_combout\);

-- Location: LCCOMB_X24_Y21_N26
\fu_controlunit|OrigBALU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|OrigBALU~0_combout\ = (!\fu_controlunit|CurrentState\(2) & (!\fu_controlunit|CurrentState\(1) & !\fu_controlunit|CurrentState\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|CurrentState\(2),
	datac => \fu_controlunit|CurrentState\(1),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|OrigBALU~0_combout\);

-- Location: FF_X24_Y21_N27
\fu_controlunit|OrigBALU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|OrigBALU~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|OrigBALU\(0));

-- Location: LCCOMB_X24_Y21_N12
\fu_controlunit|OrigBALU~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|OrigBALU~1_combout\ = (!\fu_controlunit|CurrentState\(2) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(1) $ (\fu_controlunit|CurrentState\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(0),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|OrigBALU~1_combout\);

-- Location: FF_X24_Y21_N13
\fu_controlunit|OrigBALU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|OrigBALU~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|OrigBALU\(1));

-- Location: LCCOMB_X22_Y23_N14
\fu_controlunit|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~6_combout\ = (\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(2) & \fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|Equal5~6_combout\);

-- Location: FF_X22_Y23_N15
\fu_controlunit|RegDst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Equal5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|RegDst~q\);

-- Location: LCCOMB_X23_Y21_N30
\fu_alucontrol|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux3~0_combout\ = (\fu_controlunit|OpALU\(0) & (!\fu_controlunit|OpALU\(1))) # (!\fu_controlunit|OpALU\(0) & (\fu_controlunit|OpALU\(1) & (!\fu_mdr|q\(0) & \fu_controlunit|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_controlunit|OpALU\(1),
	datac => \fu_mdr|q\(0),
	datad => \fu_controlunit|Equal1~0_combout\,
	combout => \fu_alucontrol|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y19_N16
\fu_alu|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux30~0_combout\ = \fu_alucontrol|Mux4~0_combout\ $ (((\fu_alucontrol|Mux5~1_combout\ & !\fu_alucontrol|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alucontrol|Mux5~1_combout\,
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_alucontrol|Mux4~0_combout\,
	combout => \fu_alu|Mux30~0_combout\);

-- Location: LCCOMB_X22_Y22_N6
\fu_controlunit|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|WideOr0~0_combout\ = (!\fu_controlunit|CurrentState\(0) & ((\fu_controlunit|CurrentState\(1) & ((!\fu_controlunit|CurrentState\(3)))) # (!\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(2) & 
-- \fu_controlunit|CurrentState\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(0),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|WideOr0~0_combout\);

-- Location: FF_X22_Y22_N7
\fu_controlunit|OrigAALU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|OrigAALU~q\);

-- Location: LCCOMB_X22_Y22_N8
\fu_pc|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[2]~0_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(2))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(2),
	datad => \fu_alu|Mux29~1_combout\,
	combout => \fu_pc|q[2]~0_combout\);

-- Location: LCCOMB_X22_Y23_N8
\fu_controlunit|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~4_combout\ = (!\fu_controlunit|CurrentState\(1) & (\fu_controlunit|CurrentState\(3) & (!\fu_controlunit|CurrentState\(2) & \fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|Equal5~4_combout\);

-- Location: FF_X22_Y23_N9
\fu_controlunit|OrigPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|OrigPC\(1));

-- Location: LCCOMB_X22_Y22_N20
\fu_pc|q[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[8]~26_combout\ = (\fu_controlunit|OpALU\(0) & \fu_controlunit|OrigPC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datad => \fu_controlunit|OrigPC\(1),
	combout => \fu_pc|q[8]~26_combout\);

-- Location: FF_X22_Y22_N9
\fu_pc|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[2]~0_combout\,
	asdata => \fu_mdr|q\(0),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(2));

-- Location: LCCOMB_X24_Y22_N12
\fu_pc|q[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[7]~5_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(7))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(7),
	datad => \fu_alu|Mux24~1_combout\,
	combout => \fu_pc|q[7]~5_combout\);

-- Location: FF_X24_Y22_N13
\fu_pc|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[7]~5_combout\,
	asdata => \fu_mdr|q\(5),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(7));

-- Location: LCCOMB_X21_Y22_N14
\fu_pc|q[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[8]~6_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(8))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux23~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(8),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux23~10_combout\,
	combout => \fu_pc|q[8]~6_combout\);

-- Location: FF_X21_Y22_N15
\fu_pc|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[8]~6_combout\,
	asdata => \fu_mdr|q\(6),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(8));

-- Location: LCCOMB_X23_Y19_N6
\fu_pc|q[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[22]~20_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(22))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(22),
	datad => \fu_alu|Mux9~1_combout\,
	combout => \fu_pc|q[22]~20_combout\);

-- Location: FF_X23_Y19_N7
\fu_pc|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[22]~20_combout\,
	asdata => \fu_mdr|q\(20),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(22));

-- Location: LCCOMB_X23_Y23_N26
\fu_pc|q[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[20]~18_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(20))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(20),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux11~1_combout\,
	combout => \fu_pc|q[20]~18_combout\);

-- Location: FF_X23_Y23_N27
\fu_pc|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[20]~18_combout\,
	asdata => \fu_mdr|q\(18),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(20));

-- Location: LCCOMB_X26_Y20_N24
\fu_pc|q[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[15]~13_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(15))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(15),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux16~1_combout\,
	combout => \fu_pc|q[15]~13_combout\);

-- Location: FF_X26_Y20_N25
\fu_pc|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[15]~13_combout\,
	asdata => \fu_mdr|q\(13),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(15));

-- Location: LCCOMB_X26_Y20_N4
\fu_pc|q[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[11]~9_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(11))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(11),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux20~1_combout\,
	combout => \fu_pc|q[11]~9_combout\);

-- Location: LCCOMB_X21_Y22_N8
\fu_pc|q[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[10]~8_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(10))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(10),
	datad => \fu_alu|Mux21~1_combout\,
	combout => \fu_pc|q[10]~8_combout\);

-- Location: LCCOMB_X24_Y22_N24
\fu_mux2|muxout[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[9]~9_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(9)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(9),
	datad => \fu_mdr|q\(9),
	combout => \fu_mux2|muxout[9]~9_combout\);

-- Location: LCCOMB_X21_Y22_N16
\fu_mux2|muxout[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[8]~8_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(8)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(8),
	datad => \fu_mdr|q\(8),
	combout => \fu_mux2|muxout[8]~8_combout\);

-- Location: LCCOMB_X21_Y22_N30
\fu_mux2|muxout[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[6]~6_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(6)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(6),
	datad => \fu_mdr|q\(6),
	combout => \fu_mux2|muxout[6]~6_combout\);

-- Location: LCCOMB_X24_Y22_N26
\fu_mux2|muxout[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[5]~5_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(5)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datab => \fu_aluout|q\(5),
	datac => \fu_mdr|q\(5),
	combout => \fu_mux2|muxout[5]~5_combout\);

-- Location: LCCOMB_X22_Y22_N2
\fu_mux2|muxout[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[4]~4_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(4)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(4),
	datad => \fu_mdr|q\(4),
	combout => \fu_mux2|muxout[4]~4_combout\);

-- Location: LCCOMB_X23_Y22_N22
\fu_mux2|muxout[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[3]~3_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(3))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(3),
	datad => \fu_aluout|q\(3),
	combout => \fu_mux2|muxout[3]~3_combout\);

-- Location: LCCOMB_X22_Y22_N10
\fu_mux2|muxout[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[2]~2_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(2)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_aluout|q\(2),
	datac => \fu_controlunit|MemtoReg~q\,
	datad => \fu_mdr|q\(2),
	combout => \fu_mux2|muxout[2]~2_combout\);

-- Location: M9K_X25_Y21_N0
\fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RegisterBank:fu_registerbank|altsyncram:registers[0][31]__2|altsyncram_csg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 31,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 31,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \fu_controlunit|WriteReg~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_clr~inputclkctrl_outclk\,
	portadatain => \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fu_registerbank|registers[0][31]__2|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y18_N0
\fu_memory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FE20",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:fu_memory|altsyncram:altsyncram_component|altsyncram_dpj1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_writeenable~combout\,
	portare => \fu_controlunit|ReadMem~q\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fu_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X24_Y20_N11
\fu_mdr|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(7),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(7));

-- Location: LCCOMB_X24_Y22_N14
\fu_mux2|muxout[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[7]~7_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(7))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_mdr|q\(7),
	datac => \fu_aluout|q\(7),
	datad => \fu_controlunit|MemtoReg~q\,
	combout => \fu_mux2|muxout[7]~7_combout\);

-- Location: FF_X21_Y21_N5
\fu_mdr|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(8),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(8));

-- Location: FF_X21_Y22_N9
\fu_pc|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[10]~8_combout\,
	asdata => \fu_mdr|q\(8),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(10));

-- Location: M9K_X25_Y22_N0
\fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RegisterBank:fu_registerbank|altsyncram:registers[0][31]__1|altsyncram_csg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 31,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 31,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \fu_controlunit|WriteReg~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_clr~inputclkctrl_outclk\,
	portadatain => \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fu_registerbank|registers[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y22_N12
\fu_mux3|muxout[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[10]~22_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(10)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(10),
	datad => \fu_registera|q\(10),
	combout => \fu_mux3|muxout[10]~22_combout\);

-- Location: LCCOMB_X23_Y21_N2
\fu_mux4|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux21~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(10))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(10),
	datad => \fu_registerb|q\(10),
	combout => \fu_mux4|Mux21~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\fu_mux4|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux21~1_combout\ = (\fu_mux4|Mux21~0_combout\) # ((\fu_mdr|q\(8) & (\fu_controlunit|OrigBALU\(0) & \fu_controlunit|OrigBALU\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(8),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_mux4|Mux21~0_combout\,
	combout => \fu_mux4|Mux21~1_combout\);

-- Location: LCCOMB_X23_Y21_N24
\fu_alu|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~32_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux21~1_combout\,
	combout => \fu_alu|Add0~32_combout\);

-- Location: LCCOMB_X24_Y20_N0
\fu_mux4|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux22~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & ((\fu_mdr|q\(9)))) # (!\fu_controlunit|OrigBALU\(1) & (\fu_registerb|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerb|q\(9),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(9),
	datad => \fu_controlunit|OrigBALU\(1),
	combout => \fu_mux4|Mux22~0_combout\);

-- Location: LCCOMB_X24_Y20_N26
\fu_mux4|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux22~1_combout\ = (\fu_mux4|Mux22~0_combout\) # ((\fu_mdr|q\(7) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(7),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux22~0_combout\,
	combout => \fu_mux4|Mux22~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\fu_alu|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~29_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux22~1_combout\,
	combout => \fu_alu|Add0~29_combout\);

-- Location: LCCOMB_X21_Y21_N4
\fu_mux4|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux23~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(8))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(8),
	datad => \fu_registerb|q\(8),
	combout => \fu_mux4|Mux23~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\fu_mux4|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux23~1_combout\ = (\fu_mux4|Mux23~0_combout\) # ((\fu_controlunit|OrigBALU\(0) & (\fu_mdr|q\(6) & \fu_controlunit|OrigBALU\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_mdr|q\(6),
	datac => \fu_mux4|Mux23~0_combout\,
	datad => \fu_controlunit|OrigBALU\(1),
	combout => \fu_mux4|Mux23~1_combout\);

-- Location: LCCOMB_X21_Y21_N26
\fu_alu|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~26_combout\ = \fu_mux4|Mux23~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~1_combout\,
	datab => \fu_controlunit|Equal1~0_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux23~1_combout\,
	combout => \fu_alu|Add0~26_combout\);

-- Location: LCCOMB_X24_Y20_N10
\fu_mux4|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux24~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(7))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(7),
	datad => \fu_registerb|q\(7),
	combout => \fu_mux4|Mux24~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\fu_mux4|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux24~1_combout\ = (\fu_mux4|Mux24~0_combout\) # ((\fu_mdr|q\(5) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(5),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux24~0_combout\,
	combout => \fu_mux4|Mux24~1_combout\);

-- Location: LCCOMB_X24_Y20_N22
\fu_alu|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~23_combout\ = \fu_mux4|Mux24~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~1_combout\,
	datab => \fu_controlunit|Equal1~0_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux24~1_combout\,
	combout => \fu_alu|Add0~23_combout\);

-- Location: LCCOMB_X21_Y21_N8
\fu_alu|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~20_combout\ = \fu_mux4|Mux25~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~1_combout\,
	datab => \fu_controlunit|Equal1~0_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux25~1_combout\,
	combout => \fu_alu|Add0~20_combout\);

-- Location: LCCOMB_X21_Y22_N4
\fu_mux3|muxout[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[6]~26_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(6)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(6),
	datac => \fu_registera|q\(6),
	datad => \fu_controlunit|OrigAALU~q\,
	combout => \fu_mux3|muxout[6]~26_combout\);

-- Location: LCCOMB_X22_Y21_N12
\fu_alu|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~17_combout\ = \fu_mux4|Mux26~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux26~1_combout\,
	combout => \fu_alu|Add0~17_combout\);

-- Location: LCCOMB_X23_Y22_N18
\fu_pc|q[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[5]~3_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(5))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(5),
	datad => \fu_alu|Mux26~1_combout\,
	combout => \fu_pc|q[5]~3_combout\);

-- Location: FF_X23_Y22_N19
\fu_pc|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[5]~3_combout\,
	asdata => \fu_mdr|q\(3),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(5));

-- Location: LCCOMB_X23_Y22_N30
\fu_mux3|muxout[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[5]~27_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(5)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(5),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_registera|q\(5),
	combout => \fu_mux3|muxout[5]~27_combout\);

-- Location: LCCOMB_X22_Y21_N6
\fu_alu|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~14_combout\ = \fu_mux4|Mux27~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux27~1_combout\,
	combout => \fu_alu|Add0~14_combout\);

-- Location: LCCOMB_X22_Y22_N24
\fu_mux3|muxout[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[4]~28_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(4)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(4),
	datad => \fu_registera|q\(4),
	combout => \fu_mux3|muxout[4]~28_combout\);

-- Location: LCCOMB_X21_Y21_N12
\fu_mux4|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux28~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(3))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(3),
	datad => \fu_registerb|q\(3),
	combout => \fu_mux4|Mux28~0_combout\);

-- Location: LCCOMB_X21_Y21_N16
\fu_mux4|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux28~1_combout\ = (\fu_mux4|Mux28~0_combout\) # ((\fu_controlunit|OrigBALU\(0) & (\fu_controlunit|OrigBALU\(1) & \fu_mdr|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(1),
	datad => \fu_mux4|Mux28~0_combout\,
	combout => \fu_mux4|Mux28~1_combout\);

-- Location: LCCOMB_X21_Y21_N6
\fu_alu|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~11_combout\ = \fu_mux4|Mux28~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~1_combout\,
	datab => \fu_controlunit|Equal1~0_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux28~1_combout\,
	combout => \fu_alu|Add0~11_combout\);

-- Location: LCCOMB_X23_Y21_N28
\fu_mux4|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux29~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (\fu_controlunit|OrigBALU\(0) & (\fu_mdr|q\(0)))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_controlunit|OrigBALU\(0)) # ((\fu_registerb|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(0),
	datad => \fu_registerb|q\(2),
	combout => \fu_mux4|Mux29~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\fu_mux4|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux29~1_combout\ = (\fu_mux4|Mux29~0_combout\) # ((\fu_mdr|q\(2) & (!\fu_controlunit|OrigBALU\(0) & \fu_controlunit|OrigBALU\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(2),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_mux4|Mux29~0_combout\,
	combout => \fu_mux4|Mux29~1_combout\);

-- Location: LCCOMB_X23_Y21_N10
\fu_alu|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~8_combout\ = \fu_mux4|Mux29~1_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux29~1_combout\,
	combout => \fu_alu|Add0~8_combout\);

-- Location: LCCOMB_X26_Y22_N20
\fu_mux2|muxout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[1]~1_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(1)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(1),
	datac => \fu_mdr|q\(1),
	datad => \fu_controlunit|MemtoReg~q\,
	combout => \fu_mux2|muxout[1]~1_combout\);

-- Location: LCCOMB_X26_Y21_N0
\fu_registerbank|registers[5][1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[5][1]~48_combout\ = (!\fu_mux1|muxout[3]~3_combout\ & ((\fu_controlunit|RegDst~q\ & ((!\fu_mdr|q\(15)))) # (!\fu_controlunit|RegDst~q\ & (!\fu_mdr|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(20),
	datab => \fu_mux1|muxout[3]~3_combout\,
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_registerbank|registers[5][1]~48_combout\);

-- Location: LCCOMB_X26_Y21_N10
\fu_registerbank|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~12_combout\ = (\fu_controlunit|WriteReg~q\ & (\fu_mux1|muxout[2]~2_combout\ & (!\fu_mux1|muxout[0]~0_combout\ & \fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|WriteReg~q\,
	datab => \fu_mux1|muxout[2]~2_combout\,
	datac => \fu_mux1|muxout[0]~0_combout\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~12_combout\);

-- Location: LCCOMB_X28_Y21_N26
\fu_registerbank|registers[6][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[6][1]~35_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~12_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~12_combout\ & 
-- ((\fu_registerbank|registers[6][1]~q\))))) # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|registers[5][1]~48_combout\,
	datac => \fu_registerbank|registers[6][1]~q\,
	datad => \fu_registerbank|Decoder0~12_combout\,
	combout => \fu_registerbank|registers[6][1]~35_combout\);

-- Location: FF_X28_Y21_N27
\fu_registerbank|registers[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[6][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[6][1]~q\);

-- Location: LCCOMB_X27_Y21_N18
\fu_registerbank|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~14_combout\ = (!\fu_mux1|muxout[0]~0_combout\ & (\fu_mux1|muxout[2]~2_combout\ & (\fu_controlunit|WriteReg~q\ & !\fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux1|muxout[0]~0_combout\,
	datab => \fu_mux1|muxout[2]~2_combout\,
	datac => \fu_controlunit|WriteReg~q\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~14_combout\);

-- Location: LCCOMB_X27_Y21_N30
\fu_registerbank|registers[4][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[4][1]~36_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~14_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~14_combout\ & 
-- ((\fu_registerbank|registers[4][1]~q\))))) # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[5][1]~48_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[4][1]~q\,
	datad => \fu_registerbank|Decoder0~14_combout\,
	combout => \fu_registerbank|registers[4][1]~36_combout\);

-- Location: FF_X27_Y21_N31
\fu_registerbank|registers[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[4][1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[4][1]~q\);

-- Location: LCCOMB_X28_Y21_N30
\fu_registerbank|Mux30~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~12_combout\ = (\fu_mdr|q\(21) & (((\fu_mdr|q\(22))))) # (!\fu_mdr|q\(21) & ((\fu_mdr|q\(22) & (\fu_registerbank|registers[6][1]~q\)) # (!\fu_mdr|q\(22) & ((\fu_registerbank|registers[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[6][1]~q\,
	datab => \fu_mdr|q\(21),
	datac => \fu_mdr|q\(22),
	datad => \fu_registerbank|registers[4][1]~q\,
	combout => \fu_registerbank|Mux30~12_combout\);

-- Location: LCCOMB_X26_Y21_N20
\fu_registerbank|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~15_combout\ = (\fu_controlunit|WriteReg~q\ & (\fu_mux1|muxout[2]~2_combout\ & (\fu_mux1|muxout[0]~0_combout\ & \fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|WriteReg~q\,
	datab => \fu_mux1|muxout[2]~2_combout\,
	datac => \fu_mux1|muxout[0]~0_combout\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~15_combout\);

-- Location: LCCOMB_X27_Y21_N16
\fu_registerbank|registers[7][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[7][1]~37_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~15_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~15_combout\ & 
-- ((\fu_registerbank|registers[7][1]~q\))))) # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[5][1]~48_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[7][1]~q\,
	datad => \fu_registerbank|Decoder0~15_combout\,
	combout => \fu_registerbank|registers[7][1]~37_combout\);

-- Location: FF_X27_Y21_N17
\fu_registerbank|registers[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[7][1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[7][1]~q\);

-- Location: LCCOMB_X28_Y21_N10
\fu_registerbank|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~13_combout\ = (\fu_mux1|muxout[0]~0_combout\ & (\fu_controlunit|WriteReg~q\ & (\fu_mux1|muxout[2]~2_combout\ & !\fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux1|muxout[0]~0_combout\,
	datab => \fu_controlunit|WriteReg~q\,
	datac => \fu_mux1|muxout[2]~2_combout\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~13_combout\);

-- Location: LCCOMB_X28_Y21_N20
\fu_registerbank|registers[5][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[5][1]~34_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~13_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~13_combout\ & 
-- ((\fu_registerbank|registers[5][1]~q\))))) # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|registers[5][1]~48_combout\,
	datac => \fu_registerbank|registers[5][1]~q\,
	datad => \fu_registerbank|Decoder0~13_combout\,
	combout => \fu_registerbank|registers[5][1]~34_combout\);

-- Location: FF_X28_Y21_N21
\fu_registerbank|registers[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[5][1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[5][1]~q\);

-- Location: LCCOMB_X28_Y21_N22
\fu_registerbank|Mux30~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~13_combout\ = (\fu_registerbank|Mux30~12_combout\ & (((\fu_registerbank|registers[7][1]~q\)) # (!\fu_mdr|q\(21)))) # (!\fu_registerbank|Mux30~12_combout\ & (\fu_mdr|q\(21) & ((\fu_registerbank|registers[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux30~12_combout\,
	datab => \fu_mdr|q\(21),
	datac => \fu_registerbank|registers[7][1]~q\,
	datad => \fu_registerbank|registers[5][1]~q\,
	combout => \fu_registerbank|Mux30~13_combout\);

-- Location: LCCOMB_X27_Y21_N20
\fu_registerbank|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~10_combout\ = (\fu_mux1|muxout[0]~0_combout\ & (!\fu_mux1|muxout[2]~2_combout\ & (\fu_controlunit|WriteReg~q\ & \fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux1|muxout[0]~0_combout\,
	datab => \fu_mux1|muxout[2]~2_combout\,
	datac => \fu_controlunit|WriteReg~q\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~10_combout\);

-- Location: LCCOMB_X27_Y21_N24
\fu_registerbank|registers[3][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[3][1]~41_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~10_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~10_combout\ & 
-- ((\fu_registerbank|registers[3][1]~q\))))) # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[5][1]~48_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[3][1]~q\,
	datad => \fu_registerbank|Decoder0~10_combout\,
	combout => \fu_registerbank|registers[3][1]~41_combout\);

-- Location: FF_X27_Y21_N25
\fu_registerbank|registers[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[3][1]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[3][1]~q\);

-- Location: LCCOMB_X27_Y21_N2
\fu_registerbank|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~4_combout\ = (!\fu_mux1|muxout[0]~0_combout\ & (!\fu_mux1|muxout[2]~2_combout\ & (\fu_controlunit|WriteReg~q\ & !\fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux1|muxout[0]~0_combout\,
	datab => \fu_mux1|muxout[2]~2_combout\,
	datac => \fu_controlunit|WriteReg~q\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~4_combout\);

-- Location: LCCOMB_X27_Y21_N8
\fu_registerbank|registers[0][1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[0][1]~40_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~4_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~4_combout\ & ((\fu_registerbank|registers[0][1]~q\))))) 
-- # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[5][1]~48_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[0][1]~q\,
	datad => \fu_registerbank|Decoder0~4_combout\,
	combout => \fu_registerbank|registers[0][1]~40_combout\);

-- Location: FF_X27_Y21_N9
\fu_registerbank|registers[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[0][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[0][1]~q\);

-- Location: LCCOMB_X27_Y21_N6
\fu_registerbank|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~6_combout\ = (\fu_mux1|muxout[0]~0_combout\ & (!\fu_mux1|muxout[2]~2_combout\ & (\fu_controlunit|WriteReg~q\ & !\fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux1|muxout[0]~0_combout\,
	datab => \fu_mux1|muxout[2]~2_combout\,
	datac => \fu_controlunit|WriteReg~q\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~6_combout\);

-- Location: LCCOMB_X27_Y21_N14
\fu_registerbank|registers[1][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[1][1]~39_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~6_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~6_combout\ & ((\fu_registerbank|registers[1][1]~q\))))) 
-- # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[5][1]~48_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[1][1]~q\,
	datad => \fu_registerbank|Decoder0~6_combout\,
	combout => \fu_registerbank|registers[1][1]~39_combout\);

-- Location: FF_X27_Y21_N15
\fu_registerbank|registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[1][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[1][1]~q\);

-- Location: LCCOMB_X28_Y21_N8
\fu_registerbank|Mux30~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~14_combout\ = (\fu_mdr|q\(21) & (((\fu_mdr|q\(22)) # (\fu_registerbank|registers[1][1]~q\)))) # (!\fu_mdr|q\(21) & (\fu_registerbank|registers[0][1]~q\ & (!\fu_mdr|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[0][1]~q\,
	datab => \fu_mdr|q\(21),
	datac => \fu_mdr|q\(22),
	datad => \fu_registerbank|registers[1][1]~q\,
	combout => \fu_registerbank|Mux30~14_combout\);

-- Location: LCCOMB_X28_Y21_N0
\fu_registerbank|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~8_combout\ = (!\fu_mux1|muxout[0]~0_combout\ & (\fu_controlunit|WriteReg~q\ & (!\fu_mux1|muxout[2]~2_combout\ & \fu_mux1|muxout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux1|muxout[0]~0_combout\,
	datab => \fu_controlunit|WriteReg~q\,
	datac => \fu_mux1|muxout[2]~2_combout\,
	datad => \fu_mux1|muxout[1]~1_combout\,
	combout => \fu_registerbank|Decoder0~8_combout\);

-- Location: LCCOMB_X28_Y21_N16
\fu_registerbank|registers[2][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[2][1]~38_combout\ = (\fu_registerbank|registers[5][1]~48_combout\ & ((\fu_registerbank|Decoder0~8_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~8_combout\ & ((\fu_registerbank|registers[2][1]~q\))))) 
-- # (!\fu_registerbank|registers[5][1]~48_combout\ & (((\fu_registerbank|registers[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|registers[5][1]~48_combout\,
	datac => \fu_registerbank|registers[2][1]~q\,
	datad => \fu_registerbank|Decoder0~8_combout\,
	combout => \fu_registerbank|registers[2][1]~38_combout\);

-- Location: FF_X28_Y21_N17
\fu_registerbank|registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[2][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[2][1]~q\);

-- Location: LCCOMB_X28_Y21_N18
\fu_registerbank|Mux30~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~15_combout\ = (\fu_mdr|q\(22) & ((\fu_registerbank|Mux30~14_combout\ & (\fu_registerbank|registers[3][1]~q\)) # (!\fu_registerbank|Mux30~14_combout\ & ((\fu_registerbank|registers[2][1]~q\))))) # (!\fu_mdr|q\(22) & 
-- (((\fu_registerbank|Mux30~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(22),
	datab => \fu_registerbank|registers[3][1]~q\,
	datac => \fu_registerbank|Mux30~14_combout\,
	datad => \fu_registerbank|registers[2][1]~q\,
	combout => \fu_registerbank|Mux30~15_combout\);

-- Location: LCCOMB_X28_Y21_N12
\fu_registerbank|Mux30~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~16_combout\ = (\fu_mdr|q\(23) & ((\fu_registerbank|Mux30~13_combout\) # ((\fu_mdr|q\(24))))) # (!\fu_mdr|q\(23) & (((!\fu_mdr|q\(24) & \fu_registerbank|Mux30~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux30~13_combout\,
	datab => \fu_mdr|q\(23),
	datac => \fu_mdr|q\(24),
	datad => \fu_registerbank|Mux30~15_combout\,
	combout => \fu_registerbank|Mux30~16_combout\);

-- Location: LCCOMB_X26_Y21_N26
\fu_registerbank|registers[15][1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[15][1]~51_combout\ = (\fu_registerbank|Decoder0~15_combout\ & ((\fu_controlunit|RegDst~q\ & ((!\fu_mdr|q\(15)))) # (!\fu_controlunit|RegDst~q\ & (!\fu_mdr|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(20),
	datab => \fu_registerbank|Decoder0~15_combout\,
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_registerbank|registers[15][1]~51_combout\);

-- Location: LCCOMB_X26_Y21_N8
\fu_registerbank|registers[15][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[15][1]~45_combout\ = (\fu_registerbank|registers[15][1]~51_combout\ & ((\fu_mux1|muxout[3]~3_combout\ & ((\fu_mux2|muxout[1]~1_combout\))) # (!\fu_mux1|muxout[3]~3_combout\ & (\fu_registerbank|registers[15][1]~q\)))) # 
-- (!\fu_registerbank|registers[15][1]~51_combout\ & (((\fu_registerbank|registers[15][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[15][1]~51_combout\,
	datab => \fu_mux1|muxout[3]~3_combout\,
	datac => \fu_registerbank|registers[15][1]~q\,
	datad => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[15][1]~45_combout\);

-- Location: FF_X26_Y21_N9
\fu_registerbank|registers[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[15][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[15][1]~q\);

-- Location: LCCOMB_X26_Y21_N2
\fu_registerbank|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~16_combout\ = (!\fu_mux1|muxout[4]~4_combout\ & ((\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(14))) # (!\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|RegDst~q\,
	datab => \fu_mdr|q\(14),
	datac => \fu_mux1|muxout[4]~4_combout\,
	datad => \fu_mdr|q\(19),
	combout => \fu_registerbank|Decoder0~16_combout\);

-- Location: LCCOMB_X28_Y21_N24
\fu_registerbank|registers[13][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[13][1]~42_combout\ = (\fu_registerbank|Decoder0~16_combout\ & ((\fu_registerbank|Decoder0~13_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~13_combout\ & ((\fu_registerbank|registers[13][1]~q\))))) # 
-- (!\fu_registerbank|Decoder0~16_combout\ & (((\fu_registerbank|registers[13][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Decoder0~16_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[13][1]~q\,
	datad => \fu_registerbank|Decoder0~13_combout\,
	combout => \fu_registerbank|registers[13][1]~42_combout\);

-- Location: FF_X28_Y21_N25
\fu_registerbank|registers[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[13][1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[13][1]~q\);

-- Location: LCCOMB_X26_Y21_N28
\fu_registerbank|registers[12][1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[12][1]~50_combout\ = (\fu_registerbank|Decoder0~14_combout\ & ((\fu_controlunit|RegDst~q\ & ((!\fu_mdr|q\(15)))) # (!\fu_controlunit|RegDst~q\ & (!\fu_mdr|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(20),
	datab => \fu_registerbank|Decoder0~14_combout\,
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_registerbank|registers[12][1]~50_combout\);

-- Location: LCCOMB_X26_Y21_N18
\fu_registerbank|registers[12][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[12][1]~44_combout\ = (\fu_mux1|muxout[3]~3_combout\ & ((\fu_registerbank|registers[12][1]~50_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|registers[12][1]~50_combout\ & 
-- ((\fu_registerbank|registers[12][1]~q\))))) # (!\fu_mux1|muxout[3]~3_combout\ & (((\fu_registerbank|registers[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_mux1|muxout[3]~3_combout\,
	datac => \fu_registerbank|registers[12][1]~q\,
	datad => \fu_registerbank|registers[12][1]~50_combout\,
	combout => \fu_registerbank|registers[12][1]~44_combout\);

-- Location: FF_X26_Y21_N19
\fu_registerbank|registers[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[12][1]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[12][1]~q\);

-- Location: LCCOMB_X26_Y21_N6
\fu_registerbank|registers[14][1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[14][1]~49_combout\ = (\fu_registerbank|Decoder0~12_combout\ & ((\fu_controlunit|RegDst~q\ & (!\fu_mdr|q\(15))) # (!\fu_controlunit|RegDst~q\ & ((!\fu_mdr|q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(15),
	datab => \fu_controlunit|RegDst~q\,
	datac => \fu_mdr|q\(20),
	datad => \fu_registerbank|Decoder0~12_combout\,
	combout => \fu_registerbank|registers[14][1]~49_combout\);

-- Location: LCCOMB_X26_Y21_N16
\fu_registerbank|registers[14][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[14][1]~43_combout\ = (\fu_mux1|muxout[3]~3_combout\ & ((\fu_registerbank|registers[14][1]~49_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|registers[14][1]~49_combout\ & 
-- ((\fu_registerbank|registers[14][1]~q\))))) # (!\fu_mux1|muxout[3]~3_combout\ & (((\fu_registerbank|registers[14][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_mux1|muxout[3]~3_combout\,
	datac => \fu_registerbank|registers[14][1]~q\,
	datad => \fu_registerbank|registers[14][1]~49_combout\,
	combout => \fu_registerbank|registers[14][1]~43_combout\);

-- Location: FF_X26_Y21_N17
\fu_registerbank|registers[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[14][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[14][1]~q\);

-- Location: LCCOMB_X29_Y21_N2
\fu_registerbank|Mux30~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~17_combout\ = (\fu_mdr|q\(21) & (((\fu_mdr|q\(22))))) # (!\fu_mdr|q\(21) & ((\fu_mdr|q\(22) & ((\fu_registerbank|registers[14][1]~q\))) # (!\fu_mdr|q\(22) & (\fu_registerbank|registers[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[12][1]~q\,
	datab => \fu_registerbank|registers[14][1]~q\,
	datac => \fu_mdr|q\(21),
	datad => \fu_mdr|q\(22),
	combout => \fu_registerbank|Mux30~17_combout\);

-- Location: LCCOMB_X29_Y21_N8
\fu_registerbank|Mux30~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~18_combout\ = (\fu_mdr|q\(21) & ((\fu_registerbank|Mux30~17_combout\ & (\fu_registerbank|registers[15][1]~q\)) # (!\fu_registerbank|Mux30~17_combout\ & ((\fu_registerbank|registers[13][1]~q\))))) # (!\fu_mdr|q\(21) & 
-- (((\fu_registerbank|Mux30~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[15][1]~q\,
	datab => \fu_registerbank|registers[13][1]~q\,
	datac => \fu_mdr|q\(21),
	datad => \fu_registerbank|Mux30~17_combout\,
	combout => \fu_registerbank|Mux30~18_combout\);

-- Location: LCCOMB_X29_Y21_N0
\fu_registerbank|registers[8][1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][1]~52_combout\ = !\fu_mux2|muxout[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[8][1]~52_combout\);

-- Location: LCCOMB_X27_Y21_N12
\fu_registerbank|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~5_combout\ = (\fu_registerbank|Decoder0~16_combout\ & \fu_registerbank|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Decoder0~16_combout\,
	datad => \fu_registerbank|Decoder0~4_combout\,
	combout => \fu_registerbank|Decoder0~5_combout\);

-- Location: FF_X29_Y21_N1
\fu_registerbank|registers[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][1]~52_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][1]~q\);

-- Location: LCCOMB_X27_Y21_N4
\fu_registerbank|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~7_combout\ = (\fu_registerbank|Decoder0~16_combout\ & \fu_registerbank|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Decoder0~16_combout\,
	datad => \fu_registerbank|Decoder0~6_combout\,
	combout => \fu_registerbank|Decoder0~7_combout\);

-- Location: FF_X27_Y21_N5
\fu_registerbank|registers[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_mux2|muxout[1]~1_combout\,
	sload => VCC,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][1]~q\);

-- Location: LCCOMB_X29_Y21_N26
\fu_registerbank|Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~10_combout\ = (\fu_mdr|q\(21) & (((\fu_registerbank|registers[9][1]~q\) # (\fu_mdr|q\(22))))) # (!\fu_mdr|q\(21) & (!\fu_registerbank|registers[8][1]~q\ & ((!\fu_mdr|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[8][1]~q\,
	datab => \fu_registerbank|registers[9][1]~q\,
	datac => \fu_mdr|q\(21),
	datad => \fu_mdr|q\(22),
	combout => \fu_registerbank|Mux30~10_combout\);

-- Location: LCCOMB_X26_Y22_N28
\fu_registerbank|registers[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][1]~feeder_combout\ = \fu_mux2|muxout[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[11][1]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N22
\fu_registerbank|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~11_combout\ = (\fu_registerbank|Decoder0~16_combout\ & \fu_registerbank|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Decoder0~16_combout\,
	datad => \fu_registerbank|Decoder0~10_combout\,
	combout => \fu_registerbank|Decoder0~11_combout\);

-- Location: FF_X26_Y22_N29
\fu_registerbank|registers[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][1]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][1]~q\);

-- Location: LCCOMB_X29_Y22_N8
\fu_registerbank|registers[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][1]~feeder_combout\ = \fu_mux2|muxout[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[10][1]~feeder_combout\);

-- Location: LCCOMB_X28_Y21_N2
\fu_registerbank|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Decoder0~9_combout\ = (\fu_registerbank|Decoder0~8_combout\ & \fu_registerbank|Decoder0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_registerbank|Decoder0~8_combout\,
	datad => \fu_registerbank|Decoder0~16_combout\,
	combout => \fu_registerbank|Decoder0~9_combout\);

-- Location: FF_X29_Y22_N9
\fu_registerbank|registers[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][1]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][1]~q\);

-- Location: LCCOMB_X29_Y21_N12
\fu_registerbank|Mux30~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~11_combout\ = (\fu_registerbank|Mux30~10_combout\ & (((\fu_registerbank|registers[11][1]~q\)) # (!\fu_mdr|q\(22)))) # (!\fu_registerbank|Mux30~10_combout\ & (\fu_mdr|q\(22) & ((\fu_registerbank|registers[10][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux30~10_combout\,
	datab => \fu_mdr|q\(22),
	datac => \fu_registerbank|registers[11][1]~q\,
	datad => \fu_registerbank|registers[10][1]~q\,
	combout => \fu_registerbank|Mux30~11_combout\);

-- Location: LCCOMB_X29_Y21_N18
\fu_registerbank|Mux30~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~19_combout\ = (\fu_registerbank|Mux30~16_combout\ & (((\fu_registerbank|Mux30~18_combout\)) # (!\fu_mdr|q\(24)))) # (!\fu_registerbank|Mux30~16_combout\ & (\fu_mdr|q\(24) & ((\fu_registerbank|Mux30~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux30~16_combout\,
	datab => \fu_mdr|q\(24),
	datac => \fu_registerbank|Mux30~18_combout\,
	datad => \fu_registerbank|Mux30~11_combout\,
	combout => \fu_registerbank|Mux30~19_combout\);

-- Location: LCCOMB_X26_Y21_N30
\fu_registerbank|registers[26][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[26][1]~47_combout\ = (\fu_mux1|muxout[3]~3_combout\ & ((\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(15)))) # (!\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(20),
	datab => \fu_mux1|muxout[3]~3_combout\,
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_registerbank|registers[26][1]~47_combout\);

-- Location: LCCOMB_X30_Y21_N6
\fu_registerbank|registers[30][1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[30][1]~21_combout\ = (\fu_registerbank|Decoder0~12_combout\ & ((\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_mux2|muxout[1]~1_combout\))) # (!\fu_registerbank|registers[26][1]~47_combout\ & 
-- (\fu_registerbank|registers[30][1]~q\)))) # (!\fu_registerbank|Decoder0~12_combout\ & (((\fu_registerbank|registers[30][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Decoder0~12_combout\,
	datab => \fu_registerbank|registers[26][1]~47_combout\,
	datac => \fu_registerbank|registers[30][1]~q\,
	datad => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[30][1]~21_combout\);

-- Location: FF_X30_Y21_N7
\fu_registerbank|registers[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[30][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[30][1]~q\);

-- Location: LCCOMB_X26_Y21_N12
\fu_registerbank|registers[22][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[22][1]~46_combout\ = (!\fu_mux1|muxout[3]~3_combout\ & ((\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(15)))) # (!\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(20),
	datab => \fu_mux1|muxout[3]~3_combout\,
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_registerbank|registers[22][1]~46_combout\);

-- Location: LCCOMB_X30_Y21_N22
\fu_registerbank|registers[18][1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[18][1]~20_combout\ = (\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_registerbank|Decoder0~8_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~8_combout\ & 
-- ((\fu_registerbank|registers[18][1]~q\))))) # (!\fu_registerbank|registers[22][1]~46_combout\ & (((\fu_registerbank|registers[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|registers[22][1]~46_combout\,
	datac => \fu_registerbank|registers[18][1]~q\,
	datad => \fu_registerbank|Decoder0~8_combout\,
	combout => \fu_registerbank|registers[18][1]~20_combout\);

-- Location: FF_X30_Y21_N23
\fu_registerbank|registers[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[18][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[18][1]~q\);

-- Location: LCCOMB_X29_Y21_N10
\fu_registerbank|registers[26][1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[26][1]~19_combout\ = (\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_registerbank|Decoder0~8_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~8_combout\ & 
-- ((\fu_registerbank|registers[26][1]~q\))))) # (!\fu_registerbank|registers[26][1]~47_combout\ & (((\fu_registerbank|registers[26][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[26][1]~47_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[26][1]~q\,
	datad => \fu_registerbank|Decoder0~8_combout\,
	combout => \fu_registerbank|registers[26][1]~19_combout\);

-- Location: FF_X29_Y21_N11
\fu_registerbank|registers[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[26][1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[26][1]~q\);

-- Location: LCCOMB_X30_Y21_N30
\fu_registerbank|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~0_combout\ = (\fu_mdr|q\(24) & ((\fu_mdr|q\(23)) # ((\fu_registerbank|registers[26][1]~q\)))) # (!\fu_mdr|q\(24) & (!\fu_mdr|q\(23) & (\fu_registerbank|registers[18][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(24),
	datab => \fu_mdr|q\(23),
	datac => \fu_registerbank|registers[18][1]~q\,
	datad => \fu_registerbank|registers[26][1]~q\,
	combout => \fu_registerbank|Mux30~0_combout\);

-- Location: LCCOMB_X30_Y21_N28
\fu_registerbank|registers[22][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[22][1]~18_combout\ = (\fu_registerbank|Decoder0~12_combout\ & ((\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_mux2|muxout[1]~1_combout\))) # (!\fu_registerbank|registers[22][1]~46_combout\ & 
-- (\fu_registerbank|registers[22][1]~q\)))) # (!\fu_registerbank|Decoder0~12_combout\ & (((\fu_registerbank|registers[22][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Decoder0~12_combout\,
	datab => \fu_registerbank|registers[22][1]~46_combout\,
	datac => \fu_registerbank|registers[22][1]~q\,
	datad => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[22][1]~18_combout\);

-- Location: FF_X30_Y21_N29
\fu_registerbank|registers[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[22][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[22][1]~q\);

-- Location: LCCOMB_X30_Y21_N4
\fu_registerbank|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~1_combout\ = (\fu_mdr|q\(23) & ((\fu_registerbank|Mux30~0_combout\ & (\fu_registerbank|registers[30][1]~q\)) # (!\fu_registerbank|Mux30~0_combout\ & ((\fu_registerbank|registers[22][1]~q\))))) # (!\fu_mdr|q\(23) & 
-- (((\fu_registerbank|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[30][1]~q\,
	datab => \fu_mdr|q\(23),
	datac => \fu_registerbank|Mux30~0_combout\,
	datad => \fu_registerbank|registers[22][1]~q\,
	combout => \fu_registerbank|Mux30~1_combout\);

-- Location: LCCOMB_X27_Y22_N26
\fu_registerbank|registers[29][1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[29][1]~25_combout\ = (\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_registerbank|Decoder0~13_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~13_combout\ & 
-- ((\fu_registerbank|registers[29][1]~q\))))) # (!\fu_registerbank|registers[26][1]~47_combout\ & (((\fu_registerbank|registers[29][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[26][1]~47_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[29][1]~q\,
	datad => \fu_registerbank|Decoder0~13_combout\,
	combout => \fu_registerbank|registers[29][1]~25_combout\);

-- Location: FF_X27_Y22_N27
\fu_registerbank|registers[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[29][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[29][1]~q\);

-- Location: LCCOMB_X27_Y22_N30
\fu_registerbank|registers[25][1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[25][1]~22_combout\ = (\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_registerbank|Decoder0~6_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~6_combout\ & 
-- ((\fu_registerbank|registers[25][1]~q\))))) # (!\fu_registerbank|registers[26][1]~47_combout\ & (((\fu_registerbank|registers[25][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[26][1]~47_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[25][1]~q\,
	datad => \fu_registerbank|Decoder0~6_combout\,
	combout => \fu_registerbank|registers[25][1]~22_combout\);

-- Location: FF_X27_Y22_N31
\fu_registerbank|registers[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[25][1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[25][1]~q\);

-- Location: LCCOMB_X27_Y22_N22
\fu_registerbank|registers[17][1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[17][1]~24_combout\ = (\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_registerbank|Decoder0~6_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~6_combout\ & 
-- ((\fu_registerbank|registers[17][1]~q\))))) # (!\fu_registerbank|registers[22][1]~46_combout\ & (((\fu_registerbank|registers[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[22][1]~46_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[17][1]~q\,
	datad => \fu_registerbank|Decoder0~6_combout\,
	combout => \fu_registerbank|registers[17][1]~24_combout\);

-- Location: FF_X27_Y22_N23
\fu_registerbank|registers[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[17][1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[17][1]~q\);

-- Location: LCCOMB_X27_Y22_N16
\fu_registerbank|registers[21][1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[21][1]~23_combout\ = (\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_registerbank|Decoder0~13_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~13_combout\ & 
-- ((\fu_registerbank|registers[21][1]~q\))))) # (!\fu_registerbank|registers[22][1]~46_combout\ & (((\fu_registerbank|registers[21][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[22][1]~46_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[21][1]~q\,
	datad => \fu_registerbank|Decoder0~13_combout\,
	combout => \fu_registerbank|registers[21][1]~23_combout\);

-- Location: FF_X27_Y22_N17
\fu_registerbank|registers[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[21][1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[21][1]~q\);

-- Location: LCCOMB_X27_Y22_N6
\fu_registerbank|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~2_combout\ = (\fu_mdr|q\(24) & (((\fu_mdr|q\(23))))) # (!\fu_mdr|q\(24) & ((\fu_mdr|q\(23) & ((\fu_registerbank|registers[21][1]~q\))) # (!\fu_mdr|q\(23) & (\fu_registerbank|registers[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[17][1]~q\,
	datab => \fu_mdr|q\(24),
	datac => \fu_mdr|q\(23),
	datad => \fu_registerbank|registers[21][1]~q\,
	combout => \fu_registerbank|Mux30~2_combout\);

-- Location: LCCOMB_X27_Y22_N18
\fu_registerbank|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~3_combout\ = (\fu_mdr|q\(24) & ((\fu_registerbank|Mux30~2_combout\ & (\fu_registerbank|registers[29][1]~q\)) # (!\fu_registerbank|Mux30~2_combout\ & ((\fu_registerbank|registers[25][1]~q\))))) # (!\fu_mdr|q\(24) & 
-- (((\fu_registerbank|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[29][1]~q\,
	datab => \fu_mdr|q\(24),
	datac => \fu_registerbank|registers[25][1]~q\,
	datad => \fu_registerbank|Mux30~2_combout\,
	combout => \fu_registerbank|Mux30~3_combout\);

-- Location: LCCOMB_X27_Y21_N0
\fu_registerbank|registers[28][1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[28][1]~29_combout\ = (\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_registerbank|Decoder0~14_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~14_combout\ & 
-- ((\fu_registerbank|registers[28][1]~q\))))) # (!\fu_registerbank|registers[26][1]~47_combout\ & (((\fu_registerbank|registers[28][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[26][1]~47_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[28][1]~q\,
	datad => \fu_registerbank|Decoder0~14_combout\,
	combout => \fu_registerbank|registers[28][1]~29_combout\);

-- Location: FF_X27_Y21_N1
\fu_registerbank|registers[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[28][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[28][1]~q\);

-- Location: LCCOMB_X26_Y21_N22
\fu_registerbank|registers[20][1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[20][1]~26_combout\ = (\fu_registerbank|Decoder0~14_combout\ & ((\fu_registerbank|registers[22][1]~46_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|registers[22][1]~46_combout\ & 
-- ((\fu_registerbank|registers[20][1]~q\))))) # (!\fu_registerbank|Decoder0~14_combout\ & (((\fu_registerbank|registers[20][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|Decoder0~14_combout\,
	datac => \fu_registerbank|registers[20][1]~q\,
	datad => \fu_registerbank|registers[22][1]~46_combout\,
	combout => \fu_registerbank|registers[20][1]~26_combout\);

-- Location: FF_X26_Y21_N23
\fu_registerbank|registers[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[20][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[20][1]~q\);

-- Location: LCCOMB_X27_Y22_N0
\fu_registerbank|registers[16][1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[16][1]~28_combout\ = (\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_registerbank|Decoder0~4_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~4_combout\ & 
-- ((\fu_registerbank|registers[16][1]~q\))))) # (!\fu_registerbank|registers[22][1]~46_combout\ & (((\fu_registerbank|registers[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[22][1]~46_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[16][1]~q\,
	datad => \fu_registerbank|Decoder0~4_combout\,
	combout => \fu_registerbank|registers[16][1]~28_combout\);

-- Location: FF_X27_Y22_N1
\fu_registerbank|registers[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[16][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[16][1]~q\);

-- Location: LCCOMB_X27_Y22_N10
\fu_registerbank|registers[24][1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[24][1]~27_combout\ = (\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_registerbank|Decoder0~4_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~4_combout\ & 
-- ((\fu_registerbank|registers[24][1]~q\))))) # (!\fu_registerbank|registers[26][1]~47_combout\ & (((\fu_registerbank|registers[24][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[26][1]~47_combout\,
	datab => \fu_mux2|muxout[1]~1_combout\,
	datac => \fu_registerbank|registers[24][1]~q\,
	datad => \fu_registerbank|Decoder0~4_combout\,
	combout => \fu_registerbank|registers[24][1]~27_combout\);

-- Location: FF_X27_Y22_N11
\fu_registerbank|registers[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[24][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[24][1]~q\);

-- Location: LCCOMB_X27_Y22_N12
\fu_registerbank|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~4_combout\ = (\fu_mdr|q\(23) & (((\fu_mdr|q\(24))))) # (!\fu_mdr|q\(23) & ((\fu_mdr|q\(24) & ((\fu_registerbank|registers[24][1]~q\))) # (!\fu_mdr|q\(24) & (\fu_registerbank|registers[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(23),
	datab => \fu_registerbank|registers[16][1]~q\,
	datac => \fu_mdr|q\(24),
	datad => \fu_registerbank|registers[24][1]~q\,
	combout => \fu_registerbank|Mux30~4_combout\);

-- Location: LCCOMB_X27_Y22_N28
\fu_registerbank|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~5_combout\ = (\fu_mdr|q\(23) & ((\fu_registerbank|Mux30~4_combout\ & (\fu_registerbank|registers[28][1]~q\)) # (!\fu_registerbank|Mux30~4_combout\ & ((\fu_registerbank|registers[20][1]~q\))))) # (!\fu_mdr|q\(23) & 
-- (((\fu_registerbank|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(23),
	datab => \fu_registerbank|registers[28][1]~q\,
	datac => \fu_registerbank|registers[20][1]~q\,
	datad => \fu_registerbank|Mux30~4_combout\,
	combout => \fu_registerbank|Mux30~5_combout\);

-- Location: LCCOMB_X27_Y22_N14
\fu_registerbank|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~6_combout\ = (\fu_mdr|q\(22) & (((\fu_mdr|q\(21))))) # (!\fu_mdr|q\(22) & ((\fu_mdr|q\(21) & (\fu_registerbank|Mux30~3_combout\)) # (!\fu_mdr|q\(21) & ((\fu_registerbank|Mux30~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(22),
	datab => \fu_registerbank|Mux30~3_combout\,
	datac => \fu_mdr|q\(21),
	datad => \fu_registerbank|Mux30~5_combout\,
	combout => \fu_registerbank|Mux30~6_combout\);

-- Location: LCCOMB_X30_Y21_N14
\fu_registerbank|registers[19][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[19][1]~32_combout\ = (\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_registerbank|Decoder0~10_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~10_combout\ & 
-- ((\fu_registerbank|registers[19][1]~q\))))) # (!\fu_registerbank|registers[22][1]~46_combout\ & (((\fu_registerbank|registers[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|registers[22][1]~46_combout\,
	datac => \fu_registerbank|registers[19][1]~q\,
	datad => \fu_registerbank|Decoder0~10_combout\,
	combout => \fu_registerbank|registers[19][1]~32_combout\);

-- Location: FF_X30_Y21_N15
\fu_registerbank|registers[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[19][1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[19][1]~q\);

-- Location: LCCOMB_X30_Y21_N24
\fu_registerbank|registers[23][1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[23][1]~31_combout\ = (\fu_registerbank|registers[22][1]~46_combout\ & ((\fu_registerbank|Decoder0~15_combout\ & ((\fu_mux2|muxout[1]~1_combout\))) # (!\fu_registerbank|Decoder0~15_combout\ & 
-- (\fu_registerbank|registers[23][1]~q\)))) # (!\fu_registerbank|registers[22][1]~46_combout\ & (((\fu_registerbank|registers[23][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[22][1]~46_combout\,
	datab => \fu_registerbank|Decoder0~15_combout\,
	datac => \fu_registerbank|registers[23][1]~q\,
	datad => \fu_mux2|muxout[1]~1_combout\,
	combout => \fu_registerbank|registers[23][1]~31_combout\);

-- Location: FF_X30_Y21_N25
\fu_registerbank|registers[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[23][1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[23][1]~q\);

-- Location: LCCOMB_X30_Y21_N10
\fu_registerbank|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~7_combout\ = (\fu_mdr|q\(24) & (((\fu_mdr|q\(23))))) # (!\fu_mdr|q\(24) & ((\fu_mdr|q\(23) & ((\fu_registerbank|registers[23][1]~q\))) # (!\fu_mdr|q\(23) & (\fu_registerbank|registers[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(24),
	datab => \fu_registerbank|registers[19][1]~q\,
	datac => \fu_mdr|q\(23),
	datad => \fu_registerbank|registers[23][1]~q\,
	combout => \fu_registerbank|Mux30~7_combout\);

-- Location: LCCOMB_X30_Y21_N2
\fu_registerbank|registers[31][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[31][1]~33_combout\ = (\fu_registerbank|Decoder0~15_combout\ & ((\fu_registerbank|registers[26][1]~47_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|registers[26][1]~47_combout\ & 
-- ((\fu_registerbank|registers[31][1]~q\))))) # (!\fu_registerbank|Decoder0~15_combout\ & (((\fu_registerbank|registers[31][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|Decoder0~15_combout\,
	datac => \fu_registerbank|registers[31][1]~q\,
	datad => \fu_registerbank|registers[26][1]~47_combout\,
	combout => \fu_registerbank|registers[31][1]~33_combout\);

-- Location: FF_X30_Y21_N3
\fu_registerbank|registers[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[31][1]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[31][1]~q\);

-- Location: LCCOMB_X30_Y21_N18
\fu_registerbank|registers[27][1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[27][1]~30_combout\ = (\fu_registerbank|registers[26][1]~47_combout\ & ((\fu_registerbank|Decoder0~10_combout\ & (\fu_mux2|muxout[1]~1_combout\)) # (!\fu_registerbank|Decoder0~10_combout\ & 
-- ((\fu_registerbank|registers[27][1]~q\))))) # (!\fu_registerbank|registers[26][1]~47_combout\ & (((\fu_registerbank|registers[27][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux2|muxout[1]~1_combout\,
	datab => \fu_registerbank|registers[26][1]~47_combout\,
	datac => \fu_registerbank|registers[27][1]~q\,
	datad => \fu_registerbank|Decoder0~10_combout\,
	combout => \fu_registerbank|registers[27][1]~30_combout\);

-- Location: FF_X30_Y21_N19
\fu_registerbank|registers[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[27][1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[27][1]~q\);

-- Location: LCCOMB_X30_Y21_N0
\fu_registerbank|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~8_combout\ = (\fu_registerbank|Mux30~7_combout\ & ((\fu_registerbank|registers[31][1]~q\) # ((!\fu_mdr|q\(24))))) # (!\fu_registerbank|Mux30~7_combout\ & (((\fu_mdr|q\(24) & \fu_registerbank|registers[27][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux30~7_combout\,
	datab => \fu_registerbank|registers[31][1]~q\,
	datac => \fu_mdr|q\(24),
	datad => \fu_registerbank|registers[27][1]~q\,
	combout => \fu_registerbank|Mux30~8_combout\);

-- Location: LCCOMB_X30_Y21_N26
\fu_registerbank|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~9_combout\ = (\fu_mdr|q\(22) & ((\fu_registerbank|Mux30~6_combout\ & ((\fu_registerbank|Mux30~8_combout\))) # (!\fu_registerbank|Mux30~6_combout\ & (\fu_registerbank|Mux30~1_combout\)))) # (!\fu_mdr|q\(22) & 
-- (((\fu_registerbank|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(22),
	datab => \fu_registerbank|Mux30~1_combout\,
	datac => \fu_registerbank|Mux30~6_combout\,
	datad => \fu_registerbank|Mux30~8_combout\,
	combout => \fu_registerbank|Mux30~9_combout\);

-- Location: LCCOMB_X29_Y21_N24
\fu_registerbank|Mux30~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux30~20_combout\ = (\fu_mdr|q\(25) & ((\fu_registerbank|Mux30~9_combout\))) # (!\fu_mdr|q\(25) & (\fu_registerbank|Mux30~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_registerbank|Mux30~19_combout\,
	datac => \fu_mdr|q\(25),
	datad => \fu_registerbank|Mux30~9_combout\,
	combout => \fu_registerbank|Mux30~20_combout\);

-- Location: FF_X29_Y21_N25
\fu_registerbank|read1out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|Mux30~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|read1out\(1));

-- Location: FF_X22_Y21_N5
\fu_registera|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_registerbank|read1out\(1),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registera|q\(1));

-- Location: LCCOMB_X22_Y21_N4
\fu_mux3|muxout[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[1]~31_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(1))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(1),
	datad => \fu_pc|q\(1),
	combout => \fu_mux3|muxout[1]~31_combout\);

-- Location: LCCOMB_X21_Y19_N0
\fu_mux3|muxout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[0]~0_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(0)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(0),
	datad => \fu_registera|q\(0),
	combout => \fu_mux3|muxout[0]~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\fu_mux4|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux31~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(0))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(0),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_registerb|q\(0),
	combout => \fu_mux4|Mux31~0_combout\);

-- Location: LCCOMB_X22_Y21_N2
\fu_alu|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~0_combout\ = \fu_mux4|Mux31~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux31~0_combout\,
	combout => \fu_alu|Add0~0_combout\);

-- Location: LCCOMB_X22_Y21_N16
\fu_alu|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~2_cout\ = CARRY(\fu_alucontrol|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~0_combout\,
	datad => VCC,
	cout => \fu_alu|Add0~2_cout\);

-- Location: LCCOMB_X22_Y21_N18
\fu_alu|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~3_combout\ = (\fu_mux3|muxout[0]~0_combout\ & ((\fu_alu|Add0~0_combout\ & (\fu_alu|Add0~2_cout\ & VCC)) # (!\fu_alu|Add0~0_combout\ & (!\fu_alu|Add0~2_cout\)))) # (!\fu_mux3|muxout[0]~0_combout\ & ((\fu_alu|Add0~0_combout\ & 
-- (!\fu_alu|Add0~2_cout\)) # (!\fu_alu|Add0~0_combout\ & ((\fu_alu|Add0~2_cout\) # (GND)))))
-- \fu_alu|Add0~4\ = CARRY((\fu_mux3|muxout[0]~0_combout\ & (!\fu_alu|Add0~0_combout\ & !\fu_alu|Add0~2_cout\)) # (!\fu_mux3|muxout[0]~0_combout\ & ((!\fu_alu|Add0~2_cout\) # (!\fu_alu|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[0]~0_combout\,
	datab => \fu_alu|Add0~0_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~2_cout\,
	combout => \fu_alu|Add0~3_combout\,
	cout => \fu_alu|Add0~4\);

-- Location: LCCOMB_X22_Y21_N20
\fu_alu|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~6_combout\ = ((\fu_alu|Add0~5_combout\ $ (\fu_mux3|muxout[1]~31_combout\ $ (!\fu_alu|Add0~4\)))) # (GND)
-- \fu_alu|Add0~7\ = CARRY((\fu_alu|Add0~5_combout\ & ((\fu_mux3|muxout[1]~31_combout\) # (!\fu_alu|Add0~4\))) # (!\fu_alu|Add0~5_combout\ & (\fu_mux3|muxout[1]~31_combout\ & !\fu_alu|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~5_combout\,
	datab => \fu_mux3|muxout[1]~31_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~4\,
	combout => \fu_alu|Add0~6_combout\,
	cout => \fu_alu|Add0~7\);

-- Location: LCCOMB_X22_Y21_N22
\fu_alu|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~9_combout\ = (\fu_mux3|muxout[2]~30_combout\ & ((\fu_alu|Add0~8_combout\ & (\fu_alu|Add0~7\ & VCC)) # (!\fu_alu|Add0~8_combout\ & (!\fu_alu|Add0~7\)))) # (!\fu_mux3|muxout[2]~30_combout\ & ((\fu_alu|Add0~8_combout\ & (!\fu_alu|Add0~7\)) # 
-- (!\fu_alu|Add0~8_combout\ & ((\fu_alu|Add0~7\) # (GND)))))
-- \fu_alu|Add0~10\ = CARRY((\fu_mux3|muxout[2]~30_combout\ & (!\fu_alu|Add0~8_combout\ & !\fu_alu|Add0~7\)) # (!\fu_mux3|muxout[2]~30_combout\ & ((!\fu_alu|Add0~7\) # (!\fu_alu|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[2]~30_combout\,
	datab => \fu_alu|Add0~8_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~7\,
	combout => \fu_alu|Add0~9_combout\,
	cout => \fu_alu|Add0~10\);

-- Location: LCCOMB_X22_Y21_N24
\fu_alu|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~12_combout\ = ((\fu_mux3|muxout[3]~29_combout\ $ (\fu_alu|Add0~11_combout\ $ (!\fu_alu|Add0~10\)))) # (GND)
-- \fu_alu|Add0~13\ = CARRY((\fu_mux3|muxout[3]~29_combout\ & ((\fu_alu|Add0~11_combout\) # (!\fu_alu|Add0~10\))) # (!\fu_mux3|muxout[3]~29_combout\ & (\fu_alu|Add0~11_combout\ & !\fu_alu|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[3]~29_combout\,
	datab => \fu_alu|Add0~11_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~10\,
	combout => \fu_alu|Add0~12_combout\,
	cout => \fu_alu|Add0~13\);

-- Location: LCCOMB_X22_Y21_N26
\fu_alu|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~15_combout\ = (\fu_alu|Add0~14_combout\ & ((\fu_mux3|muxout[4]~28_combout\ & (\fu_alu|Add0~13\ & VCC)) # (!\fu_mux3|muxout[4]~28_combout\ & (!\fu_alu|Add0~13\)))) # (!\fu_alu|Add0~14_combout\ & ((\fu_mux3|muxout[4]~28_combout\ & 
-- (!\fu_alu|Add0~13\)) # (!\fu_mux3|muxout[4]~28_combout\ & ((\fu_alu|Add0~13\) # (GND)))))
-- \fu_alu|Add0~16\ = CARRY((\fu_alu|Add0~14_combout\ & (!\fu_mux3|muxout[4]~28_combout\ & !\fu_alu|Add0~13\)) # (!\fu_alu|Add0~14_combout\ & ((!\fu_alu|Add0~13\) # (!\fu_mux3|muxout[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~14_combout\,
	datab => \fu_mux3|muxout[4]~28_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~13\,
	combout => \fu_alu|Add0~15_combout\,
	cout => \fu_alu|Add0~16\);

-- Location: LCCOMB_X22_Y21_N28
\fu_alu|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~18_combout\ = ((\fu_alu|Add0~17_combout\ $ (\fu_mux3|muxout[5]~27_combout\ $ (!\fu_alu|Add0~16\)))) # (GND)
-- \fu_alu|Add0~19\ = CARRY((\fu_alu|Add0~17_combout\ & ((\fu_mux3|muxout[5]~27_combout\) # (!\fu_alu|Add0~16\))) # (!\fu_alu|Add0~17_combout\ & (\fu_mux3|muxout[5]~27_combout\ & !\fu_alu|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~17_combout\,
	datab => \fu_mux3|muxout[5]~27_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~16\,
	combout => \fu_alu|Add0~18_combout\,
	cout => \fu_alu|Add0~19\);

-- Location: LCCOMB_X22_Y21_N30
\fu_alu|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~21_combout\ = (\fu_alu|Add0~20_combout\ & ((\fu_mux3|muxout[6]~26_combout\ & (\fu_alu|Add0~19\ & VCC)) # (!\fu_mux3|muxout[6]~26_combout\ & (!\fu_alu|Add0~19\)))) # (!\fu_alu|Add0~20_combout\ & ((\fu_mux3|muxout[6]~26_combout\ & 
-- (!\fu_alu|Add0~19\)) # (!\fu_mux3|muxout[6]~26_combout\ & ((\fu_alu|Add0~19\) # (GND)))))
-- \fu_alu|Add0~22\ = CARRY((\fu_alu|Add0~20_combout\ & (!\fu_mux3|muxout[6]~26_combout\ & !\fu_alu|Add0~19\)) # (!\fu_alu|Add0~20_combout\ & ((!\fu_alu|Add0~19\) # (!\fu_mux3|muxout[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~20_combout\,
	datab => \fu_mux3|muxout[6]~26_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~19\,
	combout => \fu_alu|Add0~21_combout\,
	cout => \fu_alu|Add0~22\);

-- Location: LCCOMB_X22_Y20_N0
\fu_alu|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~24_combout\ = ((\fu_alu|Add0~23_combout\ $ (\fu_mux3|muxout[7]~25_combout\ $ (!\fu_alu|Add0~22\)))) # (GND)
-- \fu_alu|Add0~25\ = CARRY((\fu_alu|Add0~23_combout\ & ((\fu_mux3|muxout[7]~25_combout\) # (!\fu_alu|Add0~22\))) # (!\fu_alu|Add0~23_combout\ & (\fu_mux3|muxout[7]~25_combout\ & !\fu_alu|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~23_combout\,
	datab => \fu_mux3|muxout[7]~25_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~22\,
	combout => \fu_alu|Add0~24_combout\,
	cout => \fu_alu|Add0~25\);

-- Location: LCCOMB_X22_Y20_N2
\fu_alu|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~27_combout\ = (\fu_mux3|muxout[8]~24_combout\ & ((\fu_alu|Add0~26_combout\ & (\fu_alu|Add0~25\ & VCC)) # (!\fu_alu|Add0~26_combout\ & (!\fu_alu|Add0~25\)))) # (!\fu_mux3|muxout[8]~24_combout\ & ((\fu_alu|Add0~26_combout\ & 
-- (!\fu_alu|Add0~25\)) # (!\fu_alu|Add0~26_combout\ & ((\fu_alu|Add0~25\) # (GND)))))
-- \fu_alu|Add0~28\ = CARRY((\fu_mux3|muxout[8]~24_combout\ & (!\fu_alu|Add0~26_combout\ & !\fu_alu|Add0~25\)) # (!\fu_mux3|muxout[8]~24_combout\ & ((!\fu_alu|Add0~25\) # (!\fu_alu|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[8]~24_combout\,
	datab => \fu_alu|Add0~26_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~25\,
	combout => \fu_alu|Add0~27_combout\,
	cout => \fu_alu|Add0~28\);

-- Location: LCCOMB_X22_Y20_N4
\fu_alu|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~30_combout\ = ((\fu_mux3|muxout[9]~23_combout\ $ (\fu_alu|Add0~29_combout\ $ (!\fu_alu|Add0~28\)))) # (GND)
-- \fu_alu|Add0~31\ = CARRY((\fu_mux3|muxout[9]~23_combout\ & ((\fu_alu|Add0~29_combout\) # (!\fu_alu|Add0~28\))) # (!\fu_mux3|muxout[9]~23_combout\ & (\fu_alu|Add0~29_combout\ & !\fu_alu|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[9]~23_combout\,
	datab => \fu_alu|Add0~29_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~28\,
	combout => \fu_alu|Add0~30_combout\,
	cout => \fu_alu|Add0~31\);

-- Location: LCCOMB_X22_Y20_N6
\fu_alu|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~33_combout\ = (\fu_mux3|muxout[10]~22_combout\ & ((\fu_alu|Add0~32_combout\ & (\fu_alu|Add0~31\ & VCC)) # (!\fu_alu|Add0~32_combout\ & (!\fu_alu|Add0~31\)))) # (!\fu_mux3|muxout[10]~22_combout\ & ((\fu_alu|Add0~32_combout\ & 
-- (!\fu_alu|Add0~31\)) # (!\fu_alu|Add0~32_combout\ & ((\fu_alu|Add0~31\) # (GND)))))
-- \fu_alu|Add0~34\ = CARRY((\fu_mux3|muxout[10]~22_combout\ & (!\fu_alu|Add0~32_combout\ & !\fu_alu|Add0~31\)) # (!\fu_mux3|muxout[10]~22_combout\ & ((!\fu_alu|Add0~31\) # (!\fu_alu|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[10]~22_combout\,
	datab => \fu_alu|Add0~32_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~31\,
	combout => \fu_alu|Add0~33_combout\,
	cout => \fu_alu|Add0~34\);

-- Location: LCCOMB_X21_Y19_N22
\fu_alu|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux23~8_combout\ = (\fu_alucontrol|Mux5~1_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & \fu_alucontrol|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alucontrol|Mux5~1_combout\,
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_alucontrol|Mux4~0_combout\,
	combout => \fu_alu|Mux23~8_combout\);

-- Location: LCCOMB_X21_Y22_N6
\fu_alu|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux21~0_combout\ = (\fu_mux4|Mux21~1_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[10]~22_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux21~1_combout\ & (\fu_mux3|muxout[10]~22_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux21~1_combout\,
	datab => \fu_mux3|muxout[10]~22_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux21~0_combout\);

-- Location: LCCOMB_X21_Y22_N28
\fu_alu|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux21~1_combout\ = (\fu_alu|Mux21~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Add0~33_combout\,
	datad => \fu_alu|Mux21~0_combout\,
	combout => \fu_alu|Mux21~1_combout\);

-- Location: FF_X21_Y22_N29
\fu_aluout|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux21~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(10));

-- Location: LCCOMB_X21_Y22_N18
\fu_mux2|muxout[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[10]~10_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(10)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_aluout|q\(10),
	datac => \fu_controlunit|MemtoReg~q\,
	datad => \fu_mdr|q\(10),
	combout => \fu_mux2|muxout[10]~10_combout\);

-- Location: M9K_X25_Y20_N0
\fu_memory|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FE20",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:fu_memory|altsyncram:altsyncram_component|altsyncram_dpj1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_writeenable~combout\,
	portare => \fu_controlunit|ReadMem~q\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fu_memory|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: FF_X24_Y20_N1
\fu_mdr|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(9),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(9));

-- Location: FF_X26_Y20_N5
\fu_pc|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[11]~9_combout\,
	asdata => \fu_mdr|q\(9),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(11));

-- Location: LCCOMB_X26_Y20_N8
\fu_mux3|muxout[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[11]~21_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(11)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(11),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_registera|q\(11),
	combout => \fu_mux3|muxout[11]~21_combout\);

-- Location: LCCOMB_X24_Y20_N12
\fu_mux4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux20~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & ((\fu_mdr|q\(11)))) # (!\fu_controlunit|OrigBALU\(1) & (\fu_registerb|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerb|q\(11),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(11),
	datad => \fu_controlunit|OrigBALU\(1),
	combout => \fu_mux4|Mux20~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\fu_mux4|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux20~1_combout\ = (\fu_mux4|Mux20~0_combout\) # ((\fu_mdr|q\(9) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(9),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux20~0_combout\,
	combout => \fu_mux4|Mux20~1_combout\);

-- Location: LCCOMB_X26_Y20_N22
\fu_alu|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux20~0_combout\ = (\fu_mux3|muxout[11]~21_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux4|Mux20~1_combout\)))) # (!\fu_mux3|muxout[11]~21_combout\ & (((\fu_mux4|Mux20~1_combout\ & \fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_mux3|muxout[11]~21_combout\,
	datac => \fu_mux4|Mux20~1_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux20~0_combout\);

-- Location: LCCOMB_X23_Y20_N26
\fu_alu|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~35_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux20~1_combout\,
	combout => \fu_alu|Add0~35_combout\);

-- Location: LCCOMB_X22_Y20_N8
\fu_alu|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~36_combout\ = ((\fu_mux3|muxout[11]~21_combout\ $ (\fu_alu|Add0~35_combout\ $ (!\fu_alu|Add0~34\)))) # (GND)
-- \fu_alu|Add0~37\ = CARRY((\fu_mux3|muxout[11]~21_combout\ & ((\fu_alu|Add0~35_combout\) # (!\fu_alu|Add0~34\))) # (!\fu_mux3|muxout[11]~21_combout\ & (\fu_alu|Add0~35_combout\ & !\fu_alu|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[11]~21_combout\,
	datab => \fu_alu|Add0~35_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~34\,
	combout => \fu_alu|Add0~36_combout\,
	cout => \fu_alu|Add0~37\);

-- Location: LCCOMB_X26_Y20_N20
\fu_alu|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux20~1_combout\ = (\fu_alu|Mux20~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux20~0_combout\,
	datad => \fu_alu|Add0~36_combout\,
	combout => \fu_alu|Mux20~1_combout\);

-- Location: FF_X26_Y20_N21
\fu_aluout|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux20~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(11));

-- Location: LCCOMB_X26_Y20_N2
\fu_mux2|muxout[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[11]~11_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(11)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(11),
	datab => \fu_mdr|q\(11),
	datac => \fu_controlunit|MemtoReg~q\,
	combout => \fu_mux2|muxout[11]~11_combout\);

-- Location: FF_X23_Y21_N3
\fu_mdr|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(10),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(10));

-- Location: LCCOMB_X24_Y21_N24
\fu_mux4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux19~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(12))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_mdr|q\(12),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_registerb|q\(12),
	combout => \fu_mux4|Mux19~0_combout\);

-- Location: LCCOMB_X24_Y21_N22
\fu_mux4|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux19~1_combout\ = (\fu_mux4|Mux19~0_combout\) # ((\fu_mdr|q\(10) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(10),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux19~0_combout\,
	combout => \fu_mux4|Mux19~1_combout\);

-- Location: LCCOMB_X23_Y20_N24
\fu_pc|q[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[12]~10_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(12))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(12),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux19~1_combout\,
	combout => \fu_pc|q[12]~10_combout\);

-- Location: FF_X23_Y20_N25
\fu_pc|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[12]~10_combout\,
	asdata => \fu_mdr|q\(10),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(12));

-- Location: LCCOMB_X23_Y20_N18
\fu_mux3|muxout[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[12]~20_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(12))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(12),
	datad => \fu_pc|q\(12),
	combout => \fu_mux3|muxout[12]~20_combout\);

-- Location: LCCOMB_X24_Y20_N24
\fu_alu|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux19~0_combout\ = (\fu_mux4|Mux19~1_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[12]~20_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux19~1_combout\ & (\fu_mux3|muxout[12]~20_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux19~1_combout\,
	datab => \fu_mux3|muxout[12]~20_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux19~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\fu_alu|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~38_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux19~1_combout\,
	combout => \fu_alu|Add0~38_combout\);

-- Location: LCCOMB_X22_Y20_N10
\fu_alu|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~39_combout\ = (\fu_alu|Add0~38_combout\ & ((\fu_mux3|muxout[12]~20_combout\ & (\fu_alu|Add0~37\ & VCC)) # (!\fu_mux3|muxout[12]~20_combout\ & (!\fu_alu|Add0~37\)))) # (!\fu_alu|Add0~38_combout\ & ((\fu_mux3|muxout[12]~20_combout\ & 
-- (!\fu_alu|Add0~37\)) # (!\fu_mux3|muxout[12]~20_combout\ & ((\fu_alu|Add0~37\) # (GND)))))
-- \fu_alu|Add0~40\ = CARRY((\fu_alu|Add0~38_combout\ & (!\fu_mux3|muxout[12]~20_combout\ & !\fu_alu|Add0~37\)) # (!\fu_alu|Add0~38_combout\ & ((!\fu_alu|Add0~37\) # (!\fu_mux3|muxout[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~38_combout\,
	datab => \fu_mux3|muxout[12]~20_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~37\,
	combout => \fu_alu|Add0~39_combout\,
	cout => \fu_alu|Add0~40\);

-- Location: LCCOMB_X23_Y20_N16
\fu_alu|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux19~1_combout\ = (\fu_alu|Mux19~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux19~0_combout\,
	datad => \fu_alu|Add0~39_combout\,
	combout => \fu_alu|Mux19~1_combout\);

-- Location: FF_X23_Y20_N17
\fu_aluout|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux19~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(12));

-- Location: LCCOMB_X23_Y20_N22
\fu_mux2|muxout[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[12]~12_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(12)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(12),
	datad => \fu_mdr|q\(12),
	combout => \fu_mux2|muxout[12]~12_combout\);

-- Location: FF_X24_Y20_N13
\fu_mdr|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(11),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(11));

-- Location: LCCOMB_X24_Y20_N2
\fu_mux4|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux18~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(13))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(13),
	datad => \fu_registerb|q\(13),
	combout => \fu_mux4|Mux18~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\fu_mux4|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux18~1_combout\ = (\fu_mux4|Mux18~0_combout\) # ((\fu_mdr|q\(11) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(11),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux18~0_combout\,
	combout => \fu_mux4|Mux18~1_combout\);

-- Location: LCCOMB_X26_Y20_N10
\fu_pc|q[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[13]~11_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(13))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(13),
	datad => \fu_alu|Mux18~1_combout\,
	combout => \fu_pc|q[13]~11_combout\);

-- Location: FF_X26_Y20_N11
\fu_pc|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[13]~11_combout\,
	asdata => \fu_mdr|q\(11),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(13));

-- Location: LCCOMB_X26_Y20_N14
\fu_mux3|muxout[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[13]~19_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(13)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(13),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_registera|q\(13),
	combout => \fu_mux3|muxout[13]~19_combout\);

-- Location: LCCOMB_X26_Y20_N28
\fu_alu|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux18~0_combout\ = (\fu_mux4|Mux18~1_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux3|muxout[13]~19_combout\)))) # (!\fu_mux4|Mux18~1_combout\ & (((\fu_mux3|muxout[13]~19_combout\ & \fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_mux4|Mux18~1_combout\,
	datac => \fu_mux3|muxout[13]~19_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux18~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\fu_alu|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~41_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux18~1_combout\,
	combout => \fu_alu|Add0~41_combout\);

-- Location: LCCOMB_X22_Y20_N12
\fu_alu|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~42_combout\ = ((\fu_alu|Add0~41_combout\ $ (\fu_mux3|muxout[13]~19_combout\ $ (!\fu_alu|Add0~40\)))) # (GND)
-- \fu_alu|Add0~43\ = CARRY((\fu_alu|Add0~41_combout\ & ((\fu_mux3|muxout[13]~19_combout\) # (!\fu_alu|Add0~40\))) # (!\fu_alu|Add0~41_combout\ & (\fu_mux3|muxout[13]~19_combout\ & !\fu_alu|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~41_combout\,
	datab => \fu_mux3|muxout[13]~19_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~40\,
	combout => \fu_alu|Add0~42_combout\,
	cout => \fu_alu|Add0~43\);

-- Location: LCCOMB_X26_Y20_N16
\fu_alu|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux18~1_combout\ = (\fu_alu|Mux18~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datab => \fu_alu|Mux18~0_combout\,
	datad => \fu_alu|Add0~42_combout\,
	combout => \fu_alu|Mux18~1_combout\);

-- Location: FF_X26_Y20_N17
\fu_aluout|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux18~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(13));

-- Location: LCCOMB_X26_Y20_N0
\fu_mux2|muxout[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[13]~13_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(13))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(13),
	datab => \fu_aluout|q\(13),
	datac => \fu_controlunit|MemtoReg~q\,
	combout => \fu_mux2|muxout[13]~13_combout\);

-- Location: LCCOMB_X24_Y21_N4
\fu_mux4|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux17~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(14))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(14),
	datad => \fu_registerb|q\(14),
	combout => \fu_mux4|Mux17~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\fu_mux4|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux17~1_combout\ = (\fu_mux4|Mux17~0_combout\) # ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(12) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_mdr|q\(12),
	datac => \fu_mux4|Mux17~0_combout\,
	datad => \fu_controlunit|OrigBALU\(0),
	combout => \fu_mux4|Mux17~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
\fu_pc|q[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[14]~12_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(14))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(14),
	datad => \fu_alu|Mux17~1_combout\,
	combout => \fu_pc|q[14]~12_combout\);

-- Location: FF_X23_Y20_N7
\fu_pc|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[14]~12_combout\,
	asdata => \fu_mdr|q\(12),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(14));

-- Location: LCCOMB_X23_Y20_N8
\fu_mux3|muxout[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[14]~18_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(14)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(14),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_registera|q\(14),
	combout => \fu_mux3|muxout[14]~18_combout\);

-- Location: LCCOMB_X24_Y20_N14
\fu_alu|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux17~0_combout\ = (\fu_mux4|Mux17~1_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[14]~18_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux17~1_combout\ & (\fu_mux3|muxout[14]~18_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux17~1_combout\,
	datab => \fu_mux3|muxout[14]~18_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux17~0_combout\);

-- Location: LCCOMB_X23_Y21_N16
\fu_alu|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~44_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux17~1_combout\,
	combout => \fu_alu|Add0~44_combout\);

-- Location: LCCOMB_X22_Y20_N14
\fu_alu|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~45_combout\ = (\fu_alu|Add0~44_combout\ & ((\fu_mux3|muxout[14]~18_combout\ & (\fu_alu|Add0~43\ & VCC)) # (!\fu_mux3|muxout[14]~18_combout\ & (!\fu_alu|Add0~43\)))) # (!\fu_alu|Add0~44_combout\ & ((\fu_mux3|muxout[14]~18_combout\ & 
-- (!\fu_alu|Add0~43\)) # (!\fu_mux3|muxout[14]~18_combout\ & ((\fu_alu|Add0~43\) # (GND)))))
-- \fu_alu|Add0~46\ = CARRY((\fu_alu|Add0~44_combout\ & (!\fu_mux3|muxout[14]~18_combout\ & !\fu_alu|Add0~43\)) # (!\fu_alu|Add0~44_combout\ & ((!\fu_alu|Add0~43\) # (!\fu_mux3|muxout[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~44_combout\,
	datab => \fu_mux3|muxout[14]~18_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~43\,
	combout => \fu_alu|Add0~45_combout\,
	cout => \fu_alu|Add0~46\);

-- Location: LCCOMB_X23_Y20_N2
\fu_alu|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux17~1_combout\ = (\fu_alu|Mux17~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux17~0_combout\,
	datad => \fu_alu|Add0~45_combout\,
	combout => \fu_alu|Mux17~1_combout\);

-- Location: FF_X23_Y20_N3
\fu_aluout|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux17~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(14));

-- Location: LCCOMB_X23_Y20_N0
\fu_mux2|muxout[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[14]~14_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(14)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_aluout|q\(14),
	datac => \fu_mdr|q\(14),
	datad => \fu_controlunit|MemtoReg~q\,
	combout => \fu_mux2|muxout[14]~14_combout\);

-- Location: LCCOMB_X26_Y20_N12
\fu_mux3|muxout[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[15]~17_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(15)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datab => \fu_pc|q\(15),
	datac => \fu_registera|q\(15),
	combout => \fu_mux3|muxout[15]~17_combout\);

-- Location: LCCOMB_X24_Y20_N18
\fu_mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux16~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(15))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_mdr|q\(15),
	datac => \fu_registerb|q\(15),
	datad => \fu_controlunit|OrigBALU\(0),
	combout => \fu_mux4|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\fu_mux4|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux16~1_combout\ = (\fu_mux4|Mux16~0_combout\) # ((\fu_controlunit|OrigBALU\(1) & (\fu_controlunit|OrigBALU\(0) & \fu_mdr|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(13),
	datad => \fu_mux4|Mux16~0_combout\,
	combout => \fu_mux4|Mux16~1_combout\);

-- Location: LCCOMB_X26_Y20_N30
\fu_alu|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux16~0_combout\ = (\fu_mux3|muxout[15]~17_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux4|Mux16~1_combout\)))) # (!\fu_mux3|muxout[15]~17_combout\ & (((\fu_alu|Mux23~8_combout\ & \fu_mux4|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_mux3|muxout[15]~17_combout\,
	datac => \fu_alu|Mux23~8_combout\,
	datad => \fu_mux4|Mux16~1_combout\,
	combout => \fu_alu|Mux16~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\fu_alu|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~47_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux16~1_combout\,
	combout => \fu_alu|Add0~47_combout\);

-- Location: LCCOMB_X22_Y20_N16
\fu_alu|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~48_combout\ = ((\fu_mux3|muxout[15]~17_combout\ $ (\fu_alu|Add0~47_combout\ $ (!\fu_alu|Add0~46\)))) # (GND)
-- \fu_alu|Add0~49\ = CARRY((\fu_mux3|muxout[15]~17_combout\ & ((\fu_alu|Add0~47_combout\) # (!\fu_alu|Add0~46\))) # (!\fu_mux3|muxout[15]~17_combout\ & (\fu_alu|Add0~47_combout\ & !\fu_alu|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[15]~17_combout\,
	datab => \fu_alu|Add0~47_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~46\,
	combout => \fu_alu|Add0~48_combout\,
	cout => \fu_alu|Add0~49\);

-- Location: LCCOMB_X26_Y20_N6
\fu_alu|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux16~1_combout\ = (\fu_alu|Mux16~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux16~0_combout\,
	datad => \fu_alu|Add0~48_combout\,
	combout => \fu_alu|Mux16~1_combout\);

-- Location: FF_X26_Y20_N7
\fu_aluout|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux16~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(15));

-- Location: LCCOMB_X26_Y20_N26
\fu_mux2|muxout[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[15]~15_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(15)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_aluout|q\(15),
	datac => \fu_controlunit|MemtoReg~q\,
	datad => \fu_mdr|q\(15),
	combout => \fu_mux2|muxout[15]~15_combout\);

-- Location: LCCOMB_X24_Y21_N2
\fu_mux4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux15~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & ((\fu_mdr|q\(15)))) # (!\fu_controlunit|OrigBALU\(1) & (\fu_registerb|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_registerb|q\(16),
	datad => \fu_mdr|q\(15),
	combout => \fu_mux4|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y21_N16
\fu_mux4|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux15~1_combout\ = (\fu_mux4|Mux15~0_combout\) # ((\fu_controlunit|OrigBALU\(0) & (\fu_controlunit|OrigBALU\(1) & \fu_mdr|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(14),
	datad => \fu_mux4|Mux15~0_combout\,
	combout => \fu_mux4|Mux15~1_combout\);

-- Location: LCCOMB_X23_Y20_N4
\fu_pc|q[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[16]~14_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(16))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(16),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux15~1_combout\,
	combout => \fu_pc|q[16]~14_combout\);

-- Location: FF_X23_Y20_N5
\fu_pc|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[16]~14_combout\,
	asdata => \fu_mdr|q\(14),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(16));

-- Location: LCCOMB_X23_Y20_N30
\fu_mux3|muxout[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[16]~16_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(16)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(16),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_registera|q\(16),
	combout => \fu_mux3|muxout[16]~16_combout\);

-- Location: LCCOMB_X24_Y20_N8
\fu_alu|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux15~0_combout\ = (\fu_mux4|Mux15~1_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[16]~16_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux15~1_combout\ & (\fu_mux3|muxout[16]~16_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux15~1_combout\,
	datab => \fu_mux3|muxout[16]~16_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\fu_alu|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~50_combout\ = \fu_alucontrol|Mux3~0_combout\ $ (\fu_mux4|Mux15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_mux4|Mux15~1_combout\,
	combout => \fu_alu|Add0~50_combout\);

-- Location: LCCOMB_X22_Y20_N18
\fu_alu|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~51_combout\ = (\fu_mux3|muxout[16]~16_combout\ & ((\fu_alu|Add0~50_combout\ & (\fu_alu|Add0~49\ & VCC)) # (!\fu_alu|Add0~50_combout\ & (!\fu_alu|Add0~49\)))) # (!\fu_mux3|muxout[16]~16_combout\ & ((\fu_alu|Add0~50_combout\ & 
-- (!\fu_alu|Add0~49\)) # (!\fu_alu|Add0~50_combout\ & ((\fu_alu|Add0~49\) # (GND)))))
-- \fu_alu|Add0~52\ = CARRY((\fu_mux3|muxout[16]~16_combout\ & (!\fu_alu|Add0~50_combout\ & !\fu_alu|Add0~49\)) # (!\fu_mux3|muxout[16]~16_combout\ & ((!\fu_alu|Add0~49\) # (!\fu_alu|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[16]~16_combout\,
	datab => \fu_alu|Add0~50_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~49\,
	combout => \fu_alu|Add0~51_combout\,
	cout => \fu_alu|Add0~52\);

-- Location: LCCOMB_X23_Y20_N28
\fu_alu|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux15~1_combout\ = (\fu_alu|Mux15~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux15~0_combout\,
	datad => \fu_alu|Add0~51_combout\,
	combout => \fu_alu|Mux15~1_combout\);

-- Location: FF_X23_Y20_N29
\fu_aluout|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux15~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(16));

-- Location: LCCOMB_X23_Y20_N14
\fu_mux2|muxout[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[16]~16_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(16))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datab => \fu_mdr|q\(16),
	datac => \fu_aluout|q\(16),
	combout => \fu_mux2|muxout[16]~16_combout\);

-- Location: LCCOMB_X24_Y21_N0
\fu_mux4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux14~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(15))) # (!\fu_controlunit|OrigBALU\(1) & (((!\fu_controlunit|OrigBALU\(0) & \fu_registerb|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_mdr|q\(15),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_registerb|q\(17),
	combout => \fu_mux4|Mux14~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\fu_pc|q[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[17]~15_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(17))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(17),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux14~1_combout\,
	combout => \fu_pc|q[17]~15_combout\);

-- Location: FF_X21_Y20_N21
\fu_pc|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[17]~15_combout\,
	asdata => \fu_mdr|q\(15),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(17));

-- Location: LCCOMB_X21_Y20_N16
\fu_mux3|muxout[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[17]~15_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(17))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(17),
	datad => \fu_pc|q\(17),
	combout => \fu_mux3|muxout[17]~15_combout\);

-- Location: LCCOMB_X21_Y20_N10
\fu_alu|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux14~0_combout\ = (\fu_mux4|Mux14~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[17]~15_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux14~0_combout\ & (\fu_mux3|muxout[17]~15_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux14~0_combout\,
	datab => \fu_mux3|muxout[17]~15_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\fu_alu|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~53_combout\ = \fu_mux4|Mux14~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_mux4|Mux14~0_combout\,
	datad => \fu_alucontrol|Mux3~2_combout\,
	combout => \fu_alu|Add0~53_combout\);

-- Location: LCCOMB_X22_Y20_N20
\fu_alu|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~54_combout\ = ((\fu_mux3|muxout[17]~15_combout\ $ (\fu_alu|Add0~53_combout\ $ (!\fu_alu|Add0~52\)))) # (GND)
-- \fu_alu|Add0~55\ = CARRY((\fu_mux3|muxout[17]~15_combout\ & ((\fu_alu|Add0~53_combout\) # (!\fu_alu|Add0~52\))) # (!\fu_mux3|muxout[17]~15_combout\ & (\fu_alu|Add0~53_combout\ & !\fu_alu|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[17]~15_combout\,
	datab => \fu_alu|Add0~53_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~52\,
	combout => \fu_alu|Add0~54_combout\,
	cout => \fu_alu|Add0~55\);

-- Location: LCCOMB_X21_Y20_N2
\fu_alu|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux14~1_combout\ = (\fu_alu|Mux14~0_combout\) # ((\fu_alu|Add0~54_combout\ & \fu_alu|Mux23~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux14~0_combout\,
	datac => \fu_alu|Add0~54_combout\,
	datad => \fu_alu|Mux23~11_combout\,
	combout => \fu_alu|Mux14~1_combout\);

-- Location: FF_X21_Y20_N3
\fu_aluout|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux14~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(17));

-- Location: LCCOMB_X21_Y20_N14
\fu_mux2|muxout[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[17]~17_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(17))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(17),
	datad => \fu_aluout|q\(17),
	combout => \fu_mux2|muxout[17]~17_combout\);

-- Location: LCCOMB_X23_Y22_N16
\fu_pc|q[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[18]~16_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(18))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(18),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux13~1_combout\,
	combout => \fu_pc|q[18]~16_combout\);

-- Location: FF_X23_Y22_N17
\fu_pc|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[18]~16_combout\,
	asdata => \fu_mdr|q\(16),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(18));

-- Location: LCCOMB_X23_Y22_N12
\fu_mux3|muxout[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[18]~14_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(18))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(18),
	datad => \fu_pc|q\(18),
	combout => \fu_mux3|muxout[18]~14_combout\);

-- Location: LCCOMB_X24_Y21_N10
\fu_mux4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux13~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & (\fu_registerb|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_registerb|q\(18),
	datad => \fu_mdr|q\(15),
	combout => \fu_mux4|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\fu_alu|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux13~0_combout\ = (\fu_mux3|muxout[18]~14_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux13~0_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[18]~14_combout\ & (\fu_mux4|Mux13~0_combout\ & (\fu_alu|Mux23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[18]~14_combout\,
	datab => \fu_mux4|Mux13~0_combout\,
	datac => \fu_alu|Mux23~8_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y21_N14
\fu_alu|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~56_combout\ = \fu_mux4|Mux13~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux13~0_combout\,
	combout => \fu_alu|Add0~56_combout\);

-- Location: LCCOMB_X22_Y20_N22
\fu_alu|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~57_combout\ = (\fu_alu|Add0~56_combout\ & ((\fu_mux3|muxout[18]~14_combout\ & (\fu_alu|Add0~55\ & VCC)) # (!\fu_mux3|muxout[18]~14_combout\ & (!\fu_alu|Add0~55\)))) # (!\fu_alu|Add0~56_combout\ & ((\fu_mux3|muxout[18]~14_combout\ & 
-- (!\fu_alu|Add0~55\)) # (!\fu_mux3|muxout[18]~14_combout\ & ((\fu_alu|Add0~55\) # (GND)))))
-- \fu_alu|Add0~58\ = CARRY((\fu_alu|Add0~56_combout\ & (!\fu_mux3|muxout[18]~14_combout\ & !\fu_alu|Add0~55\)) # (!\fu_alu|Add0~56_combout\ & ((!\fu_alu|Add0~55\) # (!\fu_mux3|muxout[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~56_combout\,
	datab => \fu_mux3|muxout[18]~14_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~55\,
	combout => \fu_alu|Add0~57_combout\,
	cout => \fu_alu|Add0~58\);

-- Location: LCCOMB_X23_Y22_N20
\fu_alu|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux13~1_combout\ = (\fu_alu|Mux13~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux13~0_combout\,
	datad => \fu_alu|Add0~57_combout\,
	combout => \fu_alu|Mux13~1_combout\);

-- Location: FF_X23_Y22_N21
\fu_aluout|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux13~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(18));

-- Location: LCCOMB_X26_Y22_N6
\fu_mux2|muxout[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[18]~18_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(18))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(18),
	datab => \fu_controlunit|MemtoReg~q\,
	datad => \fu_aluout|q\(18),
	combout => \fu_mux2|muxout[18]~18_combout\);

-- Location: LCCOMB_X21_Y20_N6
\fu_pc|q[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[19]~17_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(19))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(19),
	datad => \fu_alu|Mux12~1_combout\,
	combout => \fu_pc|q[19]~17_combout\);

-- Location: FF_X21_Y20_N7
\fu_pc|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[19]~17_combout\,
	asdata => \fu_mdr|q\(17),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(19));

-- Location: LCCOMB_X21_Y20_N22
\fu_mux3|muxout[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[19]~13_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(19))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registera|q\(19),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_pc|q\(19),
	combout => \fu_mux3|muxout[19]~13_combout\);

-- Location: LCCOMB_X23_Y21_N0
\fu_mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux12~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (\fu_registerb|q\(19) & ((!\fu_controlunit|OrigBALU\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerb|q\(19),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|OrigBALU\(0),
	combout => \fu_mux4|Mux12~0_combout\);

-- Location: LCCOMB_X21_Y20_N4
\fu_alu|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux12~0_combout\ = (\fu_mux3|muxout[19]~13_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux12~0_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[19]~13_combout\ & (\fu_mux4|Mux12~0_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[19]~13_combout\,
	datab => \fu_mux4|Mux12~0_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y21_N26
\fu_alu|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~59_combout\ = \fu_mux4|Mux12~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux12~0_combout\,
	combout => \fu_alu|Add0~59_combout\);

-- Location: LCCOMB_X22_Y20_N24
\fu_alu|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~60_combout\ = ((\fu_alu|Add0~59_combout\ $ (\fu_mux3|muxout[19]~13_combout\ $ (!\fu_alu|Add0~58\)))) # (GND)
-- \fu_alu|Add0~61\ = CARRY((\fu_alu|Add0~59_combout\ & ((\fu_mux3|muxout[19]~13_combout\) # (!\fu_alu|Add0~58\))) # (!\fu_alu|Add0~59_combout\ & (\fu_mux3|muxout[19]~13_combout\ & !\fu_alu|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~59_combout\,
	datab => \fu_mux3|muxout[19]~13_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~58\,
	combout => \fu_alu|Add0~60_combout\,
	cout => \fu_alu|Add0~61\);

-- Location: LCCOMB_X21_Y20_N24
\fu_alu|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux12~1_combout\ = (\fu_alu|Mux12~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux12~0_combout\,
	datad => \fu_alu|Add0~60_combout\,
	combout => \fu_alu|Mux12~1_combout\);

-- Location: FF_X21_Y20_N25
\fu_aluout|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux12~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(19));

-- Location: LCCOMB_X27_Y20_N20
\fu_mux2|muxout[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[19]~19_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(19))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_mdr|q\(19),
	datac => \fu_aluout|q\(19),
	datad => \fu_controlunit|MemtoReg~q\,
	combout => \fu_mux2|muxout[19]~19_combout\);

-- Location: LCCOMB_X23_Y23_N24
\fu_mux3|muxout[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[20]~12_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(20)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(20),
	datac => \fu_registera|q\(20),
	datad => \fu_controlunit|OrigAALU~q\,
	combout => \fu_mux3|muxout[20]~12_combout\);

-- Location: LCCOMB_X23_Y23_N2
\fu_mux4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux11~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(15))) # (!\fu_controlunit|OrigBALU\(1) & (((!\fu_controlunit|OrigBALU\(0) & \fu_registerb|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(15),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_registerb|q\(20),
	combout => \fu_mux4|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y23_N16
\fu_alu|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux11~0_combout\ = (\fu_mux3|muxout[20]~12_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux11~0_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[20]~12_combout\ & (\fu_mux4|Mux11~0_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[20]~12_combout\,
	datab => \fu_mux4|Mux11~0_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y23_N14
\fu_alu|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~62_combout\ = \fu_mux4|Mux11~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~2_combout\,
	datac => \fu_alucontrol|Mux3~1_combout\,
	datad => \fu_mux4|Mux11~0_combout\,
	combout => \fu_alu|Add0~62_combout\);

-- Location: LCCOMB_X22_Y20_N26
\fu_alu|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~63_combout\ = (\fu_mux3|muxout[20]~12_combout\ & ((\fu_alu|Add0~62_combout\ & (\fu_alu|Add0~61\ & VCC)) # (!\fu_alu|Add0~62_combout\ & (!\fu_alu|Add0~61\)))) # (!\fu_mux3|muxout[20]~12_combout\ & ((\fu_alu|Add0~62_combout\ & 
-- (!\fu_alu|Add0~61\)) # (!\fu_alu|Add0~62_combout\ & ((\fu_alu|Add0~61\) # (GND)))))
-- \fu_alu|Add0~64\ = CARRY((\fu_mux3|muxout[20]~12_combout\ & (!\fu_alu|Add0~62_combout\ & !\fu_alu|Add0~61\)) # (!\fu_mux3|muxout[20]~12_combout\ & ((!\fu_alu|Add0~61\) # (!\fu_alu|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[20]~12_combout\,
	datab => \fu_alu|Add0~62_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~61\,
	combout => \fu_alu|Add0~63_combout\,
	cout => \fu_alu|Add0~64\);

-- Location: LCCOMB_X23_Y23_N18
\fu_alu|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux11~1_combout\ = (\fu_alu|Mux11~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux11~0_combout\,
	datac => \fu_alu|Mux23~11_combout\,
	datad => \fu_alu|Add0~63_combout\,
	combout => \fu_alu|Mux11~1_combout\);

-- Location: FF_X23_Y23_N19
\fu_aluout|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux11~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(20));

-- Location: LCCOMB_X23_Y23_N28
\fu_mux2|muxout[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[20]~20_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(20))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(20),
	datad => \fu_aluout|q\(20),
	combout => \fu_mux2|muxout[20]~20_combout\);

-- Location: LCCOMB_X21_Y20_N0
\fu_pc|q[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[21]~19_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(21))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(21),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux10~1_combout\,
	combout => \fu_pc|q[21]~19_combout\);

-- Location: FF_X21_Y20_N1
\fu_pc|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[21]~19_combout\,
	asdata => \fu_mdr|q\(19),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(21));

-- Location: LCCOMB_X21_Y20_N12
\fu_mux3|muxout[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[21]~11_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(21))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(21),
	datad => \fu_pc|q\(21),
	combout => \fu_mux3|muxout[21]~11_combout\);

-- Location: LCCOMB_X24_Y21_N28
\fu_mux4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux10~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & (\fu_registerb|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_registerb|q\(21),
	datad => \fu_mdr|q\(15),
	combout => \fu_mux4|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\fu_alu|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux10~0_combout\ = (\fu_mux3|muxout[21]~11_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux10~0_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[21]~11_combout\ & (\fu_mux4|Mux10~0_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[21]~11_combout\,
	datab => \fu_mux4|Mux10~0_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\fu_alu|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~65_combout\ = \fu_mux4|Mux10~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~1_combout\,
	datab => \fu_controlunit|Equal1~0_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux10~0_combout\,
	combout => \fu_alu|Add0~65_combout\);

-- Location: LCCOMB_X22_Y20_N28
\fu_alu|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~66_combout\ = ((\fu_mux3|muxout[21]~11_combout\ $ (\fu_alu|Add0~65_combout\ $ (!\fu_alu|Add0~64\)))) # (GND)
-- \fu_alu|Add0~67\ = CARRY((\fu_mux3|muxout[21]~11_combout\ & ((\fu_alu|Add0~65_combout\) # (!\fu_alu|Add0~64\))) # (!\fu_mux3|muxout[21]~11_combout\ & (\fu_alu|Add0~65_combout\ & !\fu_alu|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[21]~11_combout\,
	datab => \fu_alu|Add0~65_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~64\,
	combout => \fu_alu|Add0~66_combout\,
	cout => \fu_alu|Add0~67\);

-- Location: LCCOMB_X21_Y20_N18
\fu_alu|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux10~1_combout\ = (\fu_alu|Mux10~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux10~0_combout\,
	datad => \fu_alu|Add0~66_combout\,
	combout => \fu_alu|Mux10~1_combout\);

-- Location: FF_X21_Y20_N19
\fu_aluout|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux10~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(21));

-- Location: LCCOMB_X21_Y20_N28
\fu_mux2|muxout[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[21]~21_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(21)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(21),
	datac => \fu_controlunit|MemtoReg~q\,
	datad => \fu_mdr|q\(21),
	combout => \fu_mux2|muxout[21]~21_combout\);

-- Location: M9K_X25_Y23_N0
\fu_memory|altsyncram_component|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FE42",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:fu_memory|altsyncram:altsyncram_component|altsyncram_dpj1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_writeenable~combout\,
	portare => \fu_controlunit|ReadMem~q\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fu_memory|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y23_N10
\fu_mdr|q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[25]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_memory|altsyncram_component|auto_generated|q_a\(25),
	combout => \fu_mdr|q[25]~feeder_combout\);

-- Location: FF_X24_Y23_N11
\fu_mdr|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[25]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(25));

-- Location: LCCOMB_X24_Y19_N20
\fu_mux3|muxout[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[22]~10_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(22)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(22),
	datac => \fu_registera|q\(22),
	datad => \fu_controlunit|OrigAALU~q\,
	combout => \fu_mux3|muxout[22]~10_combout\);

-- Location: LCCOMB_X24_Y21_N30
\fu_mux4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux9~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & (\fu_registerb|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_registerb|q\(22),
	datad => \fu_mdr|q\(15),
	combout => \fu_mux4|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y19_N26
\fu_alu|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux9~0_combout\ = (\fu_mux3|muxout[22]~10_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux9~0_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[22]~10_combout\ & (\fu_mux4|Mux9~0_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[22]~10_combout\,
	datab => \fu_mux4|Mux9~0_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y20_N8
\fu_alu|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~68_combout\ = \fu_mux4|Mux9~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_mux4|Mux9~0_combout\,
	datad => \fu_alucontrol|Mux3~2_combout\,
	combout => \fu_alu|Add0~68_combout\);

-- Location: LCCOMB_X22_Y20_N30
\fu_alu|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~69_combout\ = (\fu_alu|Add0~68_combout\ & ((\fu_mux3|muxout[22]~10_combout\ & (\fu_alu|Add0~67\ & VCC)) # (!\fu_mux3|muxout[22]~10_combout\ & (!\fu_alu|Add0~67\)))) # (!\fu_alu|Add0~68_combout\ & ((\fu_mux3|muxout[22]~10_combout\ & 
-- (!\fu_alu|Add0~67\)) # (!\fu_mux3|muxout[22]~10_combout\ & ((\fu_alu|Add0~67\) # (GND)))))
-- \fu_alu|Add0~70\ = CARRY((\fu_alu|Add0~68_combout\ & (!\fu_mux3|muxout[22]~10_combout\ & !\fu_alu|Add0~67\)) # (!\fu_alu|Add0~68_combout\ & ((!\fu_alu|Add0~67\) # (!\fu_mux3|muxout[22]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~68_combout\,
	datab => \fu_mux3|muxout[22]~10_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~67\,
	combout => \fu_alu|Add0~69_combout\,
	cout => \fu_alu|Add0~70\);

-- Location: LCCOMB_X23_Y19_N20
\fu_alu|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux9~1_combout\ = (\fu_alu|Mux9~0_combout\) # ((\fu_alu|Add0~69_combout\ & \fu_alu|Mux23~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux9~0_combout\,
	datac => \fu_alu|Add0~69_combout\,
	datad => \fu_alu|Mux23~11_combout\,
	combout => \fu_alu|Mux9~1_combout\);

-- Location: FF_X23_Y19_N21
\fu_aluout|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux9~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(22));

-- Location: LCCOMB_X23_Y19_N8
\fu_mux2|muxout[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[22]~22_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(22))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(22),
	datad => \fu_aluout|q\(22),
	combout => \fu_mux2|muxout[22]~22_combout\);

-- Location: LCCOMB_X24_Y19_N6
\fu_mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux8~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (\fu_registerb|q\(23) & ((!\fu_controlunit|OrigBALU\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_registerb|q\(23),
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|OrigBALU\(0),
	combout => \fu_mux4|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\fu_pc|q[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[23]~21_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(23))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(23),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux8~1_combout\,
	combout => \fu_pc|q[23]~21_combout\);

-- Location: FF_X22_Y19_N23
\fu_pc|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[23]~21_combout\,
	asdata => \fu_mdr|q\(21),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(23));

-- Location: LCCOMB_X24_Y19_N12
\fu_mux3|muxout[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[23]~9_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(23)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(23),
	datad => \fu_registera|q\(23),
	combout => \fu_mux3|muxout[23]~9_combout\);

-- Location: LCCOMB_X23_Y19_N4
\fu_alu|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux8~0_combout\ = (\fu_mux4|Mux8~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[23]~9_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux8~0_combout\ & (\fu_mux3|muxout[23]~9_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux8~0_combout\,
	datab => \fu_mux3|muxout[23]~9_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y19_N2
\fu_alu|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~71_combout\ = \fu_mux4|Mux8~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux8~0_combout\,
	combout => \fu_alu|Add0~71_combout\);

-- Location: LCCOMB_X22_Y19_N0
\fu_alu|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~72_combout\ = ((\fu_alu|Add0~71_combout\ $ (\fu_mux3|muxout[23]~9_combout\ $ (!\fu_alu|Add0~70\)))) # (GND)
-- \fu_alu|Add0~73\ = CARRY((\fu_alu|Add0~71_combout\ & ((\fu_mux3|muxout[23]~9_combout\) # (!\fu_alu|Add0~70\))) # (!\fu_alu|Add0~71_combout\ & (\fu_mux3|muxout[23]~9_combout\ & !\fu_alu|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~71_combout\,
	datab => \fu_mux3|muxout[23]~9_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~70\,
	combout => \fu_alu|Add0~72_combout\,
	cout => \fu_alu|Add0~73\);

-- Location: LCCOMB_X22_Y19_N20
\fu_alu|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux8~1_combout\ = (\fu_alu|Mux8~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux8~0_combout\,
	datab => \fu_alu|Mux23~11_combout\,
	datad => \fu_alu|Add0~72_combout\,
	combout => \fu_alu|Mux8~1_combout\);

-- Location: FF_X22_Y19_N21
\fu_aluout|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux8~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(23));

-- Location: LCCOMB_X27_Y19_N26
\fu_mux2|muxout[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[23]~23_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(23)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(23),
	datad => \fu_mdr|q\(23),
	combout => \fu_mux2|muxout[23]~23_combout\);

-- Location: FF_X24_Y20_N5
\fu_mdr|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(15),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(15));

-- Location: LCCOMB_X24_Y19_N2
\fu_mux4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux7~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(15))) # (!\fu_controlunit|OrigBALU\(1) & (((!\fu_controlunit|OrigBALU\(0) & \fu_registerb|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(15),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_registerb|q\(24),
	combout => \fu_mux4|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\fu_pc|q[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[24]~22_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(24))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_aluout|q\(24),
	datad => \fu_alu|Mux7~1_combout\,
	combout => \fu_pc|q[24]~22_combout\);

-- Location: FF_X23_Y19_N17
\fu_pc|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[24]~22_combout\,
	asdata => \fu_mdr|q\(22),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(24));

-- Location: LCCOMB_X24_Y19_N4
\fu_mux3|muxout[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[24]~8_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(24)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(24),
	datad => \fu_registera|q\(24),
	combout => \fu_mux3|muxout[24]~8_combout\);

-- Location: LCCOMB_X23_Y19_N12
\fu_alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux7~0_combout\ = (\fu_mux4|Mux7~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux3|muxout[24]~8_combout\)))) # (!\fu_mux4|Mux7~0_combout\ & (\fu_alu|Mux23~8_combout\ & ((\fu_mux3|muxout[24]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux7~0_combout\,
	datab => \fu_alu|Mux23~8_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_mux3|muxout[24]~8_combout\,
	combout => \fu_alu|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y19_N18
\fu_alu|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~74_combout\ = \fu_mux4|Mux7~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux7~0_combout\,
	combout => \fu_alu|Add0~74_combout\);

-- Location: LCCOMB_X22_Y19_N2
\fu_alu|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~75_combout\ = (\fu_mux3|muxout[24]~8_combout\ & ((\fu_alu|Add0~74_combout\ & (\fu_alu|Add0~73\ & VCC)) # (!\fu_alu|Add0~74_combout\ & (!\fu_alu|Add0~73\)))) # (!\fu_mux3|muxout[24]~8_combout\ & ((\fu_alu|Add0~74_combout\ & 
-- (!\fu_alu|Add0~73\)) # (!\fu_alu|Add0~74_combout\ & ((\fu_alu|Add0~73\) # (GND)))))
-- \fu_alu|Add0~76\ = CARRY((\fu_mux3|muxout[24]~8_combout\ & (!\fu_alu|Add0~74_combout\ & !\fu_alu|Add0~73\)) # (!\fu_mux3|muxout[24]~8_combout\ & ((!\fu_alu|Add0~73\) # (!\fu_alu|Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[24]~8_combout\,
	datab => \fu_alu|Add0~74_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~73\,
	combout => \fu_alu|Add0~75_combout\,
	cout => \fu_alu|Add0~76\);

-- Location: LCCOMB_X22_Y19_N30
\fu_alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux7~1_combout\ = (\fu_alu|Mux7~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux7~0_combout\,
	datad => \fu_alu|Add0~75_combout\,
	combout => \fu_alu|Mux7~1_combout\);

-- Location: FF_X22_Y19_N31
\fu_aluout|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux7~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(24));

-- Location: LCCOMB_X22_Y22_N28
\fu_mux2|muxout[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[24]~24_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(24))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(24),
	datad => \fu_aluout|q\(24),
	combout => \fu_mux2|muxout[24]~24_combout\);

-- Location: FF_X27_Y22_N13
\fu_mdr|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(24),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(24));

-- Location: LCCOMB_X22_Y19_N24
\fu_pc|q[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[25]~23_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(25))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(25),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux6~1_combout\,
	combout => \fu_pc|q[25]~23_combout\);

-- Location: FF_X22_Y19_N25
\fu_pc|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[25]~23_combout\,
	asdata => \fu_mdr|q\(23),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(25));

-- Location: LCCOMB_X22_Y22_N18
\fu_mux3|muxout[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[25]~7_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(25))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(25),
	datad => \fu_pc|q\(25),
	combout => \fu_mux3|muxout[25]~7_combout\);

-- Location: LCCOMB_X24_Y19_N18
\fu_mux4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux6~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & ((\fu_registerb|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(15),
	datad => \fu_registerb|q\(25),
	combout => \fu_mux4|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\fu_alu|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~77_combout\ = \fu_mux4|Mux6~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux6~0_combout\,
	combout => \fu_alu|Add0~77_combout\);

-- Location: LCCOMB_X22_Y19_N4
\fu_alu|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~78_combout\ = ((\fu_mux3|muxout[25]~7_combout\ $ (\fu_alu|Add0~77_combout\ $ (!\fu_alu|Add0~76\)))) # (GND)
-- \fu_alu|Add0~79\ = CARRY((\fu_mux3|muxout[25]~7_combout\ & ((\fu_alu|Add0~77_combout\) # (!\fu_alu|Add0~76\))) # (!\fu_mux3|muxout[25]~7_combout\ & (\fu_alu|Add0~77_combout\ & !\fu_alu|Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[25]~7_combout\,
	datab => \fu_alu|Add0~77_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~76\,
	combout => \fu_alu|Add0~78_combout\,
	cout => \fu_alu|Add0~79\);

-- Location: LCCOMB_X23_Y19_N28
\fu_alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux6~0_combout\ = (\fu_mux3|muxout[25]~7_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux6~0_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[25]~7_combout\ & (\fu_mux4|Mux6~0_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[25]~7_combout\,
	datab => \fu_mux4|Mux6~0_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\fu_alu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux6~1_combout\ = (\fu_alu|Mux6~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Add0~78_combout\,
	datad => \fu_alu|Mux6~0_combout\,
	combout => \fu_alu|Mux6~1_combout\);

-- Location: FF_X22_Y19_N29
\fu_aluout|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux6~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(25));

-- Location: LCCOMB_X27_Y19_N24
\fu_mux2|muxout[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[25]~25_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(25)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(25),
	datad => \fu_mdr|q\(25),
	combout => \fu_mux2|muxout[25]~25_combout\);

-- Location: FF_X27_Y19_N11
\fu_mdr|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(26),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(26));

-- Location: LCCOMB_X24_Y21_N20
\fu_mux4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux5~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & (\fu_registerb|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_registerb|q\(26),
	datad => \fu_mdr|q\(15),
	combout => \fu_mux4|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y19_N26
\fu_pc|q[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[26]~24_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(26))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(26),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux5~1_combout\,
	combout => \fu_pc|q[26]~24_combout\);

-- Location: FF_X22_Y19_N27
\fu_pc|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[26]~24_combout\,
	asdata => \fu_mdr|q\(24),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(26));

-- Location: LCCOMB_X23_Y19_N24
\fu_mux3|muxout[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[26]~6_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(26)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(26),
	datad => \fu_registera|q\(26),
	combout => \fu_mux3|muxout[26]~6_combout\);

-- Location: LCCOMB_X23_Y19_N0
\fu_alu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux5~0_combout\ = (\fu_mux4|Mux5~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux3|muxout[26]~6_combout\)))) # (!\fu_mux4|Mux5~0_combout\ & (((\fu_mux3|muxout[26]~6_combout\ & \fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_mux4|Mux5~0_combout\,
	datac => \fu_mux3|muxout[26]~6_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\fu_alu|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~80_combout\ = \fu_mux4|Mux5~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~2_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_mux4|Mux5~0_combout\,
	datad => \fu_controlunit|Equal1~0_combout\,
	combout => \fu_alu|Add0~80_combout\);

-- Location: LCCOMB_X22_Y19_N6
\fu_alu|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~81_combout\ = (\fu_alu|Add0~80_combout\ & ((\fu_mux3|muxout[26]~6_combout\ & (\fu_alu|Add0~79\ & VCC)) # (!\fu_mux3|muxout[26]~6_combout\ & (!\fu_alu|Add0~79\)))) # (!\fu_alu|Add0~80_combout\ & ((\fu_mux3|muxout[26]~6_combout\ & 
-- (!\fu_alu|Add0~79\)) # (!\fu_mux3|muxout[26]~6_combout\ & ((\fu_alu|Add0~79\) # (GND)))))
-- \fu_alu|Add0~82\ = CARRY((\fu_alu|Add0~80_combout\ & (!\fu_mux3|muxout[26]~6_combout\ & !\fu_alu|Add0~79\)) # (!\fu_alu|Add0~80_combout\ & ((!\fu_alu|Add0~79\) # (!\fu_mux3|muxout[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~80_combout\,
	datab => \fu_mux3|muxout[26]~6_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~79\,
	combout => \fu_alu|Add0~81_combout\,
	cout => \fu_alu|Add0~82\);

-- Location: LCCOMB_X22_Y19_N18
\fu_alu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux5~1_combout\ = (\fu_alu|Mux5~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux5~0_combout\,
	datad => \fu_alu|Add0~81_combout\,
	combout => \fu_alu|Mux5~1_combout\);

-- Location: FF_X22_Y19_N19
\fu_aluout|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux5~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(26));

-- Location: LCCOMB_X27_Y19_N10
\fu_mux2|muxout[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[26]~26_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(26))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(26),
	datad => \fu_aluout|q\(26),
	combout => \fu_mux2|muxout[26]~26_combout\);

-- Location: M9K_X25_Y19_N0
\fu_memory|altsyncram_component|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003E00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:fu_memory|altsyncram:altsyncram_component|altsyncram_dpj1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_writeenable~combout\,
	portare => \fu_controlunit|ReadMem~q\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fu_memory|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N6
\fu_mdr|q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[27]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_memory|altsyncram_component|auto_generated|q_a\(27),
	combout => \fu_mdr|q[27]~feeder_combout\);

-- Location: FF_X23_Y23_N7
\fu_mdr|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[27]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(27));

-- Location: LCCOMB_X23_Y23_N30
\fu_pc|q[27]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[27]~28_combout\ = (\fu_controlunit|OpALU\(0) & ((\fu_aluout|q\(27)))) # (!\fu_controlunit|OpALU\(0) & (\fu_alu|Mux23~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|OpALU\(0),
	datac => \fu_alu|Mux23~11_combout\,
	datad => \fu_aluout|q\(27),
	combout => \fu_pc|q[27]~28_combout\);

-- Location: LCCOMB_X24_Y20_N4
\fu_mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux4~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & ((\fu_registerb|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(15),
	datad => \fu_registerb|q\(27),
	combout => \fu_mux4|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y23_N20
\fu_alu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux4~0_combout\ = (\fu_mux4|Mux4~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[27]~5_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux4~0_combout\ & (\fu_mux3|muxout[27]~5_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux4~0_combout\,
	datab => \fu_mux3|muxout[27]~5_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y23_N12
\fu_pc|q[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[27]~25_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_pc|q[27]~28_combout\)) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux4~0_combout\) # ((\fu_pc|q[27]~28_combout\ & \fu_alu|Add0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q[27]~28_combout\,
	datab => \fu_controlunit|OpALU\(0),
	datac => \fu_alu|Add0~84_combout\,
	datad => \fu_alu|Mux4~0_combout\,
	combout => \fu_pc|q[27]~25_combout\);

-- Location: LCCOMB_X23_Y23_N4
\fu_pc|q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[27]~feeder_combout\ = \fu_pc|q[27]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_pc|q[27]~25_combout\,
	combout => \fu_pc|q[27]~feeder_combout\);

-- Location: FF_X23_Y23_N5
\fu_pc|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[27]~feeder_combout\,
	asdata => \fu_mdr|q\(25),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(27));

-- Location: LCCOMB_X23_Y23_N22
\fu_mux3|muxout[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[27]~5_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(27)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(27),
	datad => \fu_registera|q\(27),
	combout => \fu_mux3|muxout[27]~5_combout\);

-- Location: LCCOMB_X21_Y19_N20
\fu_alu|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~83_combout\ = \fu_mux4|Mux4~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~1_combout\,
	datab => \fu_controlunit|Equal1~0_combout\,
	datac => \fu_mux4|Mux4~0_combout\,
	datad => \fu_alucontrol|Mux3~2_combout\,
	combout => \fu_alu|Add0~83_combout\);

-- Location: LCCOMB_X22_Y19_N8
\fu_alu|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~84_combout\ = ((\fu_mux3|muxout[27]~5_combout\ $ (\fu_alu|Add0~83_combout\ $ (!\fu_alu|Add0~82\)))) # (GND)
-- \fu_alu|Add0~85\ = CARRY((\fu_mux3|muxout[27]~5_combout\ & ((\fu_alu|Add0~83_combout\) # (!\fu_alu|Add0~82\))) # (!\fu_mux3|muxout[27]~5_combout\ & (\fu_alu|Add0~83_combout\ & !\fu_alu|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[27]~5_combout\,
	datab => \fu_alu|Add0~83_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~82\,
	combout => \fu_alu|Add0~84_combout\,
	cout => \fu_alu|Add0~85\);

-- Location: LCCOMB_X23_Y23_N0
\fu_alu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux4~1_combout\ = (\fu_alu|Mux4~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Add0~84_combout\,
	datad => \fu_alu|Mux4~0_combout\,
	combout => \fu_alu|Mux4~1_combout\);

-- Location: FF_X23_Y23_N1
\fu_aluout|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux4~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(27));

-- Location: LCCOMB_X23_Y23_N8
\fu_mux2|muxout[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[27]~27_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(27))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(27),
	datac => \fu_controlunit|MemtoReg~q\,
	datad => \fu_aluout|q\(27),
	combout => \fu_mux2|muxout[27]~27_combout\);

-- Location: FF_X27_Y19_N9
\fu_mdr|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(28),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(28));

-- Location: LCCOMB_X24_Y19_N0
\fu_mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux3~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(15))) # (!\fu_controlunit|OrigBALU\(1) & (((\fu_registerb|q\(28) & !\fu_controlunit|OrigBALU\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(15),
	datab => \fu_registerb|q\(28),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_controlunit|OrigBALU\(0),
	combout => \fu_mux4|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\fu_mux5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux3~0_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(28))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux23~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datac => \fu_aluout|q\(28),
	datad => \fu_alu|Mux23~11_combout\,
	combout => \fu_mux5|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\fu_alu|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~86_combout\ = \fu_mux4|Mux3~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux3~0_combout\,
	combout => \fu_alu|Add0~86_combout\);

-- Location: LCCOMB_X22_Y19_N10
\fu_alu|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~87_combout\ = (\fu_alu|Add0~86_combout\ & ((\fu_mux3|muxout[28]~4_combout\ & (\fu_alu|Add0~85\ & VCC)) # (!\fu_mux3|muxout[28]~4_combout\ & (!\fu_alu|Add0~85\)))) # (!\fu_alu|Add0~86_combout\ & ((\fu_mux3|muxout[28]~4_combout\ & 
-- (!\fu_alu|Add0~85\)) # (!\fu_mux3|muxout[28]~4_combout\ & ((\fu_alu|Add0~85\) # (GND)))))
-- \fu_alu|Add0~88\ = CARRY((\fu_alu|Add0~86_combout\ & (!\fu_mux3|muxout[28]~4_combout\ & !\fu_alu|Add0~85\)) # (!\fu_alu|Add0~86_combout\ & ((!\fu_alu|Add0~85\) # (!\fu_mux3|muxout[28]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Add0~86_combout\,
	datab => \fu_mux3|muxout[28]~4_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~85\,
	combout => \fu_alu|Add0~87_combout\,
	cout => \fu_alu|Add0~88\);

-- Location: LCCOMB_X26_Y19_N12
\fu_mux5|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux3~1_combout\ = (\fu_controlunit|OpALU\(0) & (((\fu_mux5|Mux3~0_combout\)))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux3~0_combout\) # ((\fu_mux5|Mux3~0_combout\ & \fu_alu|Add0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_alu|Mux3~0_combout\,
	datac => \fu_mux5|Mux3~0_combout\,
	datad => \fu_alu|Add0~87_combout\,
	combout => \fu_mux5|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y22_N22
\fu_pc|q[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[29]~27_combout\ = (\fu_controlunit|OpALU\(0)) # (!\fu_controlunit|OrigPC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datad => \fu_controlunit|OrigPC\(1),
	combout => \fu_pc|q[29]~27_combout\);

-- Location: FF_X26_Y19_N13
\fu_pc|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux5|Mux3~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_controlunit|OrigPC\(1),
	ena => \fu_pc|q[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(28));

-- Location: LCCOMB_X26_Y19_N4
\fu_mux3|muxout[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[28]~4_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(28))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registera|q\(28),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_pc|q\(28),
	combout => \fu_mux3|muxout[28]~4_combout\);

-- Location: LCCOMB_X26_Y19_N18
\fu_alu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux3~0_combout\ = (\fu_mux4|Mux3~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux3|muxout[28]~4_combout\)))) # (!\fu_mux4|Mux3~0_combout\ & (((\fu_mux3|muxout[28]~4_combout\ & \fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_mux4|Mux3~0_combout\,
	datac => \fu_mux3|muxout[28]~4_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y19_N22
\fu_alu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux3~1_combout\ = (\fu_alu|Mux3~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux3~0_combout\,
	datad => \fu_alu|Add0~87_combout\,
	combout => \fu_alu|Mux3~1_combout\);

-- Location: FF_X26_Y19_N23
\fu_aluout|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux3~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(28));

-- Location: LCCOMB_X27_Y19_N8
\fu_mux2|muxout[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[28]~28_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(28))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(28),
	datad => \fu_aluout|q\(28),
	combout => \fu_mux2|muxout[28]~28_combout\);

-- Location: FF_X27_Y19_N19
\fu_mdr|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(29),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(29));

-- Location: LCCOMB_X26_Y19_N26
\fu_mux5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux2~0_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(29))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux23~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datac => \fu_aluout|q\(29),
	datad => \fu_alu|Mux23~11_combout\,
	combout => \fu_mux5|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\fu_mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux2~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & ((\fu_registerb|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_controlunit|OrigBALU\(0),
	datac => \fu_mdr|q\(15),
	datad => \fu_registerb|q\(29),
	combout => \fu_mux4|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y19_N28
\fu_alu|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~89_combout\ = \fu_mux4|Mux2~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~2_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_mux4|Mux2~0_combout\,
	datad => \fu_controlunit|Equal1~0_combout\,
	combout => \fu_alu|Add0~89_combout\);

-- Location: LCCOMB_X22_Y19_N12
\fu_alu|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~90_combout\ = ((\fu_mux3|muxout[29]~3_combout\ $ (\fu_alu|Add0~89_combout\ $ (!\fu_alu|Add0~88\)))) # (GND)
-- \fu_alu|Add0~91\ = CARRY((\fu_mux3|muxout[29]~3_combout\ & ((\fu_alu|Add0~89_combout\) # (!\fu_alu|Add0~88\))) # (!\fu_mux3|muxout[29]~3_combout\ & (\fu_alu|Add0~89_combout\ & !\fu_alu|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[29]~3_combout\,
	datab => \fu_alu|Add0~89_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~88\,
	combout => \fu_alu|Add0~90_combout\,
	cout => \fu_alu|Add0~91\);

-- Location: LCCOMB_X26_Y19_N2
\fu_mux5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux2~1_combout\ = (\fu_controlunit|OpALU\(0) & (((\fu_mux5|Mux2~0_combout\)))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux2~0_combout\) # ((\fu_mux5|Mux2~0_combout\ & \fu_alu|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_alu|Mux2~0_combout\,
	datac => \fu_mux5|Mux2~0_combout\,
	datad => \fu_alu|Add0~90_combout\,
	combout => \fu_mux5|Mux2~1_combout\);

-- Location: FF_X26_Y19_N3
\fu_pc|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux5|Mux2~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_controlunit|OrigPC\(1),
	ena => \fu_pc|q[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(29));

-- Location: LCCOMB_X26_Y19_N10
\fu_mux3|muxout[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[29]~3_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(29)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(29),
	datac => \fu_controlunit|OrigAALU~q\,
	datad => \fu_registera|q\(29),
	combout => \fu_mux3|muxout[29]~3_combout\);

-- Location: LCCOMB_X26_Y19_N28
\fu_alu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux2~0_combout\ = (\fu_mux3|muxout[29]~3_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux4|Mux2~0_combout\)))) # (!\fu_mux3|muxout[29]~3_combout\ & (\fu_alu|Mux23~8_combout\ & ((\fu_mux4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[29]~3_combout\,
	datab => \fu_alu|Mux23~8_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_mux4|Mux2~0_combout\,
	combout => \fu_alu|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\fu_alu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux2~1_combout\ = (\fu_alu|Mux2~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux2~0_combout\,
	datad => \fu_alu|Add0~90_combout\,
	combout => \fu_alu|Mux2~1_combout\);

-- Location: FF_X26_Y19_N25
\fu_aluout|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux2~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(29));

-- Location: LCCOMB_X27_Y19_N18
\fu_mux2|muxout[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[29]~29_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(29))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(29),
	datad => \fu_aluout|q\(29),
	combout => \fu_mux2|muxout[29]~29_combout\);

-- Location: FF_X27_Y19_N29
\fu_mdr|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(30),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(30));

-- Location: LCCOMB_X24_Y21_N18
\fu_mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux1~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (((\fu_mdr|q\(15))))) # (!\fu_controlunit|OrigBALU\(1) & (!\fu_controlunit|OrigBALU\(0) & (\fu_registerb|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_registerb|q\(30),
	datad => \fu_mdr|q\(15),
	combout => \fu_mux4|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\fu_mux5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux1~0_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(30))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux23~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datac => \fu_aluout|q\(30),
	datad => \fu_alu|Mux23~11_combout\,
	combout => \fu_mux5|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\fu_alu|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~92_combout\ = \fu_mux4|Mux1~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux1~0_combout\,
	combout => \fu_alu|Add0~92_combout\);

-- Location: LCCOMB_X22_Y19_N14
\fu_alu|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~93_combout\ = (\fu_mux3|muxout[30]~2_combout\ & ((\fu_alu|Add0~92_combout\ & (\fu_alu|Add0~91\ & VCC)) # (!\fu_alu|Add0~92_combout\ & (!\fu_alu|Add0~91\)))) # (!\fu_mux3|muxout[30]~2_combout\ & ((\fu_alu|Add0~92_combout\ & 
-- (!\fu_alu|Add0~91\)) # (!\fu_alu|Add0~92_combout\ & ((\fu_alu|Add0~91\) # (GND)))))
-- \fu_alu|Add0~94\ = CARRY((\fu_mux3|muxout[30]~2_combout\ & (!\fu_alu|Add0~92_combout\ & !\fu_alu|Add0~91\)) # (!\fu_mux3|muxout[30]~2_combout\ & ((!\fu_alu|Add0~91\) # (!\fu_alu|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[30]~2_combout\,
	datab => \fu_alu|Add0~92_combout\,
	datad => VCC,
	cin => \fu_alu|Add0~91\,
	combout => \fu_alu|Add0~93_combout\,
	cout => \fu_alu|Add0~94\);

-- Location: LCCOMB_X26_Y19_N20
\fu_mux5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux1~1_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_mux5|Mux1~0_combout\)) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux1~0_combout\) # ((\fu_mux5|Mux1~0_combout\ & \fu_alu|Add0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(0),
	datab => \fu_mux5|Mux1~0_combout\,
	datac => \fu_alu|Mux1~0_combout\,
	datad => \fu_alu|Add0~93_combout\,
	combout => \fu_mux5|Mux1~1_combout\);

-- Location: FF_X26_Y19_N21
\fu_pc|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux5|Mux1~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_controlunit|OrigPC\(1),
	ena => \fu_pc|q[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(30));

-- Location: LCCOMB_X26_Y19_N16
\fu_mux3|muxout[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[30]~2_combout\ = (\fu_controlunit|OrigAALU~q\ & (\fu_registera|q\(30))) # (!\fu_controlunit|OrigAALU~q\ & ((\fu_pc|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|OrigAALU~q\,
	datac => \fu_registera|q\(30),
	datad => \fu_pc|q\(30),
	combout => \fu_mux3|muxout[30]~2_combout\);

-- Location: LCCOMB_X26_Y19_N30
\fu_alu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux1~0_combout\ = (\fu_alu|Mux23~8_combout\ & (((\fu_mux4|Mux1~0_combout\) # (\fu_mux3|muxout[30]~2_combout\)))) # (!\fu_alu|Mux23~8_combout\ & (\fu_alu|Mux30~0_combout\ & (\fu_mux4|Mux1~0_combout\ & \fu_mux3|muxout[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_alu|Mux23~8_combout\,
	datac => \fu_mux4|Mux1~0_combout\,
	datad => \fu_mux3|muxout[30]~2_combout\,
	combout => \fu_alu|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y19_N14
\fu_alu|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux1~1_combout\ = (\fu_alu|Mux1~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Mux1~0_combout\,
	datad => \fu_alu|Add0~93_combout\,
	combout => \fu_alu|Mux1~1_combout\);

-- Location: FF_X26_Y19_N15
\fu_aluout|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux1~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(30));

-- Location: LCCOMB_X27_Y19_N28
\fu_mux2|muxout[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[30]~30_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(30))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|MemtoReg~q\,
	datac => \fu_mdr|q\(30),
	datad => \fu_aluout|q\(30),
	combout => \fu_mux2|muxout[30]~30_combout\);

-- Location: LCCOMB_X24_Y23_N0
\fu_mdr|q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[18]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_memory|altsyncram_component|auto_generated|q_a\(18),
	combout => \fu_mdr|q[18]~feeder_combout\);

-- Location: FF_X24_Y23_N1
\fu_mdr|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[18]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(18));

-- Location: LCCOMB_X27_Y20_N10
\fu_mdr|q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[17]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_memory|altsyncram_component|auto_generated|q_a\(17),
	combout => \fu_mdr|q[17]~feeder_combout\);

-- Location: FF_X27_Y20_N11
\fu_mdr|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[17]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(17));

-- Location: FF_X27_Y22_N7
\fu_mdr|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(23),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(23));

-- Location: LCCOMB_X24_Y22_N6
\fu_mux3|muxout[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[9]~23_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(9)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(9),
	datad => \fu_registera|q\(9),
	combout => \fu_mux3|muxout[9]~23_combout\);

-- Location: LCCOMB_X24_Y22_N20
\fu_alu|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux22~0_combout\ = (\fu_mux3|muxout[9]~23_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux4|Mux22~1_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux3|muxout[9]~23_combout\ & (\fu_mux4|Mux22~1_combout\ & (\fu_alu|Mux23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[9]~23_combout\,
	datab => \fu_mux4|Mux22~1_combout\,
	datac => \fu_alu|Mux23~8_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux22~0_combout\);

-- Location: LCCOMB_X24_Y22_N18
\fu_alu|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux22~1_combout\ = (\fu_alu|Mux22~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Add0~30_combout\,
	datad => \fu_alu|Mux22~0_combout\,
	combout => \fu_alu|Mux22~1_combout\);

-- Location: FF_X24_Y22_N19
\fu_aluout|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux22~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(9));

-- Location: LCCOMB_X24_Y22_N22
\fu_pc|q[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[9]~7_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(9))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(9),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux22~1_combout\,
	combout => \fu_pc|q[9]~7_combout\);

-- Location: FF_X24_Y22_N23
\fu_pc|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[9]~7_combout\,
	asdata => \fu_mdr|q\(7),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(9));

-- Location: LCCOMB_X24_Y22_N16
\fu_mux0|muxout[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[9]~9_combout\ = (\fu_controlunit|IorD~q\ & ((\fu_aluout|q\(9)))) # (!\fu_controlunit|IorD~q\ & (\fu_pc|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(9),
	datab => \fu_controlunit|IorD~q\,
	datac => \fu_aluout|q\(9),
	combout => \fu_mux0|muxout[9]~9_combout\);

-- Location: FF_X28_Y21_N31
\fu_mdr|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(22),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(22));

-- Location: LCCOMB_X21_Y22_N22
\fu_mux3|muxout[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[8]~24_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(8)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(8),
	datad => \fu_registera|q\(8),
	combout => \fu_mux3|muxout[8]~24_combout\);

-- Location: LCCOMB_X21_Y22_N20
\fu_alu|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux23~9_combout\ = (\fu_mux3|muxout[8]~24_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_alu|Mux30~0_combout\ & \fu_mux4|Mux23~1_combout\)))) # (!\fu_mux3|muxout[8]~24_combout\ & (\fu_alu|Mux23~8_combout\ & ((\fu_mux4|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[8]~24_combout\,
	datab => \fu_alu|Mux23~8_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_mux4|Mux23~1_combout\,
	combout => \fu_alu|Mux23~9_combout\);

-- Location: LCCOMB_X21_Y22_N2
\fu_alu|Mux23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux23~10_combout\ = (\fu_alu|Mux23~9_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Add0~27_combout\,
	datad => \fu_alu|Mux23~9_combout\,
	combout => \fu_alu|Mux23~10_combout\);

-- Location: FF_X21_Y22_N3
\fu_aluout|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux23~10_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(8));

-- Location: LCCOMB_X22_Y23_N10
\fu_mux0|muxout[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[8]~8_combout\ = (\fu_controlunit|IorD~q\ & (\fu_aluout|q\(8))) # (!\fu_controlunit|IorD~q\ & ((\fu_pc|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|IorD~q\,
	datac => \fu_aluout|q\(8),
	datad => \fu_pc|q\(8),
	combout => \fu_mux0|muxout[8]~8_combout\);

-- Location: LCCOMB_X28_Y21_N4
\fu_mdr|q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[21]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_memory|altsyncram_component|auto_generated|q_a\(21),
	combout => \fu_mdr|q[21]~feeder_combout\);

-- Location: FF_X28_Y21_N5
\fu_mdr|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[21]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(21));

-- Location: LCCOMB_X24_Y22_N4
\fu_mux3|muxout[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[7]~25_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(7)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(7),
	datac => \fu_registera|q\(7),
	datad => \fu_controlunit|OrigAALU~q\,
	combout => \fu_mux3|muxout[7]~25_combout\);

-- Location: LCCOMB_X24_Y22_N30
\fu_alu|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux24~0_combout\ = (\fu_alu|Mux30~0_combout\ & (((\fu_mux3|muxout[7]~25_combout\ & \fu_mux4|Mux24~1_combout\)))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux3|muxout[7]~25_combout\) # (\fu_mux4|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~0_combout\,
	datab => \fu_mux3|muxout[7]~25_combout\,
	datac => \fu_mux4|Mux24~1_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux24~0_combout\);

-- Location: LCCOMB_X24_Y22_N8
\fu_alu|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux24~1_combout\ = (\fu_alucontrol|Mux5~1_combout\ & (\fu_alu|Mux24~0_combout\)) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Mux30~0_combout\ & (\fu_alu|Mux24~0_combout\)) # (!\fu_alu|Mux30~0_combout\ & ((\fu_alu|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux24~0_combout\,
	datab => \fu_alucontrol|Mux5~1_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Add0~24_combout\,
	combout => \fu_alu|Mux24~1_combout\);

-- Location: FF_X24_Y22_N9
\fu_aluout|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux24~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(7));

-- Location: LCCOMB_X24_Y22_N2
\fu_mux0|muxout[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[7]~7_combout\ = (\fu_controlunit|IorD~q\ & (\fu_aluout|q\(7))) # (!\fu_controlunit|IorD~q\ & ((\fu_pc|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_aluout|q\(7),
	datac => \fu_controlunit|IorD~q\,
	datad => \fu_pc|q\(7),
	combout => \fu_mux0|muxout[7]~7_combout\);

-- Location: FF_X21_Y21_N3
\fu_mdr|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(6),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(6));

-- Location: LCCOMB_X21_Y21_N2
\fu_mux4|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux25~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(6))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(6),
	datad => \fu_registerb|q\(6),
	combout => \fu_mux4|Mux25~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\fu_mux4|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux25~1_combout\ = (\fu_mux4|Mux25~0_combout\) # ((\fu_mdr|q\(4) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(4),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux25~0_combout\,
	combout => \fu_mux4|Mux25~1_combout\);

-- Location: LCCOMB_X21_Y22_N26
\fu_alu|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux25~0_combout\ = (\fu_alu|Mux30~0_combout\ & (((\fu_mux4|Mux25~1_combout\ & \fu_mux3|muxout[6]~26_combout\)))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux4|Mux25~1_combout\) # (\fu_mux3|muxout[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~0_combout\,
	datab => \fu_mux4|Mux25~1_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_mux3|muxout[6]~26_combout\,
	combout => \fu_alu|Mux25~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\fu_alu|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux25~1_combout\ = (\fu_alu|Mux30~0_combout\ & (((\fu_alu|Mux25~0_combout\)))) # (!\fu_alu|Mux30~0_combout\ & ((\fu_alucontrol|Mux5~1_combout\ & (\fu_alu|Mux25~0_combout\)) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Add0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux30~0_combout\,
	datab => \fu_alucontrol|Mux5~1_combout\,
	datac => \fu_alu|Mux25~0_combout\,
	datad => \fu_alu|Add0~21_combout\,
	combout => \fu_alu|Mux25~1_combout\);

-- Location: FF_X21_Y22_N25
\fu_aluout|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux25~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(6));

-- Location: LCCOMB_X21_Y22_N0
\fu_pc|q[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[6]~4_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(6))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(6),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux25~1_combout\,
	combout => \fu_pc|q[6]~4_combout\);

-- Location: FF_X21_Y22_N1
\fu_pc|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[6]~4_combout\,
	asdata => \fu_mdr|q\(4),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(6));

-- Location: LCCOMB_X21_Y22_N10
\fu_mux0|muxout[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[6]~6_combout\ = (\fu_controlunit|IorD~q\ & ((\fu_aluout|q\(6)))) # (!\fu_controlunit|IorD~q\ & (\fu_pc|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_pc|q\(6),
	datac => \fu_aluout|q\(6),
	datad => \fu_controlunit|IorD~q\,
	combout => \fu_mux0|muxout[6]~6_combout\);

-- Location: FF_X26_Y21_N15
\fu_mdr|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(20),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(20));

-- Location: LCCOMB_X26_Y21_N4
\fu_mux1|muxout[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux1|muxout[4]~4_combout\ = (\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(15)))) # (!\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(20),
	datac => \fu_mdr|q\(15),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_mux1|muxout[4]~4_combout\);

-- Location: LCCOMB_X21_Y21_N28
\fu_mux4|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux26~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(5))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(5),
	datad => \fu_registerb|q\(5),
	combout => \fu_mux4|Mux26~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\fu_mux4|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux26~1_combout\ = (\fu_mux4|Mux26~0_combout\) # ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(3) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(1),
	datab => \fu_mdr|q\(3),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux26~0_combout\,
	combout => \fu_mux4|Mux26~1_combout\);

-- Location: LCCOMB_X23_Y22_N4
\fu_alu|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux26~0_combout\ = (\fu_alu|Mux30~0_combout\ & (((\fu_mux4|Mux26~1_combout\ & \fu_mux3|muxout[5]~27_combout\)))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux4|Mux26~1_combout\) # (\fu_mux3|muxout[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~0_combout\,
	datab => \fu_mux4|Mux26~1_combout\,
	datac => \fu_mux3|muxout[5]~27_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux26~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\fu_alu|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux26~1_combout\ = (\fu_alucontrol|Mux5~1_combout\ & (((\fu_alu|Mux26~0_combout\)))) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Mux30~0_combout\ & (\fu_alu|Mux26~0_combout\)) # (!\fu_alu|Mux30~0_combout\ & ((\fu_alu|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux5~1_combout\,
	datab => \fu_alu|Mux30~0_combout\,
	datac => \fu_alu|Mux26~0_combout\,
	datad => \fu_alu|Add0~18_combout\,
	combout => \fu_alu|Mux26~1_combout\);

-- Location: FF_X23_Y22_N7
\fu_aluout|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux26~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(5));

-- Location: LCCOMB_X24_Y22_N28
\fu_mux0|muxout[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[5]~5_combout\ = (\fu_controlunit|IorD~q\ & (\fu_aluout|q\(5))) # (!\fu_controlunit|IorD~q\ & ((\fu_pc|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_aluout|q\(5),
	datac => \fu_controlunit|IorD~q\,
	datad => \fu_pc|q\(5),
	combout => \fu_mux0|muxout[5]~5_combout\);

-- Location: FF_X21_Y21_N19
\fu_mdr|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(4),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(4));

-- Location: LCCOMB_X21_Y21_N18
\fu_mux4|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux27~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(4))) # (!\fu_controlunit|OrigBALU\(1) & ((\fu_registerb|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_mdr|q\(4),
	datad => \fu_registerb|q\(4),
	combout => \fu_mux4|Mux27~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\fu_mux4|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux27~1_combout\ = (\fu_mux4|Mux27~0_combout\) # ((\fu_mdr|q\(2) & (\fu_controlunit|OrigBALU\(1) & \fu_controlunit|OrigBALU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(2),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_controlunit|OrigBALU\(0),
	datad => \fu_mux4|Mux27~0_combout\,
	combout => \fu_mux4|Mux27~1_combout\);

-- Location: LCCOMB_X22_Y22_N26
\fu_alu|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux27~0_combout\ = (\fu_alu|Mux30~0_combout\ & (\fu_mux4|Mux27~1_combout\ & (\fu_mux3|muxout[4]~28_combout\))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux4|Mux27~1_combout\) # (\fu_mux3|muxout[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux27~1_combout\,
	datab => \fu_mux3|muxout[4]~28_combout\,
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux27~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\fu_alu|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux27~1_combout\ = (\fu_alucontrol|Mux5~1_combout\ & (((\fu_alu|Mux27~0_combout\)))) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Mux30~0_combout\ & (\fu_alu|Mux27~0_combout\)) # (!\fu_alu|Mux30~0_combout\ & ((\fu_alu|Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux5~1_combout\,
	datab => \fu_alu|Mux30~0_combout\,
	datac => \fu_alu|Mux27~0_combout\,
	datad => \fu_alu|Add0~15_combout\,
	combout => \fu_alu|Mux27~1_combout\);

-- Location: FF_X22_Y22_N1
\fu_aluout|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux27~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(4));

-- Location: LCCOMB_X22_Y22_N14
\fu_pc|q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[4]~2_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(4))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(4),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux27~1_combout\,
	combout => \fu_pc|q[4]~2_combout\);

-- Location: FF_X22_Y22_N15
\fu_pc|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[4]~2_combout\,
	asdata => \fu_mdr|q\(2),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(4));

-- Location: LCCOMB_X23_Y22_N14
\fu_mux0|muxout[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[4]~4_combout\ = (\fu_controlunit|IorD~q\ & ((\fu_aluout|q\(4)))) # (!\fu_controlunit|IorD~q\ & (\fu_pc|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(4),
	datab => \fu_controlunit|IorD~q\,
	datac => \fu_aluout|q\(4),
	combout => \fu_mux0|muxout[4]~4_combout\);

-- Location: FF_X24_Y21_N5
\fu_mdr|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(14),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(14));

-- Location: LCCOMB_X26_Y21_N14
\fu_mux1|muxout[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux1|muxout[3]~3_combout\ = (\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(14))) # (!\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|RegDst~q\,
	datab => \fu_mdr|q\(14),
	datad => \fu_mdr|q\(19),
	combout => \fu_mux1|muxout[3]~3_combout\);

-- Location: LCCOMB_X23_Y22_N24
\fu_mux3|muxout[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[3]~29_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(3)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(3),
	datad => \fu_registera|q\(3),
	combout => \fu_mux3|muxout[3]~29_combout\);

-- Location: LCCOMB_X23_Y22_N10
\fu_alu|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux28~0_combout\ = (\fu_alu|Mux30~0_combout\ & (((\fu_mux3|muxout[3]~29_combout\ & \fu_mux4|Mux28~1_combout\)))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux3|muxout[3]~29_combout\) # (\fu_mux4|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~0_combout\,
	datab => \fu_mux3|muxout[3]~29_combout\,
	datac => \fu_mux4|Mux28~1_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux28~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\fu_alu|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux28~1_combout\ = (\fu_alu|Mux30~0_combout\ & (\fu_alu|Mux28~0_combout\)) # (!\fu_alu|Mux30~0_combout\ & ((\fu_alucontrol|Mux5~1_combout\ & (\fu_alu|Mux28~0_combout\)) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux28~0_combout\,
	datab => \fu_alu|Mux30~0_combout\,
	datac => \fu_alucontrol|Mux5~1_combout\,
	datad => \fu_alu|Add0~12_combout\,
	combout => \fu_alu|Mux28~1_combout\);

-- Location: FF_X23_Y22_N29
\fu_aluout|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux28~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(3));

-- Location: LCCOMB_X23_Y22_N8
\fu_pc|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_pc|q[3]~1_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(3))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(3),
	datab => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux28~1_combout\,
	combout => \fu_pc|q[3]~1_combout\);

-- Location: FF_X23_Y22_N9
\fu_pc|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_pc|q[3]~1_combout\,
	asdata => \fu_mdr|q\(1),
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_pc|q[8]~26_combout\,
	sload => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(3));

-- Location: LCCOMB_X23_Y22_N0
\fu_mux0|muxout[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[3]~3_combout\ = (\fu_controlunit|IorD~q\ & ((\fu_aluout|q\(3)))) # (!\fu_controlunit|IorD~q\ & (\fu_pc|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|IorD~q\,
	datac => \fu_pc|q\(3),
	datad => \fu_aluout|q\(3),
	combout => \fu_mux0|muxout[3]~3_combout\);

-- Location: FF_X24_Y20_N3
\fu_mdr|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(13),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(13));

-- Location: LCCOMB_X26_Y21_N24
\fu_mux1|muxout[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux1|muxout[2]~2_combout\ = (\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(13))) # (!\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|RegDst~q\,
	datac => \fu_mdr|q\(13),
	datad => \fu_mdr|q\(18),
	combout => \fu_mux1|muxout[2]~2_combout\);

-- Location: LCCOMB_X22_Y22_N30
\fu_mux3|muxout[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[2]~30_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(2)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(2),
	datad => \fu_registera|q\(2),
	combout => \fu_mux3|muxout[2]~30_combout\);

-- Location: LCCOMB_X22_Y22_N16
\fu_alu|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux29~0_combout\ = (\fu_alu|Mux30~0_combout\ & (\fu_mux3|muxout[2]~30_combout\ & (\fu_mux4|Mux29~1_combout\))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux3|muxout[2]~30_combout\) # (\fu_mux4|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[2]~30_combout\,
	datab => \fu_mux4|Mux29~1_combout\,
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux29~0_combout\);

-- Location: LCCOMB_X22_Y22_N12
\fu_alu|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux29~1_combout\ = (\fu_alucontrol|Mux5~1_combout\ & (((\fu_alu|Mux29~0_combout\)))) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Mux30~0_combout\ & ((\fu_alu|Mux29~0_combout\))) # (!\fu_alu|Mux30~0_combout\ & (\fu_alu|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux5~1_combout\,
	datab => \fu_alu|Mux30~0_combout\,
	datac => \fu_alu|Add0~9_combout\,
	datad => \fu_alu|Mux29~0_combout\,
	combout => \fu_alu|Mux29~1_combout\);

-- Location: FF_X22_Y22_N13
\fu_aluout|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux29~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(2));

-- Location: LCCOMB_X23_Y22_N2
\fu_mux0|muxout[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[2]~2_combout\ = (\fu_controlunit|IorD~q\ & (\fu_aluout|q\(2))) # (!\fu_controlunit|IorD~q\ & ((\fu_pc|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(2),
	datac => \fu_pc|q\(2),
	datad => \fu_controlunit|IorD~q\,
	combout => \fu_mux0|muxout[2]~2_combout\);

-- Location: FF_X24_Y21_N15
\fu_mdr|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(12),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(12));

-- Location: LCCOMB_X27_Y21_N28
\fu_mux1|muxout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux1|muxout[1]~1_combout\ = (\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(12))) # (!\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|RegDst~q\,
	datac => \fu_mdr|q\(12),
	datad => \fu_mdr|q\(17),
	combout => \fu_mux1|muxout[1]~1_combout\);

-- Location: LCCOMB_X27_Y20_N0
\fu_mdr|q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[16]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_memory|altsyncram_component|auto_generated|q_a\(16),
	combout => \fu_mdr|q[16]~feeder_combout\);

-- Location: FF_X27_Y20_N1
\fu_mdr|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[16]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(16));

-- Location: LCCOMB_X27_Y21_N10
\fu_mux1|muxout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux1|muxout[0]~0_combout\ = (\fu_controlunit|RegDst~q\ & ((\fu_mdr|q\(11)))) # (!\fu_controlunit|RegDst~q\ & (\fu_mdr|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_mdr|q\(16),
	datac => \fu_mdr|q\(11),
	datad => \fu_controlunit|RegDst~q\,
	combout => \fu_mux1|muxout[0]~0_combout\);

-- Location: LCCOMB_X27_Y22_N20
\fu_mdr|q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[19]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_memory|altsyncram_component|auto_generated|q_a\(19),
	combout => \fu_mdr|q[19]~feeder_combout\);

-- Location: FF_X27_Y22_N21
\fu_mdr|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[19]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(19));

-- Location: LCCOMB_X29_Y21_N30
\fu_registerbank|Mux62~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~10_combout\ = (\fu_mdr|q\(16) & ((\fu_mdr|q\(17)) # ((\fu_registerbank|registers[9][1]~q\)))) # (!\fu_mdr|q\(16) & (!\fu_mdr|q\(17) & ((!\fu_registerbank|registers[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(16),
	datab => \fu_mdr|q\(17),
	datac => \fu_registerbank|registers[9][1]~q\,
	datad => \fu_registerbank|registers[8][1]~q\,
	combout => \fu_registerbank|Mux62~10_combout\);

-- Location: LCCOMB_X29_Y21_N4
\fu_registerbank|Mux62~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~11_combout\ = (\fu_registerbank|Mux62~10_combout\ & (((\fu_registerbank|registers[11][1]~q\)) # (!\fu_mdr|q\(17)))) # (!\fu_registerbank|Mux62~10_combout\ & (\fu_mdr|q\(17) & ((\fu_registerbank|registers[10][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux62~10_combout\,
	datab => \fu_mdr|q\(17),
	datac => \fu_registerbank|registers[11][1]~q\,
	datad => \fu_registerbank|registers[10][1]~q\,
	combout => \fu_registerbank|Mux62~11_combout\);

-- Location: LCCOMB_X29_Y21_N20
\fu_registerbank|Mux62~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~17_combout\ = (\fu_mdr|q\(17) & (((\fu_mdr|q\(16)) # (\fu_registerbank|registers[14][1]~q\)))) # (!\fu_mdr|q\(17) & (\fu_registerbank|registers[12][1]~q\ & (!\fu_mdr|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[12][1]~q\,
	datab => \fu_mdr|q\(17),
	datac => \fu_mdr|q\(16),
	datad => \fu_registerbank|registers[14][1]~q\,
	combout => \fu_registerbank|Mux62~17_combout\);

-- Location: LCCOMB_X29_Y21_N14
\fu_registerbank|Mux62~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~18_combout\ = (\fu_mdr|q\(16) & ((\fu_registerbank|Mux62~17_combout\ & (\fu_registerbank|registers[15][1]~q\)) # (!\fu_registerbank|Mux62~17_combout\ & ((\fu_registerbank|registers[13][1]~q\))))) # (!\fu_mdr|q\(16) & 
-- (((\fu_registerbank|Mux62~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[15][1]~q\,
	datab => \fu_registerbank|registers[13][1]~q\,
	datac => \fu_mdr|q\(16),
	datad => \fu_registerbank|Mux62~17_combout\,
	combout => \fu_registerbank|Mux62~18_combout\);

-- Location: LCCOMB_X27_Y21_N26
\fu_registerbank|Mux62~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~14_combout\ = (\fu_mdr|q\(17) & (\fu_mdr|q\(16))) # (!\fu_mdr|q\(17) & ((\fu_mdr|q\(16) & (\fu_registerbank|registers[1][1]~q\)) # (!\fu_mdr|q\(16) & ((\fu_registerbank|registers[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(17),
	datab => \fu_mdr|q\(16),
	datac => \fu_registerbank|registers[1][1]~q\,
	datad => \fu_registerbank|registers[0][1]~q\,
	combout => \fu_registerbank|Mux62~14_combout\);

-- Location: LCCOMB_X28_Y21_N6
\fu_registerbank|Mux62~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~15_combout\ = (\fu_mdr|q\(17) & ((\fu_registerbank|Mux62~14_combout\ & (\fu_registerbank|registers[3][1]~q\)) # (!\fu_registerbank|Mux62~14_combout\ & ((\fu_registerbank|registers[2][1]~q\))))) # (!\fu_mdr|q\(17) & 
-- (((\fu_registerbank|Mux62~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(17),
	datab => \fu_registerbank|registers[3][1]~q\,
	datac => \fu_registerbank|Mux62~14_combout\,
	datad => \fu_registerbank|registers[2][1]~q\,
	combout => \fu_registerbank|Mux62~15_combout\);

-- Location: LCCOMB_X28_Y21_N28
\fu_registerbank|Mux62~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~12_combout\ = (\fu_mdr|q\(17) & (((\fu_registerbank|registers[6][1]~q\) # (\fu_mdr|q\(16))))) # (!\fu_mdr|q\(17) & (\fu_registerbank|registers[4][1]~q\ & ((!\fu_mdr|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(17),
	datab => \fu_registerbank|registers[4][1]~q\,
	datac => \fu_registerbank|registers[6][1]~q\,
	datad => \fu_mdr|q\(16),
	combout => \fu_registerbank|Mux62~12_combout\);

-- Location: LCCOMB_X28_Y21_N14
\fu_registerbank|Mux62~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~13_combout\ = (\fu_registerbank|Mux62~12_combout\ & ((\fu_registerbank|registers[7][1]~q\) # ((!\fu_mdr|q\(16))))) # (!\fu_registerbank|Mux62~12_combout\ & (((\fu_mdr|q\(16) & \fu_registerbank|registers[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[7][1]~q\,
	datab => \fu_registerbank|Mux62~12_combout\,
	datac => \fu_mdr|q\(16),
	datad => \fu_registerbank|registers[5][1]~q\,
	combout => \fu_registerbank|Mux62~13_combout\);

-- Location: LCCOMB_X29_Y21_N6
\fu_registerbank|Mux62~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~16_combout\ = (\fu_mdr|q\(19) & (\fu_mdr|q\(18))) # (!\fu_mdr|q\(19) & ((\fu_mdr|q\(18) & ((\fu_registerbank|Mux62~13_combout\))) # (!\fu_mdr|q\(18) & (\fu_registerbank|Mux62~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(19),
	datab => \fu_mdr|q\(18),
	datac => \fu_registerbank|Mux62~15_combout\,
	datad => \fu_registerbank|Mux62~13_combout\,
	combout => \fu_registerbank|Mux62~16_combout\);

-- Location: LCCOMB_X29_Y21_N16
\fu_registerbank|Mux62~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~19_combout\ = (\fu_mdr|q\(19) & ((\fu_registerbank|Mux62~16_combout\ & ((\fu_registerbank|Mux62~18_combout\))) # (!\fu_registerbank|Mux62~16_combout\ & (\fu_registerbank|Mux62~11_combout\)))) # (!\fu_mdr|q\(19) & 
-- (((\fu_registerbank|Mux62~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(19),
	datab => \fu_registerbank|Mux62~11_combout\,
	datac => \fu_registerbank|Mux62~18_combout\,
	datad => \fu_registerbank|Mux62~16_combout\,
	combout => \fu_registerbank|Mux62~19_combout\);

-- Location: LCCOMB_X30_Y21_N8
\fu_registerbank|Mux62~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~7_combout\ = (\fu_mdr|q\(18) & ((\fu_mdr|q\(19)) # ((\fu_registerbank|registers[23][1]~q\)))) # (!\fu_mdr|q\(18) & (!\fu_mdr|q\(19) & (\fu_registerbank|registers[19][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(18),
	datab => \fu_mdr|q\(19),
	datac => \fu_registerbank|registers[19][1]~q\,
	datad => \fu_registerbank|registers[23][1]~q\,
	combout => \fu_registerbank|Mux62~7_combout\);

-- Location: LCCOMB_X30_Y21_N20
\fu_registerbank|Mux62~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~8_combout\ = (\fu_registerbank|Mux62~7_combout\ & ((\fu_registerbank|registers[31][1]~q\) # ((!\fu_mdr|q\(19))))) # (!\fu_registerbank|Mux62~7_combout\ & (((\fu_mdr|q\(19) & \fu_registerbank|registers[27][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux62~7_combout\,
	datab => \fu_registerbank|registers[31][1]~q\,
	datac => \fu_mdr|q\(19),
	datad => \fu_registerbank|registers[27][1]~q\,
	combout => \fu_registerbank|Mux62~8_combout\);

-- Location: LCCOMB_X30_Y21_N12
\fu_registerbank|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~0_combout\ = (\fu_mdr|q\(18) & (\fu_mdr|q\(19))) # (!\fu_mdr|q\(18) & ((\fu_mdr|q\(19) & ((\fu_registerbank|registers[26][1]~q\))) # (!\fu_mdr|q\(19) & (\fu_registerbank|registers[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(18),
	datab => \fu_mdr|q\(19),
	datac => \fu_registerbank|registers[18][1]~q\,
	datad => \fu_registerbank|registers[26][1]~q\,
	combout => \fu_registerbank|Mux62~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\fu_registerbank|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~1_combout\ = (\fu_mdr|q\(18) & ((\fu_registerbank|Mux62~0_combout\ & (\fu_registerbank|registers[30][1]~q\)) # (!\fu_registerbank|Mux62~0_combout\ & ((\fu_registerbank|registers[22][1]~q\))))) # (!\fu_mdr|q\(18) & 
-- (((\fu_registerbank|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[30][1]~q\,
	datab => \fu_registerbank|registers[22][1]~q\,
	datac => \fu_mdr|q\(18),
	datad => \fu_registerbank|Mux62~0_combout\,
	combout => \fu_registerbank|Mux62~1_combout\);

-- Location: LCCOMB_X27_Y22_N2
\fu_registerbank|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~4_combout\ = (\fu_mdr|q\(18) & (((\fu_mdr|q\(19))))) # (!\fu_mdr|q\(18) & ((\fu_mdr|q\(19) & (\fu_registerbank|registers[24][1]~q\)) # (!\fu_mdr|q\(19) & ((\fu_registerbank|registers[16][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[24][1]~q\,
	datab => \fu_registerbank|registers[16][1]~q\,
	datac => \fu_mdr|q\(18),
	datad => \fu_mdr|q\(19),
	combout => \fu_registerbank|Mux62~4_combout\);

-- Location: LCCOMB_X27_Y22_N4
\fu_registerbank|Mux62~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~5_combout\ = (\fu_mdr|q\(18) & ((\fu_registerbank|Mux62~4_combout\ & ((\fu_registerbank|registers[28][1]~q\))) # (!\fu_registerbank|Mux62~4_combout\ & (\fu_registerbank|registers[20][1]~q\)))) # (!\fu_mdr|q\(18) & 
-- (((\fu_registerbank|Mux62~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[20][1]~q\,
	datab => \fu_registerbank|registers[28][1]~q\,
	datac => \fu_mdr|q\(18),
	datad => \fu_registerbank|Mux62~4_combout\,
	combout => \fu_registerbank|Mux62~5_combout\);

-- Location: LCCOMB_X27_Y22_N24
\fu_registerbank|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~2_combout\ = (\fu_mdr|q\(19) & (((\fu_mdr|q\(18))))) # (!\fu_mdr|q\(19) & ((\fu_mdr|q\(18) & ((\fu_registerbank|registers[21][1]~q\))) # (!\fu_mdr|q\(18) & (\fu_registerbank|registers[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[17][1]~q\,
	datab => \fu_mdr|q\(19),
	datac => \fu_mdr|q\(18),
	datad => \fu_registerbank|registers[21][1]~q\,
	combout => \fu_registerbank|Mux62~2_combout\);

-- Location: LCCOMB_X27_Y22_N8
\fu_registerbank|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~3_combout\ = (\fu_mdr|q\(19) & ((\fu_registerbank|Mux62~2_combout\ & ((\fu_registerbank|registers[29][1]~q\))) # (!\fu_registerbank|Mux62~2_combout\ & (\fu_registerbank|registers[25][1]~q\)))) # (!\fu_mdr|q\(19) & 
-- (((\fu_registerbank|Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|registers[25][1]~q\,
	datab => \fu_mdr|q\(19),
	datac => \fu_registerbank|registers[29][1]~q\,
	datad => \fu_registerbank|Mux62~2_combout\,
	combout => \fu_registerbank|Mux62~3_combout\);

-- Location: LCCOMB_X28_Y22_N8
\fu_registerbank|Mux62~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~6_combout\ = (\fu_mdr|q\(17) & (\fu_mdr|q\(16))) # (!\fu_mdr|q\(17) & ((\fu_mdr|q\(16) & ((\fu_registerbank|Mux62~3_combout\))) # (!\fu_mdr|q\(16) & (\fu_registerbank|Mux62~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(17),
	datab => \fu_mdr|q\(16),
	datac => \fu_registerbank|Mux62~5_combout\,
	datad => \fu_registerbank|Mux62~3_combout\,
	combout => \fu_registerbank|Mux62~6_combout\);

-- Location: LCCOMB_X29_Y21_N28
\fu_registerbank|Mux62~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~9_combout\ = (\fu_mdr|q\(17) & ((\fu_registerbank|Mux62~6_combout\ & (\fu_registerbank|Mux62~8_combout\)) # (!\fu_registerbank|Mux62~6_combout\ & ((\fu_registerbank|Mux62~1_combout\))))) # (!\fu_mdr|q\(17) & 
-- (((\fu_registerbank|Mux62~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_registerbank|Mux62~8_combout\,
	datab => \fu_registerbank|Mux62~1_combout\,
	datac => \fu_mdr|q\(17),
	datad => \fu_registerbank|Mux62~6_combout\,
	combout => \fu_registerbank|Mux62~9_combout\);

-- Location: LCCOMB_X29_Y21_N22
\fu_registerbank|Mux62~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|Mux62~20_combout\ = (\fu_mdr|q\(20) & ((\fu_registerbank|Mux62~9_combout\))) # (!\fu_mdr|q\(20) & (\fu_registerbank|Mux62~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_registerbank|Mux62~19_combout\,
	datac => \fu_mdr|q\(20),
	datad => \fu_registerbank|Mux62~9_combout\,
	combout => \fu_registerbank|Mux62~20_combout\);

-- Location: FF_X29_Y21_N23
\fu_registerbank|read2out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|Mux62~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|read2out\(1));

-- Location: FF_X21_Y21_N15
\fu_registerb|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_registerbank|read2out\(1),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerb|q\(1));

-- Location: LCCOMB_X21_Y21_N14
\fu_mux4|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux30~0_combout\ = (!\fu_controlunit|OrigBALU\(0) & ((\fu_controlunit|OrigBALU\(1) & ((\fu_mdr|q\(1)))) # (!\fu_controlunit|OrigBALU\(1) & (\fu_registerb|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigBALU\(0),
	datab => \fu_controlunit|OrigBALU\(1),
	datac => \fu_registerb|q\(1),
	datad => \fu_mdr|q\(1),
	combout => \fu_mux4|Mux30~0_combout\);

-- Location: LCCOMB_X22_Y21_N10
\fu_alu|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~5_combout\ = \fu_mux4|Mux30~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_controlunit|Equal1~0_combout\ & \fu_alucontrol|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_mux4|Mux30~0_combout\,
	combout => \fu_alu|Add0~5_combout\);

-- Location: LCCOMB_X22_Y21_N8
\fu_alu|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux30~1_combout\ = (\fu_alu|Mux30~0_combout\ & (\fu_mux4|Mux30~0_combout\ & (\fu_mux3|muxout[1]~31_combout\))) # (!\fu_alu|Mux30~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & ((\fu_mux4|Mux30~0_combout\) # (\fu_mux3|muxout[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux30~0_combout\,
	datab => \fu_mux3|muxout[1]~31_combout\,
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux30~1_combout\);

-- Location: LCCOMB_X22_Y21_N0
\fu_alu|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux30~2_combout\ = (\fu_alucontrol|Mux5~1_combout\ & (((\fu_alu|Mux30~1_combout\)))) # (!\fu_alucontrol|Mux5~1_combout\ & ((\fu_alu|Mux30~0_combout\ & ((\fu_alu|Mux30~1_combout\))) # (!\fu_alu|Mux30~0_combout\ & (\fu_alu|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux5~1_combout\,
	datab => \fu_alu|Add0~6_combout\,
	datac => \fu_alu|Mux30~1_combout\,
	datad => \fu_alu|Mux30~0_combout\,
	combout => \fu_alu|Mux30~2_combout\);

-- Location: FF_X22_Y21_N1
\fu_aluout|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux30~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(1));

-- Location: LCCOMB_X22_Y23_N28
\fu_mux5|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux30~0_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(1))) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(1),
	datac => \fu_controlunit|OpALU\(0),
	datad => \fu_alu|Mux30~2_combout\,
	combout => \fu_mux5|Mux30~0_combout\);

-- Location: FF_X22_Y23_N29
\fu_pc|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux5|Mux30~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(1));

-- Location: LCCOMB_X22_Y24_N0
\fu_mux0|muxout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[1]~1_combout\ = (\fu_controlunit|IorD~q\ & ((\fu_aluout|q\(1)))) # (!\fu_controlunit|IorD~q\ & (\fu_pc|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|IorD~q\,
	datac => \fu_pc|q\(1),
	datad => \fu_aluout|q\(1),
	combout => \fu_mux0|muxout[1]~1_combout\);

-- Location: FF_X21_Y21_N29
\fu_mdr|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(5),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(5));

-- Location: LCCOMB_X21_Y23_N18
\fu_alucontrol|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux5~0_combout\ = (\fu_mdr|q\(5) & (!\fu_mdr|q\(4) & !\fu_controlunit|OpALU\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_mdr|q\(5),
	datac => \fu_mdr|q\(4),
	datad => \fu_controlunit|OpALU\(0),
	combout => \fu_alucontrol|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y19_N10
\fu_alucontrol|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux4~0_combout\ = (\fu_controlunit|OpALU\(1) & ((\fu_alucontrol|Mux1~0_combout\) # (!\fu_alucontrol|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OpALU\(1),
	datac => \fu_alucontrol|Mux5~0_combout\,
	datad => \fu_alucontrol|Mux1~0_combout\,
	combout => \fu_alucontrol|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\fu_alu|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux31~3_combout\ = (!\fu_alucontrol|Mux4~0_combout\ & (!\fu_alucontrol|Mux5~1_combout\ & \fu_alu|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux4~0_combout\,
	datab => \fu_alucontrol|Mux5~1_combout\,
	datad => \fu_alu|Add0~3_combout\,
	combout => \fu_alu|Mux31~3_combout\);

-- Location: LCCOMB_X21_Y19_N24
\fu_alu|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux31~4_combout\ = (!\fu_alucontrol|Mux1~0_combout\ & (\fu_controlunit|OpALU\(1) & (\fu_alucontrol|Mux5~0_combout\ & \fu_alucontrol|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux1~0_combout\,
	datab => \fu_controlunit|OpALU\(1),
	datac => \fu_alucontrol|Mux5~0_combout\,
	datad => \fu_alucontrol|Mux2~0_combout\,
	combout => \fu_alu|Mux31~4_combout\);

-- Location: LCCOMB_X21_Y19_N18
\fu_alu|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux31~5_combout\ = (\fu_alucontrol|Mux3~0_combout\ & \fu_alu|Mux31~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_alucontrol|Mux3~0_combout\,
	datad => \fu_alu|Mux31~4_combout\,
	combout => \fu_alu|Mux31~5_combout\);

-- Location: LCCOMB_X20_Y21_N8
\fu_alu|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux31~7_combout\ = (\fu_alucontrol|Mux2~0_combout\ & (!\fu_alucontrol|Mux3~0_combout\ & (\fu_alucontrol|Mux5~0_combout\ & \fu_controlunit|OpALU\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux2~0_combout\,
	datab => \fu_alucontrol|Mux3~0_combout\,
	datac => \fu_alucontrol|Mux5~0_combout\,
	datad => \fu_controlunit|OpALU\(1),
	combout => \fu_alu|Mux31~7_combout\);

-- Location: LCCOMB_X21_Y19_N4
\fu_alu|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux31~2_combout\ = (\fu_alucontrol|Mux4~0_combout\ & ((\fu_mux3|muxout[0]~0_combout\ & ((\fu_mux4|Mux31~0_combout\) # (\fu_alu|Mux31~7_combout\))) # (!\fu_mux3|muxout[0]~0_combout\ & (\fu_mux4|Mux31~0_combout\ & \fu_alu|Mux31~7_combout\)))) # 
-- (!\fu_alucontrol|Mux4~0_combout\ & (\fu_mux3|muxout[0]~0_combout\ & (\fu_mux4|Mux31~0_combout\ & \fu_alu|Mux31~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux4~0_combout\,
	datab => \fu_mux3|muxout[0]~0_combout\,
	datac => \fu_mux4|Mux31~0_combout\,
	datad => \fu_alu|Mux31~7_combout\,
	combout => \fu_alu|Mux31~2_combout\);

-- Location: LCCOMB_X24_Y19_N10
\fu_mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux4|Mux0~0_combout\ = (\fu_controlunit|OrigBALU\(1) & (\fu_mdr|q\(15))) # (!\fu_controlunit|OrigBALU\(1) & (((\fu_registerb|q\(31) & !\fu_controlunit|OrigBALU\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(15),
	datab => \fu_registerb|q\(31),
	datac => \fu_controlunit|OrigBALU\(1),
	datad => \fu_controlunit|OrigBALU\(0),
	combout => \fu_mux4|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y19_N12
\fu_mux5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux0~0_combout\ = (\fu_controlunit|OpALU\(0) & ((\fu_aluout|q\(31)))) # (!\fu_controlunit|OpALU\(0) & (\fu_alu|Mux23~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux23~11_combout\,
	datac => \fu_controlunit|OpALU\(0),
	datad => \fu_aluout|q\(31),
	combout => \fu_mux5|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\fu_alu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux0~0_combout\ = (\fu_mux4|Mux0~0_combout\ & ((\fu_alu|Mux23~8_combout\) # ((\fu_mux3|muxout[31]~1_combout\ & \fu_alu|Mux30~0_combout\)))) # (!\fu_mux4|Mux0~0_combout\ & (\fu_mux3|muxout[31]~1_combout\ & ((\fu_alu|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux0~0_combout\,
	datab => \fu_mux3|muxout[31]~1_combout\,
	datac => \fu_alu|Mux30~0_combout\,
	datad => \fu_alu|Mux23~8_combout\,
	combout => \fu_alu|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y19_N24
\fu_alu|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~95_combout\ = \fu_mux4|Mux0~0_combout\ $ (((\fu_alucontrol|Mux3~2_combout\) # ((\fu_alucontrol|Mux3~1_combout\ & \fu_controlunit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux0~0_combout\,
	datab => \fu_alucontrol|Mux3~1_combout\,
	datac => \fu_alucontrol|Mux3~2_combout\,
	datad => \fu_controlunit|Equal1~0_combout\,
	combout => \fu_alu|Add0~95_combout\);

-- Location: LCCOMB_X22_Y19_N16
\fu_alu|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Add0~96_combout\ = \fu_mux3|muxout[31]~1_combout\ $ (\fu_alu|Add0~94\ $ (!\fu_alu|Add0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fu_mux3|muxout[31]~1_combout\,
	datad => \fu_alu|Add0~95_combout\,
	cin => \fu_alu|Add0~94\,
	combout => \fu_alu|Add0~96_combout\);

-- Location: LCCOMB_X21_Y19_N6
\fu_mux5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux0~1_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_mux5|Mux0~0_combout\)) # (!\fu_controlunit|OpALU\(0) & ((\fu_alu|Mux0~0_combout\) # ((\fu_mux5|Mux0~0_combout\ & \fu_alu|Add0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux5|Mux0~0_combout\,
	datab => \fu_controlunit|OpALU\(0),
	datac => \fu_alu|Mux0~0_combout\,
	datad => \fu_alu|Add0~96_combout\,
	combout => \fu_mux5|Mux0~1_combout\);

-- Location: FF_X21_Y19_N7
\fu_pc|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux5|Mux0~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_controlunit|OrigPC\(1),
	ena => \fu_pc|q[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(31));

-- Location: LCCOMB_X24_Y19_N8
\fu_mux3|muxout[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux3|muxout[31]~1_combout\ = (\fu_controlunit|OrigAALU~q\ & ((\fu_registera|q\(31)))) # (!\fu_controlunit|OrigAALU~q\ & (\fu_pc|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|OrigAALU~q\,
	datac => \fu_pc|q\(31),
	datad => \fu_registera|q\(31),
	combout => \fu_mux3|muxout[31]~1_combout\);

-- Location: LCCOMB_X20_Y20_N0
\fu_alu|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~1_cout\ = CARRY((\fu_mux4|Mux31~0_combout\ & !\fu_mux3|muxout[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux31~0_combout\,
	datab => \fu_mux3|muxout[0]~0_combout\,
	datad => VCC,
	cout => \fu_alu|LessThan0~1_cout\);

-- Location: LCCOMB_X20_Y20_N2
\fu_alu|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~3_cout\ = CARRY((\fu_mux3|muxout[1]~31_combout\ & ((!\fu_alu|LessThan0~1_cout\) # (!\fu_mux4|Mux30~0_combout\))) # (!\fu_mux3|muxout[1]~31_combout\ & (!\fu_mux4|Mux30~0_combout\ & !\fu_alu|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[1]~31_combout\,
	datab => \fu_mux4|Mux30~0_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~1_cout\,
	cout => \fu_alu|LessThan0~3_cout\);

-- Location: LCCOMB_X20_Y20_N4
\fu_alu|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~5_cout\ = CARRY((\fu_mux3|muxout[2]~30_combout\ & (\fu_mux4|Mux29~1_combout\ & !\fu_alu|LessThan0~3_cout\)) # (!\fu_mux3|muxout[2]~30_combout\ & ((\fu_mux4|Mux29~1_combout\) # (!\fu_alu|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[2]~30_combout\,
	datab => \fu_mux4|Mux29~1_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~3_cout\,
	cout => \fu_alu|LessThan0~5_cout\);

-- Location: LCCOMB_X20_Y20_N6
\fu_alu|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~7_cout\ = CARRY((\fu_mux4|Mux28~1_combout\ & (\fu_mux3|muxout[3]~29_combout\ & !\fu_alu|LessThan0~5_cout\)) # (!\fu_mux4|Mux28~1_combout\ & ((\fu_mux3|muxout[3]~29_combout\) # (!\fu_alu|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux28~1_combout\,
	datab => \fu_mux3|muxout[3]~29_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~5_cout\,
	cout => \fu_alu|LessThan0~7_cout\);

-- Location: LCCOMB_X20_Y20_N8
\fu_alu|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~9_cout\ = CARRY((\fu_mux3|muxout[4]~28_combout\ & (\fu_mux4|Mux27~1_combout\ & !\fu_alu|LessThan0~7_cout\)) # (!\fu_mux3|muxout[4]~28_combout\ & ((\fu_mux4|Mux27~1_combout\) # (!\fu_alu|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[4]~28_combout\,
	datab => \fu_mux4|Mux27~1_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~7_cout\,
	cout => \fu_alu|LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y20_N10
\fu_alu|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~11_cout\ = CARRY((\fu_mux4|Mux26~1_combout\ & (\fu_mux3|muxout[5]~27_combout\ & !\fu_alu|LessThan0~9_cout\)) # (!\fu_mux4|Mux26~1_combout\ & ((\fu_mux3|muxout[5]~27_combout\) # (!\fu_alu|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux26~1_combout\,
	datab => \fu_mux3|muxout[5]~27_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~9_cout\,
	cout => \fu_alu|LessThan0~11_cout\);

-- Location: LCCOMB_X20_Y20_N12
\fu_alu|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~13_cout\ = CARRY((\fu_mux3|muxout[6]~26_combout\ & (\fu_mux4|Mux25~1_combout\ & !\fu_alu|LessThan0~11_cout\)) # (!\fu_mux3|muxout[6]~26_combout\ & ((\fu_mux4|Mux25~1_combout\) # (!\fu_alu|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[6]~26_combout\,
	datab => \fu_mux4|Mux25~1_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~11_cout\,
	cout => \fu_alu|LessThan0~13_cout\);

-- Location: LCCOMB_X20_Y20_N14
\fu_alu|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~15_cout\ = CARRY((\fu_mux4|Mux24~1_combout\ & (\fu_mux3|muxout[7]~25_combout\ & !\fu_alu|LessThan0~13_cout\)) # (!\fu_mux4|Mux24~1_combout\ & ((\fu_mux3|muxout[7]~25_combout\) # (!\fu_alu|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux24~1_combout\,
	datab => \fu_mux3|muxout[7]~25_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~13_cout\,
	cout => \fu_alu|LessThan0~15_cout\);

-- Location: LCCOMB_X20_Y20_N16
\fu_alu|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~17_cout\ = CARRY((\fu_mux3|muxout[8]~24_combout\ & (\fu_mux4|Mux23~1_combout\ & !\fu_alu|LessThan0~15_cout\)) # (!\fu_mux3|muxout[8]~24_combout\ & ((\fu_mux4|Mux23~1_combout\) # (!\fu_alu|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[8]~24_combout\,
	datab => \fu_mux4|Mux23~1_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~15_cout\,
	cout => \fu_alu|LessThan0~17_cout\);

-- Location: LCCOMB_X20_Y20_N18
\fu_alu|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~19_cout\ = CARRY((\fu_mux3|muxout[9]~23_combout\ & ((!\fu_alu|LessThan0~17_cout\) # (!\fu_mux4|Mux22~1_combout\))) # (!\fu_mux3|muxout[9]~23_combout\ & (!\fu_mux4|Mux22~1_combout\ & !\fu_alu|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[9]~23_combout\,
	datab => \fu_mux4|Mux22~1_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~17_cout\,
	cout => \fu_alu|LessThan0~19_cout\);

-- Location: LCCOMB_X20_Y20_N20
\fu_alu|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~21_cout\ = CARRY((\fu_mux4|Mux21~1_combout\ & ((!\fu_alu|LessThan0~19_cout\) # (!\fu_mux3|muxout[10]~22_combout\))) # (!\fu_mux4|Mux21~1_combout\ & (!\fu_mux3|muxout[10]~22_combout\ & !\fu_alu|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux21~1_combout\,
	datab => \fu_mux3|muxout[10]~22_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~19_cout\,
	cout => \fu_alu|LessThan0~21_cout\);

-- Location: LCCOMB_X20_Y20_N22
\fu_alu|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~23_cout\ = CARRY((\fu_mux4|Mux20~1_combout\ & (\fu_mux3|muxout[11]~21_combout\ & !\fu_alu|LessThan0~21_cout\)) # (!\fu_mux4|Mux20~1_combout\ & ((\fu_mux3|muxout[11]~21_combout\) # (!\fu_alu|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux20~1_combout\,
	datab => \fu_mux3|muxout[11]~21_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~21_cout\,
	cout => \fu_alu|LessThan0~23_cout\);

-- Location: LCCOMB_X20_Y20_N24
\fu_alu|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~25_cout\ = CARRY((\fu_mux3|muxout[12]~20_combout\ & (\fu_mux4|Mux19~1_combout\ & !\fu_alu|LessThan0~23_cout\)) # (!\fu_mux3|muxout[12]~20_combout\ & ((\fu_mux4|Mux19~1_combout\) # (!\fu_alu|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[12]~20_combout\,
	datab => \fu_mux4|Mux19~1_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~23_cout\,
	cout => \fu_alu|LessThan0~25_cout\);

-- Location: LCCOMB_X20_Y20_N26
\fu_alu|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~27_cout\ = CARRY((\fu_mux4|Mux18~1_combout\ & (\fu_mux3|muxout[13]~19_combout\ & !\fu_alu|LessThan0~25_cout\)) # (!\fu_mux4|Mux18~1_combout\ & ((\fu_mux3|muxout[13]~19_combout\) # (!\fu_alu|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux18~1_combout\,
	datab => \fu_mux3|muxout[13]~19_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~25_cout\,
	cout => \fu_alu|LessThan0~27_cout\);

-- Location: LCCOMB_X20_Y20_N28
\fu_alu|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~29_cout\ = CARRY((\fu_mux4|Mux17~1_combout\ & ((!\fu_alu|LessThan0~27_cout\) # (!\fu_mux3|muxout[14]~18_combout\))) # (!\fu_mux4|Mux17~1_combout\ & (!\fu_mux3|muxout[14]~18_combout\ & !\fu_alu|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux17~1_combout\,
	datab => \fu_mux3|muxout[14]~18_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~27_cout\,
	cout => \fu_alu|LessThan0~29_cout\);

-- Location: LCCOMB_X20_Y20_N30
\fu_alu|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~31_cout\ = CARRY((\fu_mux4|Mux16~1_combout\ & (\fu_mux3|muxout[15]~17_combout\ & !\fu_alu|LessThan0~29_cout\)) # (!\fu_mux4|Mux16~1_combout\ & ((\fu_mux3|muxout[15]~17_combout\) # (!\fu_alu|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux16~1_combout\,
	datab => \fu_mux3|muxout[15]~17_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~29_cout\,
	cout => \fu_alu|LessThan0~31_cout\);

-- Location: LCCOMB_X20_Y19_N0
\fu_alu|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~33_cout\ = CARRY((\fu_mux4|Mux15~1_combout\ & ((!\fu_alu|LessThan0~31_cout\) # (!\fu_mux3|muxout[16]~16_combout\))) # (!\fu_mux4|Mux15~1_combout\ & (!\fu_mux3|muxout[16]~16_combout\ & !\fu_alu|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux15~1_combout\,
	datab => \fu_mux3|muxout[16]~16_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~31_cout\,
	cout => \fu_alu|LessThan0~33_cout\);

-- Location: LCCOMB_X20_Y19_N2
\fu_alu|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~35_cout\ = CARRY((\fu_mux4|Mux14~0_combout\ & (\fu_mux3|muxout[17]~15_combout\ & !\fu_alu|LessThan0~33_cout\)) # (!\fu_mux4|Mux14~0_combout\ & ((\fu_mux3|muxout[17]~15_combout\) # (!\fu_alu|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux14~0_combout\,
	datab => \fu_mux3|muxout[17]~15_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~33_cout\,
	cout => \fu_alu|LessThan0~35_cout\);

-- Location: LCCOMB_X20_Y19_N4
\fu_alu|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~37_cout\ = CARRY((\fu_mux3|muxout[18]~14_combout\ & (\fu_mux4|Mux13~0_combout\ & !\fu_alu|LessThan0~35_cout\)) # (!\fu_mux3|muxout[18]~14_combout\ & ((\fu_mux4|Mux13~0_combout\) # (!\fu_alu|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[18]~14_combout\,
	datab => \fu_mux4|Mux13~0_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~35_cout\,
	cout => \fu_alu|LessThan0~37_cout\);

-- Location: LCCOMB_X20_Y19_N6
\fu_alu|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~39_cout\ = CARRY((\fu_mux4|Mux12~0_combout\ & (\fu_mux3|muxout[19]~13_combout\ & !\fu_alu|LessThan0~37_cout\)) # (!\fu_mux4|Mux12~0_combout\ & ((\fu_mux3|muxout[19]~13_combout\) # (!\fu_alu|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux12~0_combout\,
	datab => \fu_mux3|muxout[19]~13_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~37_cout\,
	cout => \fu_alu|LessThan0~39_cout\);

-- Location: LCCOMB_X20_Y19_N8
\fu_alu|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~41_cout\ = CARRY((\fu_mux3|muxout[20]~12_combout\ & (\fu_mux4|Mux11~0_combout\ & !\fu_alu|LessThan0~39_cout\)) # (!\fu_mux3|muxout[20]~12_combout\ & ((\fu_mux4|Mux11~0_combout\) # (!\fu_alu|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[20]~12_combout\,
	datab => \fu_mux4|Mux11~0_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~39_cout\,
	cout => \fu_alu|LessThan0~41_cout\);

-- Location: LCCOMB_X20_Y19_N10
\fu_alu|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~43_cout\ = CARRY((\fu_mux4|Mux10~0_combout\ & (\fu_mux3|muxout[21]~11_combout\ & !\fu_alu|LessThan0~41_cout\)) # (!\fu_mux4|Mux10~0_combout\ & ((\fu_mux3|muxout[21]~11_combout\) # (!\fu_alu|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux10~0_combout\,
	datab => \fu_mux3|muxout[21]~11_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~41_cout\,
	cout => \fu_alu|LessThan0~43_cout\);

-- Location: LCCOMB_X20_Y19_N12
\fu_alu|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~45_cout\ = CARRY((\fu_mux4|Mux9~0_combout\ & ((!\fu_alu|LessThan0~43_cout\) # (!\fu_mux3|muxout[22]~10_combout\))) # (!\fu_mux4|Mux9~0_combout\ & (!\fu_mux3|muxout[22]~10_combout\ & !\fu_alu|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux9~0_combout\,
	datab => \fu_mux3|muxout[22]~10_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~43_cout\,
	cout => \fu_alu|LessThan0~45_cout\);

-- Location: LCCOMB_X20_Y19_N14
\fu_alu|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~47_cout\ = CARRY((\fu_mux4|Mux8~0_combout\ & (\fu_mux3|muxout[23]~9_combout\ & !\fu_alu|LessThan0~45_cout\)) # (!\fu_mux4|Mux8~0_combout\ & ((\fu_mux3|muxout[23]~9_combout\) # (!\fu_alu|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux8~0_combout\,
	datab => \fu_mux3|muxout[23]~9_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~45_cout\,
	cout => \fu_alu|LessThan0~47_cout\);

-- Location: LCCOMB_X20_Y19_N16
\fu_alu|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~49_cout\ = CARRY((\fu_mux3|muxout[24]~8_combout\ & (\fu_mux4|Mux7~0_combout\ & !\fu_alu|LessThan0~47_cout\)) # (!\fu_mux3|muxout[24]~8_combout\ & ((\fu_mux4|Mux7~0_combout\) # (!\fu_alu|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[24]~8_combout\,
	datab => \fu_mux4|Mux7~0_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~47_cout\,
	cout => \fu_alu|LessThan0~49_cout\);

-- Location: LCCOMB_X20_Y19_N18
\fu_alu|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~51_cout\ = CARRY((\fu_mux4|Mux6~0_combout\ & (\fu_mux3|muxout[25]~7_combout\ & !\fu_alu|LessThan0~49_cout\)) # (!\fu_mux4|Mux6~0_combout\ & ((\fu_mux3|muxout[25]~7_combout\) # (!\fu_alu|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux6~0_combout\,
	datab => \fu_mux3|muxout[25]~7_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~49_cout\,
	cout => \fu_alu|LessThan0~51_cout\);

-- Location: LCCOMB_X20_Y19_N20
\fu_alu|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~53_cout\ = CARRY((\fu_mux4|Mux5~0_combout\ & ((!\fu_alu|LessThan0~51_cout\) # (!\fu_mux3|muxout[26]~6_combout\))) # (!\fu_mux4|Mux5~0_combout\ & (!\fu_mux3|muxout[26]~6_combout\ & !\fu_alu|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux5~0_combout\,
	datab => \fu_mux3|muxout[26]~6_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~51_cout\,
	cout => \fu_alu|LessThan0~53_cout\);

-- Location: LCCOMB_X20_Y19_N22
\fu_alu|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~55_cout\ = CARRY((\fu_mux3|muxout[27]~5_combout\ & ((!\fu_alu|LessThan0~53_cout\) # (!\fu_mux4|Mux4~0_combout\))) # (!\fu_mux3|muxout[27]~5_combout\ & (!\fu_mux4|Mux4~0_combout\ & !\fu_alu|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[27]~5_combout\,
	datab => \fu_mux4|Mux4~0_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~53_cout\,
	cout => \fu_alu|LessThan0~55_cout\);

-- Location: LCCOMB_X20_Y19_N24
\fu_alu|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~57_cout\ = CARRY((\fu_mux4|Mux3~0_combout\ & ((!\fu_alu|LessThan0~55_cout\) # (!\fu_mux3|muxout[28]~4_combout\))) # (!\fu_mux4|Mux3~0_combout\ & (!\fu_mux3|muxout[28]~4_combout\ & !\fu_alu|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux3~0_combout\,
	datab => \fu_mux3|muxout[28]~4_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~55_cout\,
	cout => \fu_alu|LessThan0~57_cout\);

-- Location: LCCOMB_X20_Y19_N26
\fu_alu|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~59_cout\ = CARRY((\fu_mux3|muxout[29]~3_combout\ & ((!\fu_alu|LessThan0~57_cout\) # (!\fu_mux4|Mux2~0_combout\))) # (!\fu_mux3|muxout[29]~3_combout\ & (!\fu_mux4|Mux2~0_combout\ & !\fu_alu|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux3|muxout[29]~3_combout\,
	datab => \fu_mux4|Mux2~0_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~57_cout\,
	cout => \fu_alu|LessThan0~59_cout\);

-- Location: LCCOMB_X20_Y19_N28
\fu_alu|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~61_cout\ = CARRY((\fu_mux4|Mux1~0_combout\ & ((!\fu_alu|LessThan0~59_cout\) # (!\fu_mux3|muxout[30]~2_combout\))) # (!\fu_mux4|Mux1~0_combout\ & (!\fu_mux3|muxout[30]~2_combout\ & !\fu_alu|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mux4|Mux1~0_combout\,
	datab => \fu_mux3|muxout[30]~2_combout\,
	datad => VCC,
	cin => \fu_alu|LessThan0~59_cout\,
	cout => \fu_alu|LessThan0~61_cout\);

-- Location: LCCOMB_X20_Y19_N30
\fu_alu|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|LessThan0~62_combout\ = (\fu_mux4|Mux0~0_combout\ & (\fu_alu|LessThan0~61_cout\ & \fu_mux3|muxout[31]~1_combout\)) # (!\fu_mux4|Mux0~0_combout\ & ((\fu_alu|LessThan0~61_cout\) # (\fu_mux3|muxout[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fu_mux4|Mux0~0_combout\,
	datad => \fu_mux3|muxout[31]~1_combout\,
	cin => \fu_alu|LessThan0~61_cout\,
	combout => \fu_alu|LessThan0~62_combout\);

-- Location: LCCOMB_X21_Y19_N28
\fu_alu|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux31~6_combout\ = (\fu_alu|Mux31~3_combout\) # ((\fu_alu|Mux31~2_combout\) # ((\fu_alu|Mux31~5_combout\ & \fu_alu|LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alu|Mux31~3_combout\,
	datab => \fu_alu|Mux31~5_combout\,
	datac => \fu_alu|Mux31~2_combout\,
	datad => \fu_alu|LessThan0~62_combout\,
	combout => \fu_alu|Mux31~6_combout\);

-- Location: FF_X21_Y19_N29
\fu_aluout|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux31~6_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(0));

-- Location: LCCOMB_X21_Y19_N2
\fu_mux5|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux31~0_combout\ = (\fu_alu|Mux31~2_combout\) # ((\fu_alucontrol|Mux3~0_combout\ & (\fu_alu|Mux31~4_combout\ & \fu_alu|LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux3~0_combout\,
	datab => \fu_alu|Mux31~4_combout\,
	datac => \fu_alu|Mux31~2_combout\,
	datad => \fu_alu|LessThan0~62_combout\,
	combout => \fu_mux5|Mux31~0_combout\);

-- Location: LCCOMB_X21_Y19_N8
\fu_mux5|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux5|Mux31~1_combout\ = (\fu_controlunit|OpALU\(0) & (\fu_aluout|q\(0))) # (!\fu_controlunit|OpALU\(0) & (((\fu_alu|Mux31~3_combout\) # (\fu_mux5|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_aluout|q\(0),
	datab => \fu_controlunit|OpALU\(0),
	datac => \fu_alu|Mux31~3_combout\,
	datad => \fu_mux5|Mux31~0_combout\,
	combout => \fu_mux5|Mux31~1_combout\);

-- Location: FF_X21_Y19_N9
\fu_pc|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux5|Mux31~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	sclr => \fu_controlunit|OrigPC\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_pc|q\(0));

-- Location: LCCOMB_X24_Y19_N16
\fu_mux0|muxout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux0|muxout[0]~0_combout\ = (\fu_controlunit|IorD~q\ & ((\fu_aluout|q\(0)))) # (!\fu_controlunit|IorD~q\ & (\fu_pc|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_pc|q\(0),
	datab => \fu_controlunit|IorD~q\,
	datad => \fu_aluout|q\(0),
	combout => \fu_mux0|muxout[0]~0_combout\);

-- Location: FF_X23_Y21_N29
\fu_mdr|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(0),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(0));

-- Location: LCCOMB_X20_Y21_N0
\fu_alucontrol|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alucontrol|Mux1~0_combout\ = (\fu_mdr|q\(2)) # ((\fu_mdr|q\(0)) # ((\fu_mdr|q\(3) & !\fu_mdr|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(2),
	datab => \fu_mdr|q\(0),
	datac => \fu_mdr|q\(3),
	datad => \fu_mdr|q\(1),
	combout => \fu_alucontrol|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y19_N30
\fu_alu|Mux23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux23~11_combout\ = ((!\fu_alucontrol|Mux1~0_combout\ & (\fu_alucontrol|Mux5~0_combout\ & !\fu_alucontrol|Mux2~0_combout\))) # (!\fu_controlunit|OpALU\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_alucontrol|Mux1~0_combout\,
	datab => \fu_controlunit|OpALU\(1),
	datac => \fu_alucontrol|Mux5~0_combout\,
	datad => \fu_alucontrol|Mux2~0_combout\,
	combout => \fu_alu|Mux23~11_combout\);

-- Location: LCCOMB_X23_Y19_N14
\fu_alu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_alu|Mux0~1_combout\ = (\fu_alu|Mux0~0_combout\) # ((\fu_alu|Mux23~11_combout\ & \fu_alu|Add0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_alu|Mux23~11_combout\,
	datac => \fu_alu|Add0~96_combout\,
	datad => \fu_alu|Mux0~0_combout\,
	combout => \fu_alu|Mux0~1_combout\);

-- Location: FF_X23_Y19_N15
\fu_aluout|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_alu|Mux0~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_aluout|q\(31));

-- Location: FF_X24_Y19_N17
\fu_mdr|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(31),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(31));

-- Location: LCCOMB_X23_Y19_N10
\fu_mux2|muxout[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[31]~31_combout\ = (\fu_controlunit|MemtoReg~q\ & ((\fu_mdr|q\(31)))) # (!\fu_controlunit|MemtoReg~q\ & (\fu_aluout|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datac => \fu_aluout|q\(31),
	datad => \fu_mdr|q\(31),
	combout => \fu_mux2|muxout[31]~31_combout\);

-- Location: FF_X21_Y21_N17
\fu_mdr|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(1),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(1));

-- Location: LCCOMB_X21_Y23_N30
\fu_controlunit|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal4~0_combout\ = (!\fu_mdr|q\(2) & \fu_mdr|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mdr|q\(2),
	datad => \fu_mdr|q\(1),
	combout => \fu_controlunit|Equal4~0_combout\);

-- Location: LCCOMB_X21_Y23_N6
\fu_controlunit|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector3~0_combout\ = (\fu_controlunit|Equal4~1_combout\ & (\fu_controlunit|Equal5~7_combout\ & (\fu_controlunit|Equal4~0_combout\ & !\fu_controlunit|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal4~1_combout\,
	datab => \fu_controlunit|Equal5~7_combout\,
	datac => \fu_controlunit|Equal4~0_combout\,
	datad => \fu_controlunit|Equal1~1_combout\,
	combout => \fu_controlunit|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y23_N2
\fu_controlunit|CurrentState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|CurrentState~5_combout\ = (\fu_controlunit|CurrentState\(3)) # ((\fu_controlunit|CurrentState\(0)) # (\fu_controlunit|CurrentState\(1) $ (\fu_controlunit|CurrentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|CurrentState~5_combout\);

-- Location: LCCOMB_X21_Y23_N0
\fu_controlunit|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~8_combout\ = (\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(0) & (!\fu_controlunit|CurrentState\(2) & !\fu_controlunit|CurrentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(0),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|Equal5~8_combout\);

-- Location: LCCOMB_X21_Y23_N10
\fu_controlunit|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector3~1_combout\ = ((\fu_controlunit|Equal5~8_combout\ & (\fu_controlunit|Equal1~0_combout\ & \fu_mdr|q\(0)))) # (!\fu_controlunit|CurrentState~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState~5_combout\,
	datab => \fu_controlunit|Equal5~8_combout\,
	datac => \fu_controlunit|Equal1~0_combout\,
	datad => \fu_mdr|q\(0),
	combout => \fu_controlunit|Selector3~1_combout\);

-- Location: LCCOMB_X21_Y23_N4
\fu_controlunit|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector3~2_combout\ = (\fu_controlunit|Selector3~0_combout\) # ((\fu_controlunit|Selector3~1_combout\) # ((\fu_controlunit|CurrentState~7_combout\ & \fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Selector3~0_combout\,
	datab => \fu_controlunit|CurrentState~7_combout\,
	datac => \fu_controlunit|CurrentState\(0),
	datad => \fu_controlunit|Selector3~1_combout\,
	combout => \fu_controlunit|Selector3~2_combout\);

-- Location: FF_X21_Y23_N5
\fu_controlunit|CurrentState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|CurrentState\(0));

-- Location: LCCOMB_X22_Y23_N12
\fu_controlunit|ReadMem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|ReadMem~0_combout\ = (!\fu_controlunit|CurrentState\(3) & (!\fu_controlunit|CurrentState\(2) & (\fu_controlunit|CurrentState\(1) $ (!\fu_controlunit|CurrentState\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|ReadMem~0_combout\);

-- Location: FF_X22_Y23_N13
\fu_controlunit|ReadMem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|ReadMem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|ReadMem~q\);

-- Location: LCCOMB_X21_Y21_N30
\fu_mdr|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mdr|q[2]~feeder_combout\ = \fu_memory|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_memory|altsyncram_component|auto_generated|q_a\(2),
	combout => \fu_mdr|q[2]~feeder_combout\);

-- Location: FF_X21_Y21_N31
\fu_mdr|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mdr|q[2]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(2));

-- Location: LCCOMB_X21_Y21_N0
\fu_controlunit|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal1~0_combout\ = (!\fu_mdr|q\(2) & (\fu_mdr|q\(5) & (!\fu_mdr|q\(4) & \fu_mdr|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(2),
	datab => \fu_mdr|q\(5),
	datac => \fu_mdr|q\(4),
	datad => \fu_mdr|q\(1),
	combout => \fu_controlunit|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y23_N14
\fu_controlunit|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal1~1_combout\ = (\fu_controlunit|Equal1~0_combout\ & \fu_mdr|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fu_controlunit|Equal1~0_combout\,
	datad => \fu_mdr|q\(0),
	combout => \fu_controlunit|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y23_N26
\fu_controlunit|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal2~0_combout\ = (\fu_mdr|q\(1)) # ((\fu_mdr|q\(2)) # (!\fu_controlunit|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(1),
	datac => \fu_mdr|q\(2),
	datad => \fu_controlunit|Equal4~1_combout\,
	combout => \fu_controlunit|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y23_N22
\fu_controlunit|CurrentState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|CurrentState~6_combout\ = (\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(2) $ (\fu_controlunit|CurrentState\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|CurrentState~6_combout\);

-- Location: LCCOMB_X21_Y23_N28
\fu_controlunit|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector1~0_combout\ = (\fu_mdr|q\(3) & (\fu_controlunit|Equal5~8_combout\ & (\fu_controlunit|Equal1~0_combout\ & \fu_mdr|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(3),
	datab => \fu_controlunit|Equal5~8_combout\,
	datac => \fu_controlunit|Equal1~0_combout\,
	datad => \fu_mdr|q\(0),
	combout => \fu_controlunit|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y23_N24
\fu_controlunit|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector1~1_combout\ = (\fu_controlunit|CurrentState~6_combout\) # ((\fu_controlunit|Selector1~0_combout\) # ((\fu_controlunit|CurrentState\(2) & \fu_controlunit|CurrentState~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState~6_combout\,
	datab => \fu_controlunit|CurrentState\(2),
	datac => \fu_controlunit|CurrentState~7_combout\,
	datad => \fu_controlunit|Selector1~0_combout\,
	combout => \fu_controlunit|Selector1~1_combout\);

-- Location: LCCOMB_X21_Y23_N8
\fu_controlunit|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector1~2_combout\ = (\fu_controlunit|Selector1~1_combout\) # ((!\fu_controlunit|Equal1~1_combout\ & (\fu_controlunit|Equal5~7_combout\ & !\fu_controlunit|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~1_combout\,
	datab => \fu_controlunit|Equal5~7_combout\,
	datac => \fu_controlunit|Equal2~0_combout\,
	datad => \fu_controlunit|Selector1~1_combout\,
	combout => \fu_controlunit|Selector1~2_combout\);

-- Location: FF_X21_Y23_N9
\fu_controlunit|CurrentState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|CurrentState\(2));

-- Location: LCCOMB_X22_Y23_N26
\fu_controlunit|CurrentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|CurrentState~7_combout\ = (\fu_controlunit|CurrentState\(3) & ((\fu_controlunit|CurrentState\(1)) # (\fu_controlunit|CurrentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	combout => \fu_controlunit|CurrentState~7_combout\);

-- Location: LCCOMB_X21_Y23_N12
\fu_controlunit|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector0~0_combout\ = (!\fu_controlunit|Equal1~1_combout\ & ((\fu_controlunit|Equal5~8_combout\) # ((\fu_controlunit|Equal5~7_combout\ & \fu_controlunit|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal1~1_combout\,
	datab => \fu_controlunit|Equal5~7_combout\,
	datac => \fu_controlunit|Equal2~0_combout\,
	datad => \fu_controlunit|Equal5~8_combout\,
	combout => \fu_controlunit|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y23_N4
\fu_controlunit|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector0~1_combout\ = (\fu_controlunit|Selector0~0_combout\) # ((\fu_controlunit|CurrentState~7_combout\ & \fu_controlunit|CurrentState\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState~7_combout\,
	datac => \fu_controlunit|CurrentState\(3),
	datad => \fu_controlunit|Selector0~0_combout\,
	combout => \fu_controlunit|Selector0~1_combout\);

-- Location: FF_X22_Y23_N5
\fu_controlunit|CurrentState[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|CurrentState\(3));

-- Location: LCCOMB_X22_Y23_N30
\fu_controlunit|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~1_combout\ = (!\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(2) & \fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|Equal5~1_combout\);

-- Location: FF_X22_Y23_N31
\fu_controlunit|WriteMem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|WriteMem~q\);

-- Location: LCCOMB_X19_Y22_N4
MEM_writeenable : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_writeenable~combout\ = (\fu_controlunit|WriteMem~q\ & !\fu_controlunit|ReadMem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_controlunit|WriteMem~q\,
	datad => \fu_controlunit|ReadMem~q\,
	combout => \MEM_writeenable~combout\);

-- Location: FF_X21_Y21_N13
\fu_mdr|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_memory|altsyncram_component|auto_generated|q_a\(3),
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_mdr|q\(3));

-- Location: LCCOMB_X20_Y23_N12
\fu_controlunit|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal4~1_combout\ = (!\fu_mdr|q\(3) & (!\fu_mdr|q\(5) & (!\fu_mdr|q\(4) & !\fu_mdr|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(3),
	datab => \fu_mdr|q\(5),
	datac => \fu_mdr|q\(4),
	datad => \fu_mdr|q\(0),
	combout => \fu_controlunit|Equal4~1_combout\);

-- Location: LCCOMB_X21_Y23_N22
\fu_controlunit|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector2~2_combout\ = ((\fu_controlunit|Equal1~1_combout\) # (\fu_mdr|q\(1) $ (!\fu_mdr|q\(2)))) # (!\fu_controlunit|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Equal4~1_combout\,
	datab => \fu_mdr|q\(1),
	datac => \fu_mdr|q\(2),
	datad => \fu_controlunit|Equal1~1_combout\,
	combout => \fu_controlunit|Selector2~2_combout\);

-- Location: LCCOMB_X22_Y23_N20
\fu_controlunit|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector2~0_combout\ = (\fu_controlunit|Equal5~5_combout\) # ((\fu_controlunit|CurrentState\(1) & \fu_controlunit|CurrentState~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datac => \fu_controlunit|CurrentState~7_combout\,
	datad => \fu_controlunit|Equal5~5_combout\,
	combout => \fu_controlunit|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y23_N24
\fu_controlunit|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector2~1_combout\ = (\fu_controlunit|Equal5~8_combout\ & (((!\fu_mdr|q\(0)) # (!\fu_controlunit|Equal1~0_combout\)) # (!\fu_mdr|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_mdr|q\(3),
	datab => \fu_controlunit|Equal5~8_combout\,
	datac => \fu_controlunit|Equal1~0_combout\,
	datad => \fu_mdr|q\(0),
	combout => \fu_controlunit|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y23_N14
\fu_controlunit|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Selector2~3_combout\ = (\fu_controlunit|Selector2~0_combout\) # ((\fu_controlunit|Selector2~1_combout\) # ((\fu_controlunit|Selector2~2_combout\ & \fu_controlunit|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|Selector2~2_combout\,
	datab => \fu_controlunit|Equal5~7_combout\,
	datac => \fu_controlunit|Selector2~0_combout\,
	datad => \fu_controlunit|Selector2~1_combout\,
	combout => \fu_controlunit|Selector2~3_combout\);

-- Location: FF_X21_Y23_N15
\fu_controlunit|CurrentState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|CurrentState\(1));

-- Location: LCCOMB_X22_Y23_N0
\fu_controlunit|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~2_combout\ = (!\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(3) & (\fu_controlunit|CurrentState\(2) & !\fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|Equal5~2_combout\);

-- Location: FF_X22_Y23_N1
\fu_controlunit|MemtoReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|MemtoReg~q\);

-- Location: LCCOMB_X24_Y21_N14
\fu_mux2|muxout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_mux2|muxout[0]~0_combout\ = (\fu_controlunit|MemtoReg~q\ & (\fu_mdr|q\(0))) # (!\fu_controlunit|MemtoReg~q\ & ((\fu_aluout|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|MemtoReg~q\,
	datab => \fu_mdr|q\(0),
	datad => \fu_aluout|q\(0),
	combout => \fu_mux2|muxout[0]~0_combout\);

-- Location: LCCOMB_X31_Y25_N24
\fu_registerbank|registers[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][0]~feeder_combout\ = \fu_mux2|muxout[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[0]~0_combout\,
	combout => \fu_registerbank|registers[8][0]~feeder_combout\);

-- Location: FF_X31_Y25_N25
\fu_registerbank|registers[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][0]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][0]~q\);

-- Location: LCCOMB_X31_Y25_N2
\fu_registerbank|registers[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][2]~feeder_combout\ = \fu_mux2|muxout[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[2]~2_combout\,
	combout => \fu_registerbank|registers[8][2]~feeder_combout\);

-- Location: FF_X31_Y25_N3
\fu_registerbank|registers[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][2]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][2]~q\);

-- Location: LCCOMB_X31_Y25_N28
\fu_registerbank|registers[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][3]~feeder_combout\ = \fu_mux2|muxout[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[3]~3_combout\,
	combout => \fu_registerbank|registers[8][3]~feeder_combout\);

-- Location: FF_X31_Y25_N29
\fu_registerbank|registers[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][3]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][3]~q\);

-- Location: LCCOMB_X31_Y25_N22
\fu_registerbank|registers[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][4]~feeder_combout\ = \fu_mux2|muxout[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[4]~4_combout\,
	combout => \fu_registerbank|registers[8][4]~feeder_combout\);

-- Location: FF_X31_Y25_N23
\fu_registerbank|registers[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][4]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][4]~q\);

-- Location: LCCOMB_X31_Y25_N12
\fu_registerbank|registers[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][5]~feeder_combout\ = \fu_mux2|muxout[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[5]~5_combout\,
	combout => \fu_registerbank|registers[8][5]~feeder_combout\);

-- Location: FF_X31_Y25_N13
\fu_registerbank|registers[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][5]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][5]~q\);

-- Location: LCCOMB_X31_Y25_N26
\fu_registerbank|registers[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][6]~feeder_combout\ = \fu_mux2|muxout[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[6]~6_combout\,
	combout => \fu_registerbank|registers[8][6]~feeder_combout\);

-- Location: FF_X31_Y25_N27
\fu_registerbank|registers[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][6]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][6]~q\);

-- Location: LCCOMB_X40_Y21_N0
\fu_registerbank|registers[8][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][7]~feeder_combout\ = \fu_mux2|muxout[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[7]~7_combout\,
	combout => \fu_registerbank|registers[8][7]~feeder_combout\);

-- Location: FF_X40_Y21_N1
\fu_registerbank|registers[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][7]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][7]~q\);

-- Location: LCCOMB_X40_Y21_N22
\fu_registerbank|registers[8][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][8]~feeder_combout\ = \fu_mux2|muxout[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[8]~8_combout\,
	combout => \fu_registerbank|registers[8][8]~feeder_combout\);

-- Location: FF_X40_Y21_N23
\fu_registerbank|registers[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][8]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][8]~q\);

-- Location: LCCOMB_X37_Y25_N16
\fu_registerbank|registers[8][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][9]~feeder_combout\ = \fu_mux2|muxout[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[9]~9_combout\,
	combout => \fu_registerbank|registers[8][9]~feeder_combout\);

-- Location: FF_X37_Y25_N17
\fu_registerbank|registers[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][9]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][9]~q\);

-- Location: LCCOMB_X37_Y25_N10
\fu_registerbank|registers[8][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][10]~feeder_combout\ = \fu_mux2|muxout[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[10]~10_combout\,
	combout => \fu_registerbank|registers[8][10]~feeder_combout\);

-- Location: FF_X37_Y25_N11
\fu_registerbank|registers[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][10]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][10]~q\);

-- Location: LCCOMB_X37_Y25_N4
\fu_registerbank|registers[8][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][11]~feeder_combout\ = \fu_mux2|muxout[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[11]~11_combout\,
	combout => \fu_registerbank|registers[8][11]~feeder_combout\);

-- Location: FF_X37_Y25_N5
\fu_registerbank|registers[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][11]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][11]~q\);

-- Location: LCCOMB_X37_Y25_N2
\fu_registerbank|registers[8][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][12]~feeder_combout\ = \fu_mux2|muxout[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[12]~12_combout\,
	combout => \fu_registerbank|registers[8][12]~feeder_combout\);

-- Location: FF_X37_Y25_N3
\fu_registerbank|registers[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][12]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][12]~q\);

-- Location: LCCOMB_X37_Y25_N28
\fu_registerbank|registers[8][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][13]~feeder_combout\ = \fu_mux2|muxout[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[13]~13_combout\,
	combout => \fu_registerbank|registers[8][13]~feeder_combout\);

-- Location: FF_X37_Y25_N29
\fu_registerbank|registers[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][13]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][13]~q\);

-- Location: LCCOMB_X37_Y25_N26
\fu_registerbank|registers[8][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][14]~feeder_combout\ = \fu_mux2|muxout[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[14]~14_combout\,
	combout => \fu_registerbank|registers[8][14]~feeder_combout\);

-- Location: FF_X37_Y25_N27
\fu_registerbank|registers[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][14]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][14]~q\);

-- Location: LCCOMB_X37_Y25_N24
\fu_registerbank|registers[8][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][15]~feeder_combout\ = \fu_mux2|muxout[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[15]~15_combout\,
	combout => \fu_registerbank|registers[8][15]~feeder_combout\);

-- Location: FF_X37_Y25_N25
\fu_registerbank|registers[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][15]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][15]~q\);

-- Location: LCCOMB_X37_Y25_N22
\fu_registerbank|registers[8][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][16]~feeder_combout\ = \fu_mux2|muxout[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[16]~16_combout\,
	combout => \fu_registerbank|registers[8][16]~feeder_combout\);

-- Location: FF_X37_Y25_N23
\fu_registerbank|registers[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][16]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][16]~q\);

-- Location: LCCOMB_X40_Y20_N28
\fu_registerbank|registers[8][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][17]~feeder_combout\ = \fu_mux2|muxout[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[17]~17_combout\,
	combout => \fu_registerbank|registers[8][17]~feeder_combout\);

-- Location: FF_X40_Y20_N29
\fu_registerbank|registers[8][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][17]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][17]~q\);

-- Location: LCCOMB_X40_Y20_N6
\fu_registerbank|registers[8][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][18]~feeder_combout\ = \fu_mux2|muxout[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[18]~18_combout\,
	combout => \fu_registerbank|registers[8][18]~feeder_combout\);

-- Location: FF_X40_Y20_N7
\fu_registerbank|registers[8][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][18]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][18]~q\);

-- Location: LCCOMB_X40_Y20_N12
\fu_registerbank|registers[8][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][19]~feeder_combout\ = \fu_mux2|muxout[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[19]~19_combout\,
	combout => \fu_registerbank|registers[8][19]~feeder_combout\);

-- Location: FF_X40_Y20_N13
\fu_registerbank|registers[8][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][19]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][19]~q\);

-- Location: LCCOMB_X40_Y20_N2
\fu_registerbank|registers[8][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][20]~feeder_combout\ = \fu_mux2|muxout[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[20]~20_combout\,
	combout => \fu_registerbank|registers[8][20]~feeder_combout\);

-- Location: FF_X40_Y20_N3
\fu_registerbank|registers[8][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][20]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][20]~q\);

-- Location: LCCOMB_X40_Y20_N8
\fu_registerbank|registers[8][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][21]~feeder_combout\ = \fu_mux2|muxout[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[21]~21_combout\,
	combout => \fu_registerbank|registers[8][21]~feeder_combout\);

-- Location: FF_X40_Y20_N9
\fu_registerbank|registers[8][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][21]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][21]~q\);

-- Location: LCCOMB_X40_Y20_N18
\fu_registerbank|registers[8][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][22]~feeder_combout\ = \fu_mux2|muxout[22]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[22]~22_combout\,
	combout => \fu_registerbank|registers[8][22]~feeder_combout\);

-- Location: FF_X40_Y20_N19
\fu_registerbank|registers[8][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][22]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][22]~q\);

-- Location: LCCOMB_X40_Y20_N4
\fu_registerbank|registers[8][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][23]~feeder_combout\ = \fu_mux2|muxout[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[23]~23_combout\,
	combout => \fu_registerbank|registers[8][23]~feeder_combout\);

-- Location: FF_X40_Y20_N5
\fu_registerbank|registers[8][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][23]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][23]~q\);

-- Location: LCCOMB_X40_Y20_N14
\fu_registerbank|registers[8][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][24]~feeder_combout\ = \fu_mux2|muxout[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[24]~24_combout\,
	combout => \fu_registerbank|registers[8][24]~feeder_combout\);

-- Location: FF_X40_Y20_N15
\fu_registerbank|registers[8][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][24]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][24]~q\);

-- Location: LCCOMB_X31_Y25_N16
\fu_registerbank|registers[8][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][25]~feeder_combout\ = \fu_mux2|muxout[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[25]~25_combout\,
	combout => \fu_registerbank|registers[8][25]~feeder_combout\);

-- Location: FF_X31_Y25_N17
\fu_registerbank|registers[8][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][25]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][25]~q\);

-- Location: LCCOMB_X40_Y21_N24
\fu_registerbank|registers[8][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][26]~feeder_combout\ = \fu_mux2|muxout[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[26]~26_combout\,
	combout => \fu_registerbank|registers[8][26]~feeder_combout\);

-- Location: FF_X40_Y21_N25
\fu_registerbank|registers[8][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][26]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][26]~q\);

-- Location: LCCOMB_X40_Y21_N30
\fu_registerbank|registers[8][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][27]~feeder_combout\ = \fu_mux2|muxout[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[27]~27_combout\,
	combout => \fu_registerbank|registers[8][27]~feeder_combout\);

-- Location: FF_X40_Y21_N31
\fu_registerbank|registers[8][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][27]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][27]~q\);

-- Location: LCCOMB_X40_Y21_N20
\fu_registerbank|registers[8][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][28]~feeder_combout\ = \fu_mux2|muxout[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[28]~28_combout\,
	combout => \fu_registerbank|registers[8][28]~feeder_combout\);

-- Location: FF_X40_Y21_N21
\fu_registerbank|registers[8][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][28]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][28]~q\);

-- Location: LCCOMB_X40_Y21_N26
\fu_registerbank|registers[8][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][29]~feeder_combout\ = \fu_mux2|muxout[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[29]~29_combout\,
	combout => \fu_registerbank|registers[8][29]~feeder_combout\);

-- Location: FF_X40_Y21_N27
\fu_registerbank|registers[8][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][29]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][29]~q\);

-- Location: LCCOMB_X40_Y21_N4
\fu_registerbank|registers[8][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][30]~feeder_combout\ = \fu_mux2|muxout[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[30]~30_combout\,
	combout => \fu_registerbank|registers[8][30]~feeder_combout\);

-- Location: FF_X40_Y21_N5
\fu_registerbank|registers[8][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][30]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][30]~q\);

-- Location: LCCOMB_X40_Y21_N14
\fu_registerbank|registers[8][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[8][31]~feeder_combout\ = \fu_mux2|muxout[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[31]~31_combout\,
	combout => \fu_registerbank|registers[8][31]~feeder_combout\);

-- Location: FF_X40_Y21_N15
\fu_registerbank|registers[8][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[8][31]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[8][31]~q\);

-- Location: LCCOMB_X31_Y25_N18
\fu_registerbank|registers[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][0]~feeder_combout\ = \fu_mux2|muxout[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[0]~0_combout\,
	combout => \fu_registerbank|registers[9][0]~feeder_combout\);

-- Location: FF_X31_Y25_N19
\fu_registerbank|registers[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][0]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][0]~q\);

-- Location: LCCOMB_X31_Y25_N8
\fu_registerbank|registers[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][2]~feeder_combout\ = \fu_mux2|muxout[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[2]~2_combout\,
	combout => \fu_registerbank|registers[9][2]~feeder_combout\);

-- Location: FF_X31_Y25_N9
\fu_registerbank|registers[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][2]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][2]~q\);

-- Location: LCCOMB_X31_Y25_N30
\fu_registerbank|registers[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][3]~feeder_combout\ = \fu_mux2|muxout[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[3]~3_combout\,
	combout => \fu_registerbank|registers[9][3]~feeder_combout\);

-- Location: FF_X31_Y25_N31
\fu_registerbank|registers[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][3]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][3]~q\);

-- Location: LCCOMB_X31_Y25_N0
\fu_registerbank|registers[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][4]~feeder_combout\ = \fu_mux2|muxout[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[4]~4_combout\,
	combout => \fu_registerbank|registers[9][4]~feeder_combout\);

-- Location: FF_X31_Y25_N1
\fu_registerbank|registers[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][4]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][4]~q\);

-- Location: LCCOMB_X31_Y25_N10
\fu_registerbank|registers[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][5]~feeder_combout\ = \fu_mux2|muxout[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[5]~5_combout\,
	combout => \fu_registerbank|registers[9][5]~feeder_combout\);

-- Location: FF_X31_Y25_N11
\fu_registerbank|registers[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][5]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][5]~q\);

-- Location: LCCOMB_X31_Y25_N20
\fu_registerbank|registers[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][6]~feeder_combout\ = \fu_mux2|muxout[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[6]~6_combout\,
	combout => \fu_registerbank|registers[9][6]~feeder_combout\);

-- Location: FF_X31_Y25_N21
\fu_registerbank|registers[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][6]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][6]~q\);

-- Location: LCCOMB_X40_Y21_N8
\fu_registerbank|registers[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][7]~feeder_combout\ = \fu_mux2|muxout[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[7]~7_combout\,
	combout => \fu_registerbank|registers[9][7]~feeder_combout\);

-- Location: FF_X40_Y21_N9
\fu_registerbank|registers[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][7]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][7]~q\);

-- Location: LCCOMB_X40_Y21_N18
\fu_registerbank|registers[9][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][8]~feeder_combout\ = \fu_mux2|muxout[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[8]~8_combout\,
	combout => \fu_registerbank|registers[9][8]~feeder_combout\);

-- Location: FF_X40_Y21_N19
\fu_registerbank|registers[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][8]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][8]~q\);

-- Location: LCCOMB_X37_Y25_N20
\fu_registerbank|registers[9][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][9]~feeder_combout\ = \fu_mux2|muxout[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[9]~9_combout\,
	combout => \fu_registerbank|registers[9][9]~feeder_combout\);

-- Location: FF_X37_Y25_N21
\fu_registerbank|registers[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][9]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][9]~q\);

-- Location: LCCOMB_X37_Y25_N18
\fu_registerbank|registers[9][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][10]~feeder_combout\ = \fu_mux2|muxout[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[10]~10_combout\,
	combout => \fu_registerbank|registers[9][10]~feeder_combout\);

-- Location: FF_X37_Y25_N19
\fu_registerbank|registers[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][10]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][10]~q\);

-- Location: LCCOMB_X37_Y25_N8
\fu_registerbank|registers[9][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][11]~feeder_combout\ = \fu_mux2|muxout[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[11]~11_combout\,
	combout => \fu_registerbank|registers[9][11]~feeder_combout\);

-- Location: FF_X37_Y25_N9
\fu_registerbank|registers[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][11]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][11]~q\);

-- Location: LCCOMB_X37_Y25_N14
\fu_registerbank|registers[9][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][12]~feeder_combout\ = \fu_mux2|muxout[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[12]~12_combout\,
	combout => \fu_registerbank|registers[9][12]~feeder_combout\);

-- Location: FF_X37_Y25_N15
\fu_registerbank|registers[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][12]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][12]~q\);

-- Location: LCCOMB_X37_Y25_N12
\fu_registerbank|registers[9][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][13]~feeder_combout\ = \fu_mux2|muxout[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[13]~13_combout\,
	combout => \fu_registerbank|registers[9][13]~feeder_combout\);

-- Location: FF_X37_Y25_N13
\fu_registerbank|registers[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][13]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][13]~q\);

-- Location: LCCOMB_X37_Y25_N6
\fu_registerbank|registers[9][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][14]~feeder_combout\ = \fu_mux2|muxout[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[14]~14_combout\,
	combout => \fu_registerbank|registers[9][14]~feeder_combout\);

-- Location: FF_X37_Y25_N7
\fu_registerbank|registers[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][14]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][14]~q\);

-- Location: LCCOMB_X37_Y25_N0
\fu_registerbank|registers[9][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][15]~feeder_combout\ = \fu_mux2|muxout[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[15]~15_combout\,
	combout => \fu_registerbank|registers[9][15]~feeder_combout\);

-- Location: FF_X37_Y25_N1
\fu_registerbank|registers[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][15]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][15]~q\);

-- Location: LCCOMB_X37_Y25_N30
\fu_registerbank|registers[9][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][16]~feeder_combout\ = \fu_mux2|muxout[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[16]~16_combout\,
	combout => \fu_registerbank|registers[9][16]~feeder_combout\);

-- Location: FF_X37_Y25_N31
\fu_registerbank|registers[9][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][16]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][16]~q\);

-- Location: LCCOMB_X40_Y20_N0
\fu_registerbank|registers[9][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][17]~feeder_combout\ = \fu_mux2|muxout[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[17]~17_combout\,
	combout => \fu_registerbank|registers[9][17]~feeder_combout\);

-- Location: FF_X40_Y20_N1
\fu_registerbank|registers[9][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][17]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][17]~q\);

-- Location: LCCOMB_X40_Y20_N22
\fu_registerbank|registers[9][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][18]~feeder_combout\ = \fu_mux2|muxout[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[18]~18_combout\,
	combout => \fu_registerbank|registers[9][18]~feeder_combout\);

-- Location: FF_X40_Y20_N23
\fu_registerbank|registers[9][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][18]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][18]~q\);

-- Location: LCCOMB_X40_Y20_N20
\fu_registerbank|registers[9][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][19]~feeder_combout\ = \fu_mux2|muxout[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[19]~19_combout\,
	combout => \fu_registerbank|registers[9][19]~feeder_combout\);

-- Location: FF_X40_Y20_N21
\fu_registerbank|registers[9][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][19]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][19]~q\);

-- Location: LCCOMB_X40_Y20_N10
\fu_registerbank|registers[9][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][20]~feeder_combout\ = \fu_mux2|muxout[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[20]~20_combout\,
	combout => \fu_registerbank|registers[9][20]~feeder_combout\);

-- Location: FF_X40_Y20_N11
\fu_registerbank|registers[9][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][20]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][20]~q\);

-- Location: LCCOMB_X40_Y20_N24
\fu_registerbank|registers[9][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][21]~feeder_combout\ = \fu_mux2|muxout[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[21]~21_combout\,
	combout => \fu_registerbank|registers[9][21]~feeder_combout\);

-- Location: FF_X40_Y20_N25
\fu_registerbank|registers[9][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][21]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][21]~q\);

-- Location: LCCOMB_X40_Y20_N30
\fu_registerbank|registers[9][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][22]~feeder_combout\ = \fu_mux2|muxout[22]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[22]~22_combout\,
	combout => \fu_registerbank|registers[9][22]~feeder_combout\);

-- Location: FF_X40_Y20_N31
\fu_registerbank|registers[9][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][22]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][22]~q\);

-- Location: LCCOMB_X40_Y20_N16
\fu_registerbank|registers[9][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][23]~feeder_combout\ = \fu_mux2|muxout[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[23]~23_combout\,
	combout => \fu_registerbank|registers[9][23]~feeder_combout\);

-- Location: FF_X40_Y20_N17
\fu_registerbank|registers[9][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][23]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][23]~q\);

-- Location: LCCOMB_X40_Y20_N26
\fu_registerbank|registers[9][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][24]~feeder_combout\ = \fu_mux2|muxout[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[24]~24_combout\,
	combout => \fu_registerbank|registers[9][24]~feeder_combout\);

-- Location: FF_X40_Y20_N27
\fu_registerbank|registers[9][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][24]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][24]~q\);

-- Location: LCCOMB_X31_Y25_N14
\fu_registerbank|registers[9][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][25]~feeder_combout\ = \fu_mux2|muxout[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[25]~25_combout\,
	combout => \fu_registerbank|registers[9][25]~feeder_combout\);

-- Location: FF_X31_Y25_N15
\fu_registerbank|registers[9][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][25]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][25]~q\);

-- Location: LCCOMB_X40_Y21_N16
\fu_registerbank|registers[9][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][26]~feeder_combout\ = \fu_mux2|muxout[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[26]~26_combout\,
	combout => \fu_registerbank|registers[9][26]~feeder_combout\);

-- Location: FF_X40_Y21_N17
\fu_registerbank|registers[9][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][26]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][26]~q\);

-- Location: LCCOMB_X40_Y21_N10
\fu_registerbank|registers[9][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][27]~feeder_combout\ = \fu_mux2|muxout[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[27]~27_combout\,
	combout => \fu_registerbank|registers[9][27]~feeder_combout\);

-- Location: FF_X40_Y21_N11
\fu_registerbank|registers[9][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][27]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][27]~q\);

-- Location: LCCOMB_X40_Y21_N28
\fu_registerbank|registers[9][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][28]~feeder_combout\ = \fu_mux2|muxout[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[28]~28_combout\,
	combout => \fu_registerbank|registers[9][28]~feeder_combout\);

-- Location: FF_X40_Y21_N29
\fu_registerbank|registers[9][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][28]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][28]~q\);

-- Location: LCCOMB_X40_Y21_N2
\fu_registerbank|registers[9][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][29]~feeder_combout\ = \fu_mux2|muxout[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[29]~29_combout\,
	combout => \fu_registerbank|registers[9][29]~feeder_combout\);

-- Location: FF_X40_Y21_N3
\fu_registerbank|registers[9][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][29]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][29]~q\);

-- Location: LCCOMB_X40_Y21_N12
\fu_registerbank|registers[9][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][30]~feeder_combout\ = \fu_mux2|muxout[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[30]~30_combout\,
	combout => \fu_registerbank|registers[9][30]~feeder_combout\);

-- Location: FF_X40_Y21_N13
\fu_registerbank|registers[9][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][30]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][30]~q\);

-- Location: LCCOMB_X40_Y21_N6
\fu_registerbank|registers[9][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[9][31]~feeder_combout\ = \fu_mux2|muxout[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[31]~31_combout\,
	combout => \fu_registerbank|registers[9][31]~feeder_combout\);

-- Location: FF_X40_Y21_N7
\fu_registerbank|registers[9][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[9][31]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[9][31]~q\);

-- Location: LCCOMB_X37_Y21_N16
\fu_registerbank|registers[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][0]~feeder_combout\ = \fu_mux2|muxout[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[0]~0_combout\,
	combout => \fu_registerbank|registers[10][0]~feeder_combout\);

-- Location: FF_X37_Y21_N17
\fu_registerbank|registers[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][0]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][0]~q\);

-- Location: LCCOMB_X32_Y25_N12
\fu_registerbank|registers[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][2]~feeder_combout\ = \fu_mux2|muxout[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[2]~2_combout\,
	combout => \fu_registerbank|registers[10][2]~feeder_combout\);

-- Location: FF_X32_Y25_N13
\fu_registerbank|registers[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][2]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][2]~q\);

-- Location: LCCOMB_X29_Y22_N26
\fu_registerbank|registers[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][3]~feeder_combout\ = \fu_mux2|muxout[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[3]~3_combout\,
	combout => \fu_registerbank|registers[10][3]~feeder_combout\);

-- Location: FF_X29_Y22_N27
\fu_registerbank|registers[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][3]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][3]~q\);

-- Location: LCCOMB_X30_Y25_N4
\fu_registerbank|registers[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][4]~feeder_combout\ = \fu_mux2|muxout[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[4]~4_combout\,
	combout => \fu_registerbank|registers[10][4]~feeder_combout\);

-- Location: FF_X30_Y25_N5
\fu_registerbank|registers[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][4]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][4]~q\);

-- Location: LCCOMB_X30_Y25_N10
\fu_registerbank|registers[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][5]~feeder_combout\ = \fu_mux2|muxout[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[5]~5_combout\,
	combout => \fu_registerbank|registers[10][5]~feeder_combout\);

-- Location: FF_X30_Y25_N11
\fu_registerbank|registers[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][5]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][5]~q\);

-- Location: LCCOMB_X32_Y25_N10
\fu_registerbank|registers[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][6]~feeder_combout\ = \fu_mux2|muxout[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[6]~6_combout\,
	combout => \fu_registerbank|registers[10][6]~feeder_combout\);

-- Location: FF_X32_Y25_N11
\fu_registerbank|registers[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][6]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][6]~q\);

-- Location: LCCOMB_X37_Y21_N10
\fu_registerbank|registers[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][7]~feeder_combout\ = \fu_mux2|muxout[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[7]~7_combout\,
	combout => \fu_registerbank|registers[10][7]~feeder_combout\);

-- Location: FF_X37_Y21_N11
\fu_registerbank|registers[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][7]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][7]~q\);

-- Location: LCCOMB_X37_Y21_N0
\fu_registerbank|registers[10][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][8]~feeder_combout\ = \fu_mux2|muxout[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[8]~8_combout\,
	combout => \fu_registerbank|registers[10][8]~feeder_combout\);

-- Location: FF_X37_Y21_N1
\fu_registerbank|registers[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][8]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][8]~q\);

-- Location: LCCOMB_X32_Y25_N4
\fu_registerbank|registers[10][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][9]~feeder_combout\ = \fu_mux2|muxout[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[9]~9_combout\,
	combout => \fu_registerbank|registers[10][9]~feeder_combout\);

-- Location: FF_X32_Y25_N5
\fu_registerbank|registers[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][9]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][9]~q\);

-- Location: LCCOMB_X36_Y25_N28
\fu_registerbank|registers[10][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][10]~feeder_combout\ = \fu_mux2|muxout[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[10]~10_combout\,
	combout => \fu_registerbank|registers[10][10]~feeder_combout\);

-- Location: FF_X36_Y25_N29
\fu_registerbank|registers[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][10]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][10]~q\);

-- Location: LCCOMB_X30_Y25_N8
\fu_registerbank|registers[10][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][11]~feeder_combout\ = \fu_mux2|muxout[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[11]~11_combout\,
	combout => \fu_registerbank|registers[10][11]~feeder_combout\);

-- Location: FF_X30_Y25_N9
\fu_registerbank|registers[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][11]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][11]~q\);

-- Location: LCCOMB_X37_Y21_N14
\fu_registerbank|registers[10][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][12]~feeder_combout\ = \fu_mux2|muxout[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[12]~12_combout\,
	combout => \fu_registerbank|registers[10][12]~feeder_combout\);

-- Location: FF_X37_Y21_N15
\fu_registerbank|registers[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][12]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][12]~q\);

-- Location: LCCOMB_X37_Y21_N20
\fu_registerbank|registers[10][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][13]~feeder_combout\ = \fu_mux2|muxout[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[13]~13_combout\,
	combout => \fu_registerbank|registers[10][13]~feeder_combout\);

-- Location: FF_X37_Y21_N21
\fu_registerbank|registers[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][13]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][13]~q\);

-- Location: LCCOMB_X30_Y25_N6
\fu_registerbank|registers[10][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][14]~feeder_combout\ = \fu_mux2|muxout[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[14]~14_combout\,
	combout => \fu_registerbank|registers[10][14]~feeder_combout\);

-- Location: FF_X30_Y25_N7
\fu_registerbank|registers[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][14]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][14]~q\);

-- Location: LCCOMB_X30_Y25_N12
\fu_registerbank|registers[10][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][15]~feeder_combout\ = \fu_mux2|muxout[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[15]~15_combout\,
	combout => \fu_registerbank|registers[10][15]~feeder_combout\);

-- Location: FF_X30_Y25_N13
\fu_registerbank|registers[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][15]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][15]~q\);

-- Location: LCCOMB_X30_Y25_N2
\fu_registerbank|registers[10][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][16]~feeder_combout\ = \fu_mux2|muxout[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[16]~16_combout\,
	combout => \fu_registerbank|registers[10][16]~feeder_combout\);

-- Location: FF_X30_Y25_N3
\fu_registerbank|registers[10][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][16]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][16]~q\);

-- Location: LCCOMB_X29_Y22_N28
\fu_registerbank|registers[10][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][17]~feeder_combout\ = \fu_mux2|muxout[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[17]~17_combout\,
	combout => \fu_registerbank|registers[10][17]~feeder_combout\);

-- Location: FF_X29_Y22_N29
\fu_registerbank|registers[10][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][17]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][17]~q\);

-- Location: LCCOMB_X37_Y21_N30
\fu_registerbank|registers[10][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][18]~feeder_combout\ = \fu_mux2|muxout[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[18]~18_combout\,
	combout => \fu_registerbank|registers[10][18]~feeder_combout\);

-- Location: FF_X37_Y21_N31
\fu_registerbank|registers[10][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][18]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][18]~q\);

-- Location: LCCOMB_X37_Y21_N12
\fu_registerbank|registers[10][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][19]~feeder_combout\ = \fu_mux2|muxout[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[19]~19_combout\,
	combout => \fu_registerbank|registers[10][19]~feeder_combout\);

-- Location: FF_X37_Y21_N13
\fu_registerbank|registers[10][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][19]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][19]~q\);

-- Location: LCCOMB_X37_Y21_N18
\fu_registerbank|registers[10][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][20]~feeder_combout\ = \fu_mux2|muxout[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[20]~20_combout\,
	combout => \fu_registerbank|registers[10][20]~feeder_combout\);

-- Location: FF_X37_Y21_N19
\fu_registerbank|registers[10][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][20]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][20]~q\);

-- Location: LCCOMB_X37_Y21_N8
\fu_registerbank|registers[10][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][21]~feeder_combout\ = \fu_mux2|muxout[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[21]~21_combout\,
	combout => \fu_registerbank|registers[10][21]~feeder_combout\);

-- Location: FF_X37_Y21_N9
\fu_registerbank|registers[10][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][21]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][21]~q\);

-- Location: LCCOMB_X30_Y25_N20
\fu_registerbank|registers[10][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][22]~feeder_combout\ = \fu_mux2|muxout[22]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[22]~22_combout\,
	combout => \fu_registerbank|registers[10][22]~feeder_combout\);

-- Location: FF_X30_Y25_N21
\fu_registerbank|registers[10][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][22]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][22]~q\);

-- Location: LCCOMB_X37_Y21_N26
\fu_registerbank|registers[10][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][23]~feeder_combout\ = \fu_mux2|muxout[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[23]~23_combout\,
	combout => \fu_registerbank|registers[10][23]~feeder_combout\);

-- Location: FF_X37_Y21_N27
\fu_registerbank|registers[10][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][23]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][23]~q\);

-- Location: LCCOMB_X30_Y25_N18
\fu_registerbank|registers[10][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][24]~feeder_combout\ = \fu_mux2|muxout[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[24]~24_combout\,
	combout => \fu_registerbank|registers[10][24]~feeder_combout\);

-- Location: FF_X30_Y25_N19
\fu_registerbank|registers[10][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][24]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][24]~q\);

-- Location: LCCOMB_X35_Y21_N8
\fu_registerbank|registers[10][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][25]~feeder_combout\ = \fu_mux2|muxout[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[25]~25_combout\,
	combout => \fu_registerbank|registers[10][25]~feeder_combout\);

-- Location: FF_X35_Y21_N9
\fu_registerbank|registers[10][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][25]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][25]~q\);

-- Location: LCCOMB_X37_Y21_N28
\fu_registerbank|registers[10][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][26]~feeder_combout\ = \fu_mux2|muxout[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[26]~26_combout\,
	combout => \fu_registerbank|registers[10][26]~feeder_combout\);

-- Location: FF_X37_Y21_N29
\fu_registerbank|registers[10][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][26]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][26]~q\);

-- Location: LCCOMB_X37_Y21_N22
\fu_registerbank|registers[10][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][27]~feeder_combout\ = \fu_mux2|muxout[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[27]~27_combout\,
	combout => \fu_registerbank|registers[10][27]~feeder_combout\);

-- Location: FF_X37_Y21_N23
\fu_registerbank|registers[10][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][27]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][27]~q\);

-- Location: LCCOMB_X29_Y22_N30
\fu_registerbank|registers[10][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][28]~feeder_combout\ = \fu_mux2|muxout[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[28]~28_combout\,
	combout => \fu_registerbank|registers[10][28]~feeder_combout\);

-- Location: FF_X29_Y22_N31
\fu_registerbank|registers[10][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][28]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][28]~q\);

-- Location: LCCOMB_X37_Y21_N4
\fu_registerbank|registers[10][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][29]~feeder_combout\ = \fu_mux2|muxout[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[29]~29_combout\,
	combout => \fu_registerbank|registers[10][29]~feeder_combout\);

-- Location: FF_X37_Y21_N5
\fu_registerbank|registers[10][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][29]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][29]~q\);

-- Location: LCCOMB_X35_Y21_N14
\fu_registerbank|registers[10][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][30]~feeder_combout\ = \fu_mux2|muxout[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[30]~30_combout\,
	combout => \fu_registerbank|registers[10][30]~feeder_combout\);

-- Location: FF_X35_Y21_N15
\fu_registerbank|registers[10][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][30]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][30]~q\);

-- Location: LCCOMB_X32_Y25_N2
\fu_registerbank|registers[10][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[10][31]~feeder_combout\ = \fu_mux2|muxout[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[31]~31_combout\,
	combout => \fu_registerbank|registers[10][31]~feeder_combout\);

-- Location: FF_X32_Y25_N3
\fu_registerbank|registers[10][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[10][31]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[10][31]~q\);

-- Location: LCCOMB_X26_Y23_N24
\fu_registerbank|registers[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][0]~feeder_combout\ = \fu_mux2|muxout[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[0]~0_combout\,
	combout => \fu_registerbank|registers[11][0]~feeder_combout\);

-- Location: FF_X26_Y23_N25
\fu_registerbank|registers[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][0]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][0]~q\);

-- Location: LCCOMB_X22_Y22_N4
\fu_registerbank|registers[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][2]~feeder_combout\ = \fu_mux2|muxout[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[2]~2_combout\,
	combout => \fu_registerbank|registers[11][2]~feeder_combout\);

-- Location: FF_X22_Y22_N5
\fu_registerbank|registers[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][2]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][2]~q\);

-- Location: FF_X23_Y22_N23
\fu_registerbank|registers[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[3]~3_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][3]~q\);

-- Location: FF_X22_Y22_N3
\fu_registerbank|registers[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[4]~4_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][4]~q\);

-- Location: LCCOMB_X24_Y22_N0
\fu_registerbank|registers[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][5]~feeder_combout\ = \fu_mux2|muxout[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[5]~5_combout\,
	combout => \fu_registerbank|registers[11][5]~feeder_combout\);

-- Location: FF_X24_Y22_N1
\fu_registerbank|registers[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][5]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][5]~q\);

-- Location: FF_X21_Y22_N31
\fu_registerbank|registers[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[6]~6_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][6]~q\);

-- Location: FF_X24_Y22_N15
\fu_registerbank|registers[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[7]~7_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][7]~q\);

-- Location: FF_X21_Y22_N17
\fu_registerbank|registers[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[8]~8_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][8]~q\);

-- Location: FF_X24_Y22_N25
\fu_registerbank|registers[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[9]~9_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][9]~q\);

-- Location: FF_X21_Y22_N19
\fu_registerbank|registers[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[10]~10_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][10]~q\);

-- Location: LCCOMB_X26_Y20_N18
\fu_registerbank|registers[11][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][11]~feeder_combout\ = \fu_mux2|muxout[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[11]~11_combout\,
	combout => \fu_registerbank|registers[11][11]~feeder_combout\);

-- Location: FF_X26_Y20_N19
\fu_registerbank|registers[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][11]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][11]~q\);

-- Location: FF_X23_Y20_N23
\fu_registerbank|registers[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[12]~12_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][12]~q\);

-- Location: FF_X26_Y20_N1
\fu_registerbank|registers[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[13]~13_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][13]~q\);

-- Location: FF_X23_Y20_N1
\fu_registerbank|registers[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[14]~14_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][14]~q\);

-- Location: FF_X26_Y20_N27
\fu_registerbank|registers[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[15]~15_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][15]~q\);

-- Location: FF_X23_Y20_N15
\fu_registerbank|registers[11][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[16]~16_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][16]~q\);

-- Location: FF_X21_Y20_N15
\fu_registerbank|registers[11][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[17]~17_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][17]~q\);

-- Location: LCCOMB_X26_Y22_N2
\fu_registerbank|registers[11][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][18]~feeder_combout\ = \fu_mux2|muxout[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[18]~18_combout\,
	combout => \fu_registerbank|registers[11][18]~feeder_combout\);

-- Location: FF_X26_Y22_N3
\fu_registerbank|registers[11][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][18]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][18]~q\);

-- Location: LCCOMB_X27_Y19_N0
\fu_registerbank|registers[11][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][19]~feeder_combout\ = \fu_mux2|muxout[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fu_mux2|muxout[19]~19_combout\,
	combout => \fu_registerbank|registers[11][19]~feeder_combout\);

-- Location: FF_X27_Y19_N1
\fu_registerbank|registers[11][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][19]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][19]~q\);

-- Location: LCCOMB_X23_Y23_N10
\fu_registerbank|registers[11][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][20]~feeder_combout\ = \fu_mux2|muxout[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[20]~20_combout\,
	combout => \fu_registerbank|registers[11][20]~feeder_combout\);

-- Location: FF_X23_Y23_N11
\fu_registerbank|registers[11][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][20]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][20]~q\);

-- Location: FF_X21_Y20_N29
\fu_registerbank|registers[11][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[21]~21_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][21]~q\);

-- Location: FF_X23_Y19_N9
\fu_registerbank|registers[11][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[22]~22_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][22]~q\);

-- Location: FF_X27_Y19_N23
\fu_registerbank|registers[11][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_mux2|muxout[23]~23_combout\,
	sload => VCC,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][23]~q\);

-- Location: FF_X22_Y22_N29
\fu_registerbank|registers[11][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[24]~24_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][24]~q\);

-- Location: LCCOMB_X27_Y19_N12
\fu_registerbank|registers[11][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][25]~feeder_combout\ = \fu_mux2|muxout[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[25]~25_combout\,
	combout => \fu_registerbank|registers[11][25]~feeder_combout\);

-- Location: FF_X27_Y19_N13
\fu_registerbank|registers[11][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][25]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][25]~q\);

-- Location: LCCOMB_X27_Y19_N14
\fu_registerbank|registers[11][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][26]~feeder_combout\ = \fu_mux2|muxout[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[26]~26_combout\,
	combout => \fu_registerbank|registers[11][26]~feeder_combout\);

-- Location: FF_X27_Y19_N15
\fu_registerbank|registers[11][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][26]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][26]~q\);

-- Location: FF_X23_Y23_N9
\fu_registerbank|registers[11][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[27]~27_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][27]~q\);

-- Location: FF_X27_Y19_N21
\fu_registerbank|registers[11][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fu_mux2|muxout[28]~28_combout\,
	sload => VCC,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][28]~q\);

-- Location: LCCOMB_X27_Y19_N30
\fu_registerbank|registers[11][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][29]~feeder_combout\ = \fu_mux2|muxout[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[29]~29_combout\,
	combout => \fu_registerbank|registers[11][29]~feeder_combout\);

-- Location: FF_X27_Y19_N31
\fu_registerbank|registers[11][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][29]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][29]~q\);

-- Location: LCCOMB_X27_Y19_N4
\fu_registerbank|registers[11][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_registerbank|registers[11][30]~feeder_combout\ = \fu_mux2|muxout[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fu_mux2|muxout[30]~30_combout\,
	combout => \fu_registerbank|registers[11][30]~feeder_combout\);

-- Location: FF_X27_Y19_N5
\fu_registerbank|registers[11][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_registerbank|registers[11][30]~feeder_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][30]~q\);

-- Location: FF_X23_Y19_N11
\fu_registerbank|registers[11][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_mux2|muxout[31]~31_combout\,
	ena => \fu_registerbank|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_registerbank|registers[11][31]~q\);

-- Location: FF_X24_Y21_N9
\fu_controlunit|WritePCCond\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|WritePCCond~q\);

-- Location: LCCOMB_X21_Y23_N16
\fu_controlunit|WritePC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|WritePC~0_combout\ = (!\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(2) & (\fu_controlunit|CurrentState\(0) $ (!\fu_controlunit|CurrentState\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(2),
	datac => \fu_controlunit|CurrentState\(0),
	datad => \fu_controlunit|CurrentState\(3),
	combout => \fu_controlunit|WritePC~0_combout\);

-- Location: FF_X21_Y23_N17
\fu_controlunit|WritePC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|WritePC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|WritePC~q\);

-- Location: LCCOMB_X22_Y23_N18
\fu_controlunit|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fu_controlunit|Equal5~3_combout\ = (!\fu_controlunit|CurrentState\(1) & (!\fu_controlunit|CurrentState\(3) & (!\fu_controlunit|CurrentState\(2) & !\fu_controlunit|CurrentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fu_controlunit|CurrentState\(1),
	datab => \fu_controlunit|CurrentState\(3),
	datac => \fu_controlunit|CurrentState\(2),
	datad => \fu_controlunit|CurrentState\(0),
	combout => \fu_controlunit|Equal5~3_combout\);

-- Location: FF_X22_Y23_N19
\fu_controlunit|WriteIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fu_controlunit|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fu_controlunit|WriteIR~q\);

ww_debug1(0) <= \debug1[0]~output_o\;

ww_debug1(1) <= \debug1[1]~output_o\;

ww_debug1(2) <= \debug1[2]~output_o\;

ww_debug1(3) <= \debug1[3]~output_o\;

ww_debug1(4) <= \debug1[4]~output_o\;

ww_debug1(5) <= \debug1[5]~output_o\;

ww_debug1(6) <= \debug1[6]~output_o\;

ww_debug1(7) <= \debug1[7]~output_o\;

ww_debug1(8) <= \debug1[8]~output_o\;

ww_debug1(9) <= \debug1[9]~output_o\;

ww_debug1(10) <= \debug1[10]~output_o\;

ww_debug1(11) <= \debug1[11]~output_o\;

ww_debug1(12) <= \debug1[12]~output_o\;

ww_debug1(13) <= \debug1[13]~output_o\;

ww_debug1(14) <= \debug1[14]~output_o\;

ww_debug1(15) <= \debug1[15]~output_o\;

ww_debug1(16) <= \debug1[16]~output_o\;

ww_debug1(17) <= \debug1[17]~output_o\;

ww_debug1(18) <= \debug1[18]~output_o\;

ww_debug1(19) <= \debug1[19]~output_o\;

ww_debug1(20) <= \debug1[20]~output_o\;

ww_debug1(21) <= \debug1[21]~output_o\;

ww_debug1(22) <= \debug1[22]~output_o\;

ww_debug1(23) <= \debug1[23]~output_o\;

ww_debug1(24) <= \debug1[24]~output_o\;

ww_debug1(25) <= \debug1[25]~output_o\;

ww_debug1(26) <= \debug1[26]~output_o\;

ww_debug1(27) <= \debug1[27]~output_o\;

ww_debug1(28) <= \debug1[28]~output_o\;

ww_debug1(29) <= \debug1[29]~output_o\;

ww_debug1(30) <= \debug1[30]~output_o\;

ww_debug1(31) <= \debug1[31]~output_o\;

ww_debug2(0) <= \debug2[0]~output_o\;

ww_debug2(1) <= \debug2[1]~output_o\;

ww_debug2(2) <= \debug2[2]~output_o\;

ww_debug2(3) <= \debug2[3]~output_o\;

ww_debug2(4) <= \debug2[4]~output_o\;

ww_debug2(5) <= \debug2[5]~output_o\;

ww_debug2(6) <= \debug2[6]~output_o\;

ww_debug2(7) <= \debug2[7]~output_o\;

ww_debug2(8) <= \debug2[8]~output_o\;

ww_debug2(9) <= \debug2[9]~output_o\;

ww_debug2(10) <= \debug2[10]~output_o\;

ww_debug2(11) <= \debug2[11]~output_o\;

ww_debug2(12) <= \debug2[12]~output_o\;

ww_debug2(13) <= \debug2[13]~output_o\;

ww_debug2(14) <= \debug2[14]~output_o\;

ww_debug2(15) <= \debug2[15]~output_o\;

ww_debug2(16) <= \debug2[16]~output_o\;

ww_debug2(17) <= \debug2[17]~output_o\;

ww_debug2(18) <= \debug2[18]~output_o\;

ww_debug2(19) <= \debug2[19]~output_o\;

ww_debug2(20) <= \debug2[20]~output_o\;

ww_debug2(21) <= \debug2[21]~output_o\;

ww_debug2(22) <= \debug2[22]~output_o\;

ww_debug2(23) <= \debug2[23]~output_o\;

ww_debug2(24) <= \debug2[24]~output_o\;

ww_debug2(25) <= \debug2[25]~output_o\;

ww_debug2(26) <= \debug2[26]~output_o\;

ww_debug2(27) <= \debug2[27]~output_o\;

ww_debug2(28) <= \debug2[28]~output_o\;

ww_debug2(29) <= \debug2[29]~output_o\;

ww_debug2(30) <= \debug2[30]~output_o\;

ww_debug2(31) <= \debug2[31]~output_o\;

ww_debug3(0) <= \debug3[0]~output_o\;

ww_debug3(1) <= \debug3[1]~output_o\;

ww_debug3(2) <= \debug3[2]~output_o\;

ww_debug3(3) <= \debug3[3]~output_o\;

ww_debug3(4) <= \debug3[4]~output_o\;

ww_debug3(5) <= \debug3[5]~output_o\;

ww_debug3(6) <= \debug3[6]~output_o\;

ww_debug3(7) <= \debug3[7]~output_o\;

ww_debug3(8) <= \debug3[8]~output_o\;

ww_debug3(9) <= \debug3[9]~output_o\;

ww_debug3(10) <= \debug3[10]~output_o\;

ww_debug3(11) <= \debug3[11]~output_o\;

ww_debug3(12) <= \debug3[12]~output_o\;

ww_debug3(13) <= \debug3[13]~output_o\;

ww_debug3(14) <= \debug3[14]~output_o\;

ww_debug3(15) <= \debug3[15]~output_o\;

ww_debug3(16) <= \debug3[16]~output_o\;

ww_debug3(17) <= \debug3[17]~output_o\;

ww_debug3(18) <= \debug3[18]~output_o\;

ww_debug3(19) <= \debug3[19]~output_o\;

ww_debug3(20) <= \debug3[20]~output_o\;

ww_debug3(21) <= \debug3[21]~output_o\;

ww_debug3(22) <= \debug3[22]~output_o\;

ww_debug3(23) <= \debug3[23]~output_o\;

ww_debug3(24) <= \debug3[24]~output_o\;

ww_debug3(25) <= \debug3[25]~output_o\;

ww_debug3(26) <= \debug3[26]~output_o\;

ww_debug3(27) <= \debug3[27]~output_o\;

ww_debug3(28) <= \debug3[28]~output_o\;

ww_debug3(29) <= \debug3[29]~output_o\;

ww_debug3(30) <= \debug3[30]~output_o\;

ww_debug3(31) <= \debug3[31]~output_o\;

ww_debug4(0) <= \debug4[0]~output_o\;

ww_debug4(1) <= \debug4[1]~output_o\;

ww_debug4(2) <= \debug4[2]~output_o\;

ww_debug4(3) <= \debug4[3]~output_o\;

ww_debug4(4) <= \debug4[4]~output_o\;

ww_debug4(5) <= \debug4[5]~output_o\;

ww_debug4(6) <= \debug4[6]~output_o\;

ww_debug4(7) <= \debug4[7]~output_o\;

ww_debug4(8) <= \debug4[8]~output_o\;

ww_debug4(9) <= \debug4[9]~output_o\;

ww_debug4(10) <= \debug4[10]~output_o\;

ww_debug4(11) <= \debug4[11]~output_o\;

ww_debug4(12) <= \debug4[12]~output_o\;

ww_debug4(13) <= \debug4[13]~output_o\;

ww_debug4(14) <= \debug4[14]~output_o\;

ww_debug4(15) <= \debug4[15]~output_o\;

ww_debug4(16) <= \debug4[16]~output_o\;

ww_debug4(17) <= \debug4[17]~output_o\;

ww_debug4(18) <= \debug4[18]~output_o\;

ww_debug4(19) <= \debug4[19]~output_o\;

ww_debug4(20) <= \debug4[20]~output_o\;

ww_debug4(21) <= \debug4[21]~output_o\;

ww_debug4(22) <= \debug4[22]~output_o\;

ww_debug4(23) <= \debug4[23]~output_o\;

ww_debug4(24) <= \debug4[24]~output_o\;

ww_debug4(25) <= \debug4[25]~output_o\;

ww_debug4(26) <= \debug4[26]~output_o\;

ww_debug4(27) <= \debug4[27]~output_o\;

ww_debug4(28) <= \debug4[28]~output_o\;

ww_debug4(29) <= \debug4[29]~output_o\;

ww_debug4(30) <= \debug4[30]~output_o\;

ww_debug4(31) <= \debug4[31]~output_o\;

ww_debug5(0) <= \debug5[0]~output_o\;

ww_debug5(1) <= \debug5[1]~output_o\;

ww_debug5(2) <= \debug5[2]~output_o\;

ww_debug5(3) <= \debug5[3]~output_o\;

ww_debug5(4) <= \debug5[4]~output_o\;

ww_debug5(5) <= \debug5[5]~output_o\;

ww_debug5(6) <= \debug5[6]~output_o\;

ww_debug5(7) <= \debug5[7]~output_o\;

ww_debug5(8) <= \debug5[8]~output_o\;

ww_debug5(9) <= \debug5[9]~output_o\;

ww_debug5(10) <= \debug5[10]~output_o\;

ww_debug5(11) <= \debug5[11]~output_o\;

ww_debug5(12) <= \debug5[12]~output_o\;

ww_debug5(13) <= \debug5[13]~output_o\;

ww_debug5(14) <= \debug5[14]~output_o\;

ww_debug5(15) <= \debug5[15]~output_o\;

ww_debug5(16) <= \debug5[16]~output_o\;

ww_debug5(17) <= \debug5[17]~output_o\;

ww_debug5(18) <= \debug5[18]~output_o\;

ww_debug5(19) <= \debug5[19]~output_o\;

ww_debug5(20) <= \debug5[20]~output_o\;

ww_debug5(21) <= \debug5[21]~output_o\;

ww_debug5(22) <= \debug5[22]~output_o\;

ww_debug5(23) <= \debug5[23]~output_o\;

ww_debug5(24) <= \debug5[24]~output_o\;

ww_debug5(25) <= \debug5[25]~output_o\;

ww_debug5(26) <= \debug5[26]~output_o\;

ww_debug5(27) <= \debug5[27]~output_o\;

ww_debug5(28) <= \debug5[28]~output_o\;

ww_debug5(29) <= \debug5[29]~output_o\;

ww_debug5(30) <= \debug5[30]~output_o\;

ww_debug5(31) <= \debug5[31]~output_o\;

ww_debug6(0) <= \debug6[0]~output_o\;

ww_debug6(1) <= \debug6[1]~output_o\;

ww_debug6(2) <= \debug6[2]~output_o\;

ww_debug6(3) <= \debug6[3]~output_o\;

ww_debug6(4) <= \debug6[4]~output_o\;

ww_debug6(5) <= \debug6[5]~output_o\;

ww_debug6(6) <= \debug6[6]~output_o\;

ww_debug6(7) <= \debug6[7]~output_o\;

ww_debug6(8) <= \debug6[8]~output_o\;

ww_debug6(9) <= \debug6[9]~output_o\;

ww_debug6(10) <= \debug6[10]~output_o\;

ww_debug6(11) <= \debug6[11]~output_o\;

ww_debug6(12) <= \debug6[12]~output_o\;

ww_debug6(13) <= \debug6[13]~output_o\;

ww_debug6(14) <= \debug6[14]~output_o\;

ww_debug6(15) <= \debug6[15]~output_o\;

ww_debug6(16) <= \debug6[16]~output_o\;

ww_debug6(17) <= \debug6[17]~output_o\;

ww_debug6(18) <= \debug6[18]~output_o\;

ww_debug6(19) <= \debug6[19]~output_o\;

ww_debug6(20) <= \debug6[20]~output_o\;

ww_debug6(21) <= \debug6[21]~output_o\;

ww_debug6(22) <= \debug6[22]~output_o\;

ww_debug6(23) <= \debug6[23]~output_o\;

ww_debug6(24) <= \debug6[24]~output_o\;

ww_debug6(25) <= \debug6[25]~output_o\;

ww_debug6(26) <= \debug6[26]~output_o\;

ww_debug6(27) <= \debug6[27]~output_o\;

ww_debug6(28) <= \debug6[28]~output_o\;

ww_debug6(29) <= \debug6[29]~output_o\;

ww_debug6(30) <= \debug6[30]~output_o\;

ww_debug6(31) <= \debug6[31]~output_o\;

ww_debugstate(0) <= \debugstate[0]~output_o\;

ww_debugstate(1) <= \debugstate[1]~output_o\;

ww_debugstate(2) <= \debugstate[2]~output_o\;

ww_debugstate(3) <= \debugstate[3]~output_o\;

ww_debugstate(4) <= \debugstate[4]~output_o\;

ww_debugstate(5) <= \debugstate[5]~output_o\;

ww_debugstate(6) <= \debugstate[6]~output_o\;

ww_debugstate(7) <= \debugstate[7]~output_o\;

ww_debugstate(8) <= \debugstate[8]~output_o\;

ww_debugstate(9) <= \debugstate[9]~output_o\;

ww_debugstate(10) <= \debugstate[10]~output_o\;

ww_debugstate(11) <= \debugstate[11]~output_o\;

ww_debugstate(12) <= \debugstate[12]~output_o\;

ww_debugstate(13) <= \debugstate[13]~output_o\;

ww_debugstate(14) <= \debugstate[14]~output_o\;

ww_debugstate(15) <= \debugstate[15]~output_o\;

ww_debugstate(16) <= \debugstate[16]~output_o\;

ww_debugstate(17) <= \debugstate[17]~output_o\;

ww_debugstate(18) <= \debugstate[18]~output_o\;

ww_debugstate(19) <= \debugstate[19]~output_o\;

ww_debugstate(20) <= \debugstate[20]~output_o\;

ww_debugstate(21) <= \debugstate[21]~output_o\;

ww_debugstate(22) <= \debugstate[22]~output_o\;

ww_debugstate(23) <= \debugstate[23]~output_o\;

ww_debugstate(24) <= \debugstate[24]~output_o\;

ww_debugstate(25) <= \debugstate[25]~output_o\;

ww_debugstate(26) <= \debugstate[26]~output_o\;

ww_debugstate(27) <= \debugstate[27]~output_o\;

ww_debugstate(28) <= \debugstate[28]~output_o\;

ww_debugstate(29) <= \debugstate[29]~output_o\;

ww_debugstate(30) <= \debugstate[30]~output_o\;

ww_debugstate(31) <= \debugstate[31]~output_o\;
END structure;


