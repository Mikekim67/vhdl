-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/22/2024 18:12:19"

-- 
-- Device: Altera 5M40ZM64C4 Package MBGA64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	total_combinational IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	F1 : OUT std_logic;
	F2 : OUT std_logic
	);
END total_combinational;

-- Design Ports Information
-- F1	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F2	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- A	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF total_combinational IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_F1 : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \F1~0_combout\ : std_logic;
SIGNAL \F2~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
F1 <= ww_F1;
F2 <= ww_F2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: LC_X3_Y3_N4
\F1~0\ : maxv_lcell
-- Equation(s):
-- \F1~0_combout\ = (\A~combout\ $ (\C~combout\ $ (\B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F1~0_combout\);

-- Location: LC_X3_Y3_N6
\F2~0\ : maxv_lcell
-- Equation(s):
-- \F2~0_combout\ = ((\A~combout\ & ((\C~combout\) # (\B~combout\))) # (!\A~combout\ & (\C~combout\ & \B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F2~0_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F1~0_combout\,
	oe => VCC,
	padio => ww_F1);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F2~0_combout\,
	oe => VCC,
	padio => ww_F2);
END structure;


