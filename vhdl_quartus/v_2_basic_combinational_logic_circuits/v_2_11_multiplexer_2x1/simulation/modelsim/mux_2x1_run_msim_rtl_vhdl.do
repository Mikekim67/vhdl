transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_2_basic_combinational_logic_circuits/v_2_11_multiplexer_2x1/mux_2x1.vhd}

vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_2_basic_combinational_logic_circuits/v_2_11_multiplexer_2x1/tb_mux_2x1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  tb_mux_2x1

add wave *
view structure
view signals
run 80 ns
