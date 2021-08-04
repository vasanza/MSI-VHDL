-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/04/2021 16:50:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RingCntV2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RingCntV2_vhd_vec_tst IS
END RingCntV2_vhd_vec_tst;
ARCHITECTURE RingCntV2_arch OF RingCntV2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
COMPONENT RingCntV2
	PORT (
	Clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RingCntV2
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	en => en,
	q => q,
	resetn => resetn
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 40000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
	WAIT FOR 60000 ps;
	en <= '1';
WAIT;
END PROCESS t_prcs_en;
END RingCntV2_arch;
