transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_2_basic_combinational_logic_circuits/v_2_2_5_simulating_2bit_full_adder/full_adder_2bit.vhd}
vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_2_basic_combinational_logic_circuits/v_2_2_5_simulating_2bit_full_adder/full_adder.vhd}
vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_2_basic_combinational_logic_circuits/v_2_2_5_simulating_2bit_full_adder/half_adder.vhd}

vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_2_basic_combinational_logic_circuits/v_2_2_5_simulating_2bit_full_adder/tb_full_adder_2bit.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_full_adder_2bit

add wave *
view structure
view signals
run 60 ns
