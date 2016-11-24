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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/22/2016 23:54:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Processor_vhd_vec_tst IS
END Processor_vhd_vec_tst;
ARCHITECTURE Processor_arch OF Processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL dbg : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL f : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL t : STD_LOGIC_VECTOR(0 DOWNTO 0);
COMPONENT Processor
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	dbg : OUT STD_LOGIC_VECTOR(0 TO 31);
	f : OUT STD_LOGIC_VECTOR(0 TO 31);
	t : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Processor
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	dbg => dbg,
	f => f,
	t => t
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
WAIT;
END PROCESS t_prcs_clr;
END Processor_arch;
