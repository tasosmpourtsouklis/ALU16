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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/30/2021 05:16:03"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	bit16 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	Result : OUT std_logic_vector(15 DOWNTO 0);
	Overflow : OUT std_logic
	);
END bit16;

-- Design Ports Information


ARCHITECTURE structure OF bit16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \I1:0:Bit1s|I8|Mux0~3_combout\ : std_logic;
SIGNAL \I1:0:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:0:Bit1s|I8|Mux0~4_combout\ : std_logic;
SIGNAL \Control_Cercuit|Mux2~0_combout\ : std_logic;
SIGNAL \Control_Cercuit|Mux4~0_combout\ : std_logic;
SIGNAL \I1:0:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \Control_Cercuit|Mux1~0_combout\ : std_logic;
SIGNAL \Control_Cercuit|Mux0~0_combout\ : std_logic;
SIGNAL \I1:1:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:1:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:1:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:1:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:2:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:1:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:2:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:2:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:2:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:3:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:2:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:3:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:3:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:3:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:4:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:3:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:4:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:4:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:4:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:5:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:4:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:5:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:5:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:5:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:6:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:5:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:6:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:6:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:6:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:7:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:7:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:6:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:7:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:7:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:8:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:8:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:7:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:8:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:8:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:9:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:9:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:8:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:9:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:9:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:10:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:10:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:9:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:10:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:10:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:11:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:10:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:11:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:11:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:11:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:12:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:11:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:12:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:12:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:12:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:13:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:13:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:12:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:13:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:13:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:14:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:13:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:14:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:14:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:14:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:15:Bit1s|I8|Mux0~0_combout\ : std_logic;
SIGNAL \I1:14:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \I1:15:Bit1s|I8|Mux0~1_combout\ : std_logic;
SIGNAL \I1:15:Bit1s|I3|Res~0_combout\ : std_logic;
SIGNAL \I1:15:Bit1s|I8|Mux0~2_combout\ : std_logic;
SIGNAL \I1:15:Bit1s|I6|CarryOut~0_combout\ : std_logic;
SIGNAL \OVerflow_Check|Mux0~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \opcode~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_opcode <= opcode;
Result <= ww_Result;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: LC_X5_Y1_N7
\I1:0:Bit1s|I8|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I1:0:Bit1s|I8|Mux0~3_combout\ = (\opcode~combout\(1) & (\b~combout\(0) $ (((!\opcode~combout\(2)) # (!\opcode~combout\(0)))))) # (!\opcode~combout\(1) & ((\b~combout\(0) & ((!\opcode~combout\(2)))) # (!\b~combout\(0) & (\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "954e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:0:Bit1s|I8|Mux0~3_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LC_X5_Y1_N1
\I1:0:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:0:Bit1s|I8|Mux0~2_combout\ = (\b~combout\(0) & ((\opcode~combout\(0) & ((!\opcode~combout\(1)) # (!\opcode~combout\(2)))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)))))) # (!\b~combout\(0) & (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:0:Bit1s|I8|Mux0~2_combout\);

-- Location: LC_X5_Y1_N5
\I1:0:Bit1s|I8|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \I1:0:Bit1s|I8|Mux0~4_combout\ = ((\a~combout\(0) & (\I1:0:Bit1s|I8|Mux0~3_combout\)) # (!\a~combout\(0) & ((\I1:0:Bit1s|I8|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1:0:Bit1s|I8|Mux0~3_combout\,
	datac => \a~combout\(0),
	datad => \I1:0:Bit1s|I8|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:0:Bit1s|I8|Mux0~4_combout\);

-- Location: LC_X3_Y2_N2
\Control_Cercuit|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \Control_Cercuit|Mux2~0_combout\ = (((\opcode~combout\(2) & !\opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Control_Cercuit|Mux2~0_combout\);

-- Location: LC_X5_Y1_N9
\Control_Cercuit|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Control_Cercuit|Mux4~0_combout\ = ((\opcode~combout\(0) & (!\opcode~combout\(2) & \opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Control_Cercuit|Mux4~0_combout\);

-- Location: LC_X5_Y1_N6
\I1:0:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:0:Bit1s|I6|CarryOut~0_combout\ = (\b~combout\(0) & ((\a~combout\(0) & (!\Control_Cercuit|Mux2~0_combout\)) # (!\a~combout\(0) & (\Control_Cercuit|Mux2~0_combout\ & \Control_Cercuit|Mux4~0_combout\)))) # (!\b~combout\(0) & 
-- ((\Control_Cercuit|Mux4~0_combout\) # ((!\a~combout\(0) & \Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f24",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \Control_Cercuit|Mux2~0_combout\,
	datac => \b~combout\(0),
	datad => \Control_Cercuit|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:0:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X4_Y3_N9
\Control_Cercuit|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Control_Cercuit|Mux1~0_combout\ = ((\opcode~combout\(0) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(0) & (\opcode~combout\(2) & \opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Control_Cercuit|Mux1~0_combout\);

-- Location: LC_X3_Y2_N7
\Control_Cercuit|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Control_Cercuit|Mux0~0_combout\ = (((\opcode~combout\(0) & \opcode~combout\(2))) # (!\opcode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Control_Cercuit|Mux0~0_combout\);

-- Location: LC_X5_Y1_N3
\I1:1:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:1:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux1~0_combout\ & ((\Control_Cercuit|Mux0~0_combout\))) # (!\Control_Cercuit|Mux1~0_combout\ & (\I1:0:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1:0:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux1~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:1:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X5_Y1_N2
\I1:1:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:1:Bit1s|I3|Res~0_combout\ = \b~combout\(1) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c63c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \b~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:1:Bit1s|I3|Res~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X5_Y1_N4
\I1:1:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:1:Bit1s|I8|Mux0~0_combout\ = \a~combout\(1) $ ((((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:1:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X5_Y1_N8
\I1:1:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:1:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:1:Bit1s|I8|Mux0~1_combout\ & ((\I1:1:Bit1s|I3|Res~0_combout\) # (\I1:1:Bit1s|I8|Mux0~0_combout\))) # (!\I1:1:Bit1s|I8|Mux0~1_combout\ & (\I1:1:Bit1s|I3|Res~0_combout\ & 
-- \I1:1:Bit1s|I8|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:1:Bit1s|I8|Mux0~1_combout\ $ (\I1:1:Bit1s|I3|Res~0_combout\ $ (\I1:1:Bit1s|I8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:1:Bit1s|I8|Mux0~1_combout\,
	datab => \I1:1:Bit1s|I3|Res~0_combout\,
	datac => \I1:1:Bit1s|I8|Mux0~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:1:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X6_Y4_N5
\I1:2:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:2:Bit1s|I3|Res~0_combout\ = \b~combout\(2) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:2:Bit1s|I3|Res~0_combout\);

-- Location: LC_X5_Y1_N0
\I1:1:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:1:Bit1s|I6|CarryOut~0_combout\ = (\I1:1:Bit1s|I3|Res~0_combout\ & ((\I1:0:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(1) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:1:Bit1s|I3|Res~0_combout\ & (\I1:0:Bit1s|I6|CarryOut~0_combout\ & (\a~combout\(1) 
-- $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \I1:1:Bit1s|I3|Res~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:0:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:1:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X6_Y4_N7
\I1:2:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:2:Bit1s|I8|Mux0~1_combout\ = (\Control_Cercuit|Mux1~0_combout\ & (((\Control_Cercuit|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux1~0_combout\ & (((\I1:1:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Cercuit|Mux1~0_combout\,
	datac => \I1:1:Bit1s|I6|CarryOut~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:2:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X6_Y4_N2
\I1:2:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:2:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(2) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:2:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X6_Y4_N9
\I1:2:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:2:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:2:Bit1s|I3|Res~0_combout\ & ((\I1:2:Bit1s|I8|Mux0~1_combout\) # (\I1:2:Bit1s|I8|Mux0~0_combout\))) # (!\I1:2:Bit1s|I3|Res~0_combout\ & (\I1:2:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:2:Bit1s|I8|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:2:Bit1s|I3|Res~0_combout\ $ (\I1:2:Bit1s|I8|Mux0~1_combout\ $ (\I1:2:Bit1s|I8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:2:Bit1s|I3|Res~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:2:Bit1s|I8|Mux0~1_combout\,
	datad => \I1:2:Bit1s|I8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:2:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X6_Y4_N3
\I1:3:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:3:Bit1s|I3|Res~0_combout\ = \b~combout\(3) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:3:Bit1s|I3|Res~0_combout\);

-- Location: LC_X6_Y4_N6
\I1:2:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:2:Bit1s|I6|CarryOut~0_combout\ = (\I1:2:Bit1s|I3|Res~0_combout\ & ((\I1:1:Bit1s|I6|CarryOut~0_combout\) # (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(2))))) # (!\I1:2:Bit1s|I3|Res~0_combout\ & (\I1:1:Bit1s|I6|CarryOut~0_combout\ & 
-- (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:2:Bit1s|I3|Res~0_combout\,
	datab => \Control_Cercuit|Mux2~0_combout\,
	datac => \I1:1:Bit1s|I6|CarryOut~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:2:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X6_Y4_N4
\I1:3:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:3:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux1~0_combout\ & ((\Control_Cercuit|Mux0~0_combout\))) # (!\Control_Cercuit|Mux1~0_combout\ & (\I1:2:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:2:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux1~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:3:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X6_Y4_N0
\I1:3:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:3:Bit1s|I8|Mux0~0_combout\ = \a~combout\(3) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \a~combout\(3),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:3:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X6_Y4_N1
\I1:3:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:3:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:3:Bit1s|I3|Res~0_combout\ & ((\I1:3:Bit1s|I8|Mux0~1_combout\) # (\I1:3:Bit1s|I8|Mux0~0_combout\))) # (!\I1:3:Bit1s|I3|Res~0_combout\ & (\I1:3:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:3:Bit1s|I8|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:3:Bit1s|I3|Res~0_combout\ $ (\I1:3:Bit1s|I8|Mux0~1_combout\ $ (\I1:3:Bit1s|I8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:3:Bit1s|I3|Res~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:3:Bit1s|I8|Mux0~1_combout\,
	datad => \I1:3:Bit1s|I8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:3:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LC_X4_Y3_N4
\I1:4:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:4:Bit1s|I8|Mux0~0_combout\ = \a~combout\(4) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \a~combout\(4),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:4:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X6_Y4_N8
\I1:3:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:3:Bit1s|I6|CarryOut~0_combout\ = (\I1:3:Bit1s|I3|Res~0_combout\ & ((\I1:2:Bit1s|I6|CarryOut~0_combout\) # (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(3))))) # (!\I1:3:Bit1s|I3|Res~0_combout\ & (\I1:2:Bit1s|I6|CarryOut~0_combout\ & 
-- (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:3:Bit1s|I3|Res~0_combout\,
	datab => \Control_Cercuit|Mux2~0_combout\,
	datac => \I1:2:Bit1s|I6|CarryOut~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:3:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X4_Y3_N7
\I1:4:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:4:Bit1s|I8|Mux0~1_combout\ = (\Control_Cercuit|Mux0~0_combout\ & (\Control_Cercuit|Mux1~0_combout\)) # (!\Control_Cercuit|Mux0~0_combout\ & (!\Control_Cercuit|Mux1~0_combout\ & ((\I1:3:Bit1s|I6|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9988",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Cercuit|Mux0~0_combout\,
	datab => \Control_Cercuit|Mux1~0_combout\,
	datad => \I1:3:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:4:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X4_Y3_N6
\I1:4:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:4:Bit1s|I3|Res~0_combout\ = \b~combout\(4) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(4),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:4:Bit1s|I3|Res~0_combout\);

-- Location: LC_X4_Y3_N2
\I1:4:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:4:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:4:Bit1s|I8|Mux0~0_combout\ & ((\I1:4:Bit1s|I8|Mux0~1_combout\) # (\I1:4:Bit1s|I3|Res~0_combout\))) # (!\I1:4:Bit1s|I8|Mux0~0_combout\ & (\I1:4:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:4:Bit1s|I3|Res~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:4:Bit1s|I8|Mux0~0_combout\ $ (\I1:4:Bit1s|I8|Mux0~1_combout\ $ (\I1:4:Bit1s|I3|Res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:4:Bit1s|I8|Mux0~0_combout\,
	datab => \I1:4:Bit1s|I8|Mux0~1_combout\,
	datac => \I1:4:Bit1s|I3|Res~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:4:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X3_Y4_N2
\I1:5:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:5:Bit1s|I8|Mux0~0_combout\ = \a~combout\(5) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:5:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X4_Y3_N8
\I1:4:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:4:Bit1s|I6|CarryOut~0_combout\ = (\I1:4:Bit1s|I3|Res~0_combout\ & ((\I1:3:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(4) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:4:Bit1s|I3|Res~0_combout\ & (\I1:3:Bit1s|I6|CarryOut~0_combout\ & (\a~combout\(4) 
-- $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \Control_Cercuit|Mux2~0_combout\,
	datac => \I1:4:Bit1s|I3|Res~0_combout\,
	datad => \I1:3:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:4:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X3_Y4_N0
\I1:5:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:5:Bit1s|I8|Mux0~1_combout\ = (\Control_Cercuit|Mux0~0_combout\ & (((\Control_Cercuit|Mux1~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:4:Bit1s|I6|CarryOut~0_combout\ & ((!\Control_Cercuit|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:4:Bit1s|I6|CarryOut~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:5:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LC_X3_Y4_N9
\I1:5:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:5:Bit1s|I3|Res~0_combout\ = \b~combout\(5) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:5:Bit1s|I3|Res~0_combout\);

-- Location: LC_X3_Y4_N8
\I1:5:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:5:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:5:Bit1s|I8|Mux0~0_combout\ & ((\I1:5:Bit1s|I8|Mux0~1_combout\) # (\I1:5:Bit1s|I3|Res~0_combout\))) # (!\I1:5:Bit1s|I8|Mux0~0_combout\ & (\I1:5:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:5:Bit1s|I3|Res~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:5:Bit1s|I8|Mux0~0_combout\ $ (\I1:5:Bit1s|I8|Mux0~1_combout\ $ (\I1:5:Bit1s|I3|Res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:5:Bit1s|I8|Mux0~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:5:Bit1s|I8|Mux0~1_combout\,
	datad => \I1:5:Bit1s|I3|Res~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:5:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LC_X3_Y4_N7
\I1:6:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:6:Bit1s|I3|Res~0_combout\ = \b~combout\(6) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:6:Bit1s|I3|Res~0_combout\);

-- Location: LC_X3_Y4_N3
\I1:5:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:5:Bit1s|I6|CarryOut~0_combout\ = (\I1:5:Bit1s|I3|Res~0_combout\ & ((\I1:4:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(5) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:5:Bit1s|I3|Res~0_combout\ & (\I1:4:Bit1s|I6|CarryOut~0_combout\ & (\a~combout\(5) 
-- $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \I1:5:Bit1s|I3|Res~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:4:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:5:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X3_Y4_N5
\I1:6:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:6:Bit1s|I8|Mux0~1_combout\ = (\Control_Cercuit|Mux0~0_combout\ & (((\Control_Cercuit|Mux1~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:5:Bit1s|I6|CarryOut~0_combout\ & ((!\Control_Cercuit|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:5:Bit1s|I6|CarryOut~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:6:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X3_Y4_N6
\I1:6:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:6:Bit1s|I8|Mux0~0_combout\ = \a~combout\(6) $ (((!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \a~combout\(6),
	datac => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:6:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X3_Y4_N1
\I1:6:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:6:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:6:Bit1s|I3|Res~0_combout\ & ((\I1:6:Bit1s|I8|Mux0~1_combout\) # (\I1:6:Bit1s|I8|Mux0~0_combout\))) # (!\I1:6:Bit1s|I3|Res~0_combout\ & (\I1:6:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:6:Bit1s|I8|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:6:Bit1s|I3|Res~0_combout\ $ (\I1:6:Bit1s|I8|Mux0~1_combout\ $ (\I1:6:Bit1s|I8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:6:Bit1s|I3|Res~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:6:Bit1s|I8|Mux0~1_combout\,
	datad => \I1:6:Bit1s|I8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:6:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X2_Y4_N5
\I1:7:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:7:Bit1s|I3|Res~0_combout\ = \b~combout\(7) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:7:Bit1s|I3|Res~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LC_X2_Y4_N7
\I1:7:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:7:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(7) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(7),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:7:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X3_Y4_N4
\I1:6:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:6:Bit1s|I6|CarryOut~0_combout\ = (\I1:6:Bit1s|I3|Res~0_combout\ & ((\I1:5:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(6) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:6:Bit1s|I3|Res~0_combout\ & (\I1:5:Bit1s|I6|CarryOut~0_combout\ & (\a~combout\(6) 
-- $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:6:Bit1s|I3|Res~0_combout\,
	datab => \a~combout\(6),
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:5:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:6:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X2_Y4_N8
\I1:7:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:7:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux0~0_combout\ & ((\Control_Cercuit|Mux1~0_combout\))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:6:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1:6:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:7:Bit1s|I8|Mux0~1_combout\);

-- Location: LC_X2_Y4_N1
\I1:7:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:7:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:7:Bit1s|I3|Res~0_combout\ & ((\I1:7:Bit1s|I8|Mux0~0_combout\) # (\I1:7:Bit1s|I8|Mux0~1_combout\))) # (!\I1:7:Bit1s|I3|Res~0_combout\ & (\I1:7:Bit1s|I8|Mux0~0_combout\ & 
-- \I1:7:Bit1s|I8|Mux0~1_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:7:Bit1s|I3|Res~0_combout\ $ (\I1:7:Bit1s|I8|Mux0~0_combout\ $ (\I1:7:Bit1s|I8|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:7:Bit1s|I3|Res~0_combout\,
	datab => \I1:7:Bit1s|I8|Mux0~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:7:Bit1s|I8|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:7:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LC_X2_Y4_N3
\I1:8:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:8:Bit1s|I3|Res~0_combout\ = \b~combout\(8) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(8),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:8:Bit1s|I3|Res~0_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LC_X2_Y4_N2
\I1:8:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:8:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(8) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(8),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:8:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X2_Y4_N9
\I1:7:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:7:Bit1s|I6|CarryOut~0_combout\ = (\I1:7:Bit1s|I3|Res~0_combout\ & ((\I1:6:Bit1s|I6|CarryOut~0_combout\) # (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(7))))) # (!\I1:7:Bit1s|I3|Res~0_combout\ & (\I1:6:Bit1s|I6|CarryOut~0_combout\ & 
-- (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Cercuit|Mux2~0_combout\,
	datab => \a~combout\(7),
	datac => \I1:7:Bit1s|I3|Res~0_combout\,
	datad => \I1:6:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:7:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X2_Y4_N6
\I1:8:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:8:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux0~0_combout\ & ((\Control_Cercuit|Mux1~0_combout\))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:7:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1:7:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:8:Bit1s|I8|Mux0~1_combout\);

-- Location: LC_X2_Y4_N4
\I1:8:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:8:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:8:Bit1s|I3|Res~0_combout\ & ((\I1:8:Bit1s|I8|Mux0~0_combout\) # (\I1:8:Bit1s|I8|Mux0~1_combout\))) # (!\I1:8:Bit1s|I3|Res~0_combout\ & (\I1:8:Bit1s|I8|Mux0~0_combout\ & 
-- \I1:8:Bit1s|I8|Mux0~1_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:8:Bit1s|I3|Res~0_combout\ $ (\I1:8:Bit1s|I8|Mux0~0_combout\ $ (\I1:8:Bit1s|I8|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:8:Bit1s|I3|Res~0_combout\,
	datab => \I1:8:Bit1s|I8|Mux0~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:8:Bit1s|I8|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:8:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LC_X3_Y2_N4
\I1:9:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:9:Bit1s|I3|Res~0_combout\ = \b~combout\(9) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a65a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(9),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:9:Bit1s|I3|Res~0_combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LC_X3_Y2_N6
\I1:9:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:9:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(9) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(9),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:9:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X2_Y4_N0
\I1:8:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:8:Bit1s|I6|CarryOut~0_combout\ = (\I1:8:Bit1s|I3|Res~0_combout\ & ((\I1:7:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(8) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:8:Bit1s|I3|Res~0_combout\ & (\I1:7:Bit1s|I6|CarryOut~0_combout\ & (\a~combout\(8) 
-- $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:8:Bit1s|I3|Res~0_combout\,
	datab => \I1:7:Bit1s|I6|CarryOut~0_combout\,
	datac => \a~combout\(8),
	datad => \Control_Cercuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:8:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X3_Y2_N8
\I1:9:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:9:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux0~0_combout\ & ((\Control_Cercuit|Mux1~0_combout\))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:8:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:8:Bit1s|I6|CarryOut~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:9:Bit1s|I8|Mux0~1_combout\);

-- Location: LC_X3_Y2_N9
\I1:9:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:9:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:9:Bit1s|I3|Res~0_combout\ & ((\I1:9:Bit1s|I8|Mux0~0_combout\) # (\I1:9:Bit1s|I8|Mux0~1_combout\))) # (!\I1:9:Bit1s|I3|Res~0_combout\ & (\I1:9:Bit1s|I8|Mux0~0_combout\ & 
-- \I1:9:Bit1s|I8|Mux0~1_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:9:Bit1s|I3|Res~0_combout\ $ (\I1:9:Bit1s|I8|Mux0~0_combout\ $ (\I1:9:Bit1s|I8|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:9:Bit1s|I3|Res~0_combout\,
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:9:Bit1s|I8|Mux0~0_combout\,
	datad => \I1:9:Bit1s|I8|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:9:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LC_X3_Y1_N2
\I1:10:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:10:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(10) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:10:Bit1s|I8|Mux0~0_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LC_X3_Y1_N9
\I1:10:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:10:Bit1s|I3|Res~0_combout\ = \b~combout\(10) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a56a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:10:Bit1s|I3|Res~0_combout\);

-- Location: LC_X3_Y2_N5
\I1:9:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:9:Bit1s|I6|CarryOut~0_combout\ = (\I1:9:Bit1s|I3|Res~0_combout\ & ((\I1:8:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(9) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:9:Bit1s|I3|Res~0_combout\ & (\I1:8:Bit1s|I6|CarryOut~0_combout\ & (\a~combout\(9) 
-- $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:9:Bit1s|I3|Res~0_combout\,
	datab => \a~combout\(9),
	datac => \I1:8:Bit1s|I6|CarryOut~0_combout\,
	datad => \Control_Cercuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:9:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X3_Y1_N7
\I1:10:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:10:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux0~0_combout\ & ((\Control_Cercuit|Mux1~0_combout\))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:9:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:9:Bit1s|I6|CarryOut~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:10:Bit1s|I8|Mux0~1_combout\);

-- Location: LC_X3_Y1_N5
\I1:10:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:10:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:10:Bit1s|I8|Mux0~0_combout\ & ((\I1:10:Bit1s|I3|Res~0_combout\) # (\I1:10:Bit1s|I8|Mux0~1_combout\))) # (!\I1:10:Bit1s|I8|Mux0~0_combout\ & (\I1:10:Bit1s|I3|Res~0_combout\ & 
-- \I1:10:Bit1s|I8|Mux0~1_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:10:Bit1s|I8|Mux0~0_combout\ $ (\I1:10:Bit1s|I3|Res~0_combout\ $ (\I1:10:Bit1s|I8|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:10:Bit1s|I8|Mux0~0_combout\,
	datab => \I1:10:Bit1s|I3|Res~0_combout\,
	datac => \I1:10:Bit1s|I8|Mux0~1_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:10:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LC_X3_Y1_N4
\I1:11:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:11:Bit1s|I8|Mux0~0_combout\ = \a~combout\(11) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:11:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X3_Y1_N0
\I1:10:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:10:Bit1s|I6|CarryOut~0_combout\ = (\I1:10:Bit1s|I3|Res~0_combout\ & ((\I1:9:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(10) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:10:Bit1s|I3|Res~0_combout\ & (\I1:9:Bit1s|I6|CarryOut~0_combout\ & 
-- (\a~combout\(10) $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datab => \I1:10:Bit1s|I3|Res~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:9:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:10:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X3_Y1_N1
\I1:11:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:11:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux0~0_combout\ & ((\Control_Cercuit|Mux1~0_combout\))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:10:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control_Cercuit|Mux0~0_combout\,
	datac => \I1:10:Bit1s|I6|CarryOut~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:11:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X3_Y1_N6
\I1:11:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:11:Bit1s|I3|Res~0_combout\ = \b~combout\(11) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a56a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(11),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:11:Bit1s|I3|Res~0_combout\);

-- Location: LC_X3_Y1_N8
\I1:11:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:11:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:11:Bit1s|I8|Mux0~0_combout\ & ((\I1:11:Bit1s|I8|Mux0~1_combout\) # (\I1:11:Bit1s|I3|Res~0_combout\))) # (!\I1:11:Bit1s|I8|Mux0~0_combout\ & (\I1:11:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:11:Bit1s|I3|Res~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:11:Bit1s|I8|Mux0~0_combout\ $ (\I1:11:Bit1s|I8|Mux0~1_combout\ $ (\I1:11:Bit1s|I3|Res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:11:Bit1s|I8|Mux0~0_combout\,
	datab => \I1:11:Bit1s|I8|Mux0~1_combout\,
	datac => \I1:11:Bit1s|I3|Res~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:11:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LC_X6_Y1_N3
\I1:12:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:12:Bit1s|I3|Res~0_combout\ = \b~combout\(12) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(12),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:12:Bit1s|I3|Res~0_combout\);

-- Location: LC_X3_Y1_N3
\I1:11:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:11:Bit1s|I6|CarryOut~0_combout\ = (\I1:10:Bit1s|I6|CarryOut~0_combout\ & ((\I1:11:Bit1s|I3|Res~0_combout\) # (\a~combout\(11) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:10:Bit1s|I6|CarryOut~0_combout\ & (\I1:11:Bit1s|I3|Res~0_combout\ & 
-- (\a~combout\(11) $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \I1:10:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:11:Bit1s|I3|Res~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:11:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X6_Y1_N2
\I1:12:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:12:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux0~0_combout\ & ((\Control_Cercuit|Mux1~0_combout\))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:11:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1:11:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \Control_Cercuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:12:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LC_X6_Y1_N9
\I1:12:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:12:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(12) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(12),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:12:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X6_Y1_N8
\I1:12:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:12:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:12:Bit1s|I3|Res~0_combout\ & ((\I1:12:Bit1s|I8|Mux0~1_combout\) # (\I1:12:Bit1s|I8|Mux0~0_combout\))) # (!\I1:12:Bit1s|I3|Res~0_combout\ & (\I1:12:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:12:Bit1s|I8|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:12:Bit1s|I3|Res~0_combout\ $ (\I1:12:Bit1s|I8|Mux0~1_combout\ $ (\I1:12:Bit1s|I8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:12:Bit1s|I3|Res~0_combout\,
	datab => \I1:12:Bit1s|I8|Mux0~1_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:12:Bit1s|I8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:12:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LC_X6_Y1_N6
\I1:13:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:13:Bit1s|I3|Res~0_combout\ = \b~combout\(13) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(13),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:13:Bit1s|I3|Res~0_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X6_Y1_N1
\I1:13:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:13:Bit1s|I8|Mux0~0_combout\ = \a~combout\(13) $ ((((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:13:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X6_Y1_N0
\I1:12:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:12:Bit1s|I6|CarryOut~0_combout\ = (\I1:12:Bit1s|I3|Res~0_combout\ & ((\I1:11:Bit1s|I6|CarryOut~0_combout\) # (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(12))))) # (!\I1:12:Bit1s|I3|Res~0_combout\ & (\I1:11:Bit1s|I6|CarryOut~0_combout\ & 
-- (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:12:Bit1s|I3|Res~0_combout\,
	datab => \I1:11:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \a~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:12:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X6_Y1_N4
\I1:13:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:13:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux1~0_combout\ & ((\Control_Cercuit|Mux0~0_combout\))) # (!\Control_Cercuit|Mux1~0_combout\ & (\I1:12:Bit1s|I6|CarryOut~0_combout\ & !\Control_Cercuit|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control_Cercuit|Mux1~0_combout\,
	datac => \I1:12:Bit1s|I6|CarryOut~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:13:Bit1s|I8|Mux0~1_combout\);

-- Location: LC_X6_Y1_N5
\I1:13:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:13:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:13:Bit1s|I3|Res~0_combout\ & ((\I1:13:Bit1s|I8|Mux0~0_combout\) # (\I1:13:Bit1s|I8|Mux0~1_combout\))) # (!\I1:13:Bit1s|I3|Res~0_combout\ & (\I1:13:Bit1s|I8|Mux0~0_combout\ & 
-- \I1:13:Bit1s|I8|Mux0~1_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:13:Bit1s|I3|Res~0_combout\ $ (\I1:13:Bit1s|I8|Mux0~0_combout\ $ (\I1:13:Bit1s|I8|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:13:Bit1s|I3|Res~0_combout\,
	datab => \I1:13:Bit1s|I8|Mux0~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:13:Bit1s|I8|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:13:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X4_Y3_N5
\I1:14:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:14:Bit1s|I3|Res~0_combout\ = \b~combout\(14) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(14),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:14:Bit1s|I3|Res~0_combout\);

-- Location: LC_X6_Y1_N7
\I1:13:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:13:Bit1s|I6|CarryOut~0_combout\ = (\I1:12:Bit1s|I6|CarryOut~0_combout\ & ((\I1:13:Bit1s|I3|Res~0_combout\) # (\a~combout\(13) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:12:Bit1s|I6|CarryOut~0_combout\ & (\I1:13:Bit1s|I3|Res~0_combout\ & 
-- (\a~combout\(13) $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \I1:12:Bit1s|I6|CarryOut~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:13:Bit1s|I3|Res~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:13:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X4_Y4_N1
\I1:14:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:14:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux1~0_combout\ & (\Control_Cercuit|Mux0~0_combout\)) # (!\Control_Cercuit|Mux1~0_combout\ & (!\Control_Cercuit|Mux0~0_combout\ & \I1:13:Bit1s|I6|CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control_Cercuit|Mux1~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:13:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:14:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LC_X4_Y4_N9
\I1:14:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:14:Bit1s|I8|Mux0~0_combout\ = \a~combout\(14) $ ((((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(14),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:14:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X4_Y4_N0
\I1:14:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:14:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:14:Bit1s|I3|Res~0_combout\ & ((\I1:14:Bit1s|I8|Mux0~1_combout\) # (\I1:14:Bit1s|I8|Mux0~0_combout\))) # (!\I1:14:Bit1s|I3|Res~0_combout\ & (\I1:14:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:14:Bit1s|I8|Mux0~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:14:Bit1s|I3|Res~0_combout\ $ (\I1:14:Bit1s|I8|Mux0~1_combout\ $ (\I1:14:Bit1s|I8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:14:Bit1s|I3|Res~0_combout\,
	datab => \I1:14:Bit1s|I8|Mux0~1_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:14:Bit1s|I8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:14:Bit1s|I8|Mux0~2_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LC_X4_Y4_N4
\I1:15:Bit1s|I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1:15:Bit1s|I8|Mux0~0_combout\ = (\a~combout\(15) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(15),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:15:Bit1s|I8|Mux0~0_combout\);

-- Location: LC_X4_Y4_N8
\I1:14:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:14:Bit1s|I6|CarryOut~0_combout\ = (\I1:14:Bit1s|I3|Res~0_combout\ & ((\I1:13:Bit1s|I6|CarryOut~0_combout\) # (\a~combout\(14) $ (\Control_Cercuit|Mux2~0_combout\)))) # (!\I1:14:Bit1s|I3|Res~0_combout\ & (\I1:13:Bit1s|I6|CarryOut~0_combout\ & 
-- (\a~combout\(14) $ (\Control_Cercuit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(14),
	datab => \I1:14:Bit1s|I3|Res~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \I1:13:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:14:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X4_Y4_N2
\I1:15:Bit1s|I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1:15:Bit1s|I8|Mux0~1_combout\ = ((\Control_Cercuit|Mux1~0_combout\ & (\Control_Cercuit|Mux0~0_combout\)) # (!\Control_Cercuit|Mux1~0_combout\ & (!\Control_Cercuit|Mux0~0_combout\ & \I1:14:Bit1s|I6|CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control_Cercuit|Mux1~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:14:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:15:Bit1s|I8|Mux0~1_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LC_X4_Y4_N7
\I1:15:Bit1s|I3|Res~0\ : maxv_lcell
-- Equation(s):
-- \I1:15:Bit1s|I3|Res~0_combout\ = \b~combout\(15) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a65a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(15),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:15:Bit1s|I3|Res~0_combout\);

-- Location: LC_X4_Y4_N5
\I1:15:Bit1s|I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1:15:Bit1s|I8|Mux0~2_combout\ = (\Control_Cercuit|Mux0~0_combout\ & ((\I1:15:Bit1s|I8|Mux0~0_combout\ & ((\I1:15:Bit1s|I8|Mux0~1_combout\) # (\I1:15:Bit1s|I3|Res~0_combout\))) # (!\I1:15:Bit1s|I8|Mux0~0_combout\ & (\I1:15:Bit1s|I8|Mux0~1_combout\ & 
-- \I1:15:Bit1s|I3|Res~0_combout\)))) # (!\Control_Cercuit|Mux0~0_combout\ & (\I1:15:Bit1s|I8|Mux0~0_combout\ $ (\I1:15:Bit1s|I8|Mux0~1_combout\ $ (\I1:15:Bit1s|I3|Res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:15:Bit1s|I8|Mux0~0_combout\,
	datab => \I1:15:Bit1s|I8|Mux0~1_combout\,
	datac => \I1:15:Bit1s|I3|Res~0_combout\,
	datad => \Control_Cercuit|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:15:Bit1s|I8|Mux0~2_combout\);

-- Location: LC_X4_Y4_N3
\I1:15:Bit1s|I6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \I1:15:Bit1s|I6|CarryOut~0_combout\ = (\I1:14:Bit1s|I6|CarryOut~0_combout\ & ((\I1:15:Bit1s|I3|Res~0_combout\) # (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(15))))) # (!\I1:14:Bit1s|I6|CarryOut~0_combout\ & (\I1:15:Bit1s|I3|Res~0_combout\ & 
-- (\Control_Cercuit|Mux2~0_combout\ $ (\a~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:14:Bit1s|I6|CarryOut~0_combout\,
	datab => \I1:15:Bit1s|I3|Res~0_combout\,
	datac => \Control_Cercuit|Mux2~0_combout\,
	datad => \a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1:15:Bit1s|I6|CarryOut~0_combout\);

-- Location: LC_X4_Y4_N6
\OVerflow_Check|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \OVerflow_Check|Mux0~0_combout\ = (!\Control_Cercuit|Mux1~0_combout\ & (!\Control_Cercuit|Mux0~0_combout\ & (\I1:14:Bit1s|I6|CarryOut~0_combout\ $ (\I1:15:Bit1s|I6|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1:14:Bit1s|I6|CarryOut~0_combout\,
	datab => \Control_Cercuit|Mux1~0_combout\,
	datac => \Control_Cercuit|Mux0~0_combout\,
	datad => \I1:15:Bit1s|I6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OVerflow_Check|Mux0~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:0:Bit1s|I8|Mux0~4_combout\,
	oe => VCC,
	padio => ww_Result(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:1:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(1));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:2:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(2));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:3:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(3));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:4:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(4));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:5:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:6:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(6));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:7:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(7));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:8:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(8));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:9:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(9));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:10:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(10));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:11:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(11));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:12:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(12));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:13:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(13));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:14:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(14));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1:15:Bit1s|I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(15));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Overflow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OVerflow_Check|Mux0~0_combout\,
	oe => VCC,
	padio => ww_Overflow);
END structure;


