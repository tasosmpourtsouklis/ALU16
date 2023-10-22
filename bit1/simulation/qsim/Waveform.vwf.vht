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
-- Generated on "05/28/2021 05:10:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bit1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bit1_vhd_vec_tst IS
END bit1_vhd_vec_tst;
ARCHITECTURE bit1_arch OF bit1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL Ainvert : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL Binvert : STD_LOGIC;
SIGNAL CarryIn : STD_LOGIC;
SIGNAL CarryOut : STD_LOGIC;
SIGNAL Operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Result : STD_LOGIC;
COMPONENT bit1
	PORT (
	a : IN STD_LOGIC;
	Ainvert : IN STD_LOGIC;
	b : IN STD_LOGIC;
	Binvert : IN STD_LOGIC;
	CarryIn : IN STD_LOGIC;
	CarryOut : OUT STD_LOGIC;
	Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Result : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bit1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	Ainvert => Ainvert,
	b => b,
	Binvert => Binvert,
	CarryIn => CarryIn,
	CarryOut => CarryOut,
	Operation => Operation,
	Result => Result
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;

-- Ainvert
t_prcs_Ainvert: PROCESS
BEGIN
	Ainvert <= '0';
WAIT;
END PROCESS t_prcs_Ainvert;

-- Binvert
t_prcs_Binvert: PROCESS
BEGIN
	Binvert <= '0';
WAIT;
END PROCESS t_prcs_Binvert;

-- CarryIn
t_prcs_CarryIn: PROCESS
BEGIN
	CarryIn <= '0';
WAIT;
END PROCESS t_prcs_CarryIn;

-- Operation[0]
t_prcs_Operation_0: PROCESS
BEGIN
LOOP
	Operation(0) <= '0';
	WAIT FOR 40000 ps;
	Operation(0) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Operation_0;

-- Operation[1]
t_prcs_Operation_1: PROCESS
BEGIN
	Operation(1) <= '0';
WAIT;
END PROCESS t_prcs_Operation_1;
END bit1_arch;
