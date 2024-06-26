transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_1_basic_logic_gates/v_1_7_tri_state/tri_state.vhd}

vcom -93 -work work {C:/altera/13.1/vhdl_quartus/v_1_basic_logic_gates/v_1_7_tri_state/tb_tri_state.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  tb_tri_state

add wave *
view structure
view signals
run -all
