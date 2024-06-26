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

-- DATE "06/25/2024 23:51:11"

-- 
-- Device: Altera 5M40ZE64C4 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	full_adder_4bit IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	s : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END full_adder_4bit;

-- Design Ports Information
-- s[0]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[1]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[2]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[3]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[4]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- a[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF full_adder_4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|U0|s~combout\ : std_logic;
SIGNAL \U1|U1|s~0_combout\ : std_logic;
SIGNAL \U1|c_out~0_combout\ : std_logic;
SIGNAL \U2|U1|s~0_combout\ : std_logic;
SIGNAL \U2|c_out~0_combout\ : std_logic;
SIGNAL \U3|U1|s~combout\ : std_logic;
SIGNAL \U3|c_out~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X2_Y3_N7
\U0|U0|s\ : maxv_lcell
-- Equation(s):
-- \U0|U0|s~combout\ = ((\a~combout\(0) $ (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|U0|s~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X2_Y3_N2
\U1|U1|s~0\ : maxv_lcell
-- Equation(s):
-- \U1|U1|s~0_combout\ = \b~combout\(1) $ (\a~combout\(1) $ (((\a~combout\(0) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|U1|s~0_combout\);

-- Location: LC_X2_Y3_N5
\U1|c_out~0\ : maxv_lcell
-- Equation(s):
-- \U1|c_out~0_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & \b~combout\(0))))) # (!\b~combout\(1) & (\a~combout\(0) & (\b~combout\(0) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|c_out~0_combout\);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X2_Y3_N9
\U2|U1|s~0\ : maxv_lcell
-- Equation(s):
-- \U2|U1|s~0_combout\ = \U1|c_out~0_combout\ $ (((\b~combout\(2) $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|c_out~0_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|U1|s~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X2_Y3_N6
\U2|c_out~0\ : maxv_lcell
-- Equation(s):
-- \U2|c_out~0_combout\ = (\U1|c_out~0_combout\ & (((\b~combout\(2)) # (\a~combout\(2))))) # (!\U1|c_out~0_combout\ & (((\b~combout\(2) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|c_out~0_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|c_out~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X2_Y3_N8
\U3|U1|s\ : maxv_lcell
-- Equation(s):
-- \U3|U1|s~combout\ = (\b~combout\(3) $ (\U2|c_out~0_combout\ $ (\a~combout\(3))))

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
	datab => \b~combout\(3),
	datac => \U2|c_out~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|U1|s~combout\);

-- Location: LC_X2_Y3_N3
\U3|c_out~0\ : maxv_lcell
-- Equation(s):
-- \U3|c_out~0_combout\ = ((\b~combout\(3) & ((\U2|c_out~0_combout\) # (\a~combout\(3)))) # (!\b~combout\(3) & (\U2|c_out~0_combout\ & \a~combout\(3))))

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
	datab => \b~combout\(3),
	datac => \U2|c_out~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|c_out~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|U0|s~combout\,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|U1|s~0_combout\,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|U1|s~0_combout\,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|U1|s~combout\,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|c_out~0_combout\,
	oe => VCC,
	padio => ww_s(4));
END structure;


