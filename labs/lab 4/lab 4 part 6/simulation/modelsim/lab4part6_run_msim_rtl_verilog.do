transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Miguel\ Tirado/Desktop/CPE\ 64\ labs/lab\ 4/lab\ 4\ part\ 6 {C:/Users/Miguel Tirado/Desktop/CPE 64 labs/lab 4/lab 4 part 6/lab4part6.v}

vlog -vlog01compat -work work +incdir+C:/Users/Miguel\ Tirado/Desktop/CPE\ 64\ labs/lab\ 4/lab\ 4\ part\ 6 {C:/Users/Miguel Tirado/Desktop/CPE 64 labs/lab 4/lab 4 part 6/lab4part6_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  lab4part6_tb

add wave *
view structure
view signals
run -all
