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

-- DATE "06/24/2024 23:49:46"

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

ENTITY 	mux_2x1 IS
    PORT (
	d0 : IN std_logic;
	d1 : IN std_logic;
	s : IN std_logic;
	z : BUFFER std_logic
	);
END mux_2x1;

-- Design Ports Information
-- z	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- d1	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d0	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mux_2x1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \s~combout\ : std_logic;
SIGNAL \d0~combout\ : std_logic;
SIGNAL \d1~combout\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_s <= s;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s,
	combout => \s~combout\);

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d0,
	combout => \d0~combout\);

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1,
	combout => \d1~combout\);

-- Location: LC_X7_Y1_N2
\z~0\ : maxv_lcell
-- Equation(s):
-- \z~0_combout\ = ((\s~combout\ & ((\d1~combout\))) # (!\s~combout\ & (\d0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datac => \d0~combout\,
	datad => \d1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \z~0_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \z~0_combout\,
	oe => VCC,
	padio => ww_z);
END structure;


