transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/tiradom/Desktop/lab4\ part3 {C:/Users/tiradom/Desktop/lab4 part3/lab4part3_D.v}

vlog -vlog01compat -work work +incdir+C:/Users/tiradom/Desktop/lab4\ part3 {C:/Users/tiradom/Desktop/lab4 part3/lab4part3_D_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  lab4part3_D_tb

add wave *
view structure
view signals
run -all
