transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/miguel/Desktop/CPE\ 64/lab\ 5 {C:/Users/miguel/Desktop/CPE 64/lab 5/lab5part2.v}

vlog -vlog01compat -work work +incdir+C:/Users/miguel/Desktop/CPE\ 64/lab\ 5 {C:/Users/miguel/Desktop/CPE 64/lab 5/lab5part2_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  lab5part2_tb

add wave *
view structure
view signals
run -all
