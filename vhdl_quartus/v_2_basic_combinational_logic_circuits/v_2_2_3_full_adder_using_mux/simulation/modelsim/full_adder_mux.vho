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

-- DATE "06/24/2024 23:30:22"

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

ENTITY 	full_adder_mux IS
    PORT (
	a_in : IN std_logic;
	b_in : IN std_logic;
	c_in : IN std_logic;
	s_out : BUFFER std_logic;
	c_out : BUFFER std_logic
	);
END full_adder_mux;

-- Design Ports Information
-- s_out	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- c_out	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- a_in	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b_in	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- c_in	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF full_adder_mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_in : std_logic;
SIGNAL ww_b_in : std_logic;
SIGNAL ww_c_in : std_logic;
SIGNAL ww_s_out : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL \a_in~combout\ : std_logic;
SIGNAL \c_in~combout\ : std_logic;
SIGNAL \b_in~combout\ : std_logic;
SIGNAL \s_out~0_combout\ : std_logic;
SIGNAL \U0|z~0_combout\ : std_logic;

BEGIN

ww_a_in <= a_in;
ww_b_in <= b_in;
ww_c_in <= c_in;
s_out <= ww_s_out;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a_in,
	combout => \a_in~combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_c_in,
	combout => \c_in~combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b_in,
	combout => \b_in~combout\);

-- Location: LC_X3_Y3_N4
\s_out~0\ : maxv_lcell
-- Equation(s):
-- \s_out~0_combout\ = (\a_in~combout\ $ (\c_in~combout\ $ (\b_in~combout\)))

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
	datab => \a_in~combout\,
	datac => \c_in~combout\,
	datad => \b_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s_out~0_combout\);

-- Location: LC_X3_Y3_N6
\U0|z~0\ : maxv_lcell
-- Equation(s):
-- \U0|z~0_combout\ = ((\a_in~combout\ & ((\c_in~combout\) # (\b_in~combout\))) # (!\a_in~combout\ & (\c_in~combout\ & \b_in~combout\)))

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
	datab => \a_in~combout\,
	datac => \c_in~combout\,
	datad => \b_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|z~0_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s_out~0_combout\,
	oe => VCC,
	padio => ww_s_out);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|z~0_combout\,
	oe => VCC,
	padio => ww_c_out);
END structure;


