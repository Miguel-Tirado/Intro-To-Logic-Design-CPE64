transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/tiradom/Desktop/lab\ 3\ part\ 4 {C:/Users/tiradom/Desktop/lab 3 part 4/comparator.v}

vlog -vlog01compat -work work +incdir+C:/Users/tiradom/Desktop/lab\ 3\ part\ 4 {C:/Users/tiradom/Desktop/lab 3 part 4/comparator_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  comparator_tb

add wave *
view structure
view signals
run -all
