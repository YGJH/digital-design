transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/jihut/Downloads/de0_empty/simulation/tb {C:/Users/jihut/Downloads/de0_empty/simulation/tb/tb_fourAdder.sv}
vlog -sv -work work +incdir+C:/Users/jihut/Downloads/de0_empty/design {C:/Users/jihut/Downloads/de0_empty/design/fadder.sv}
vlog -sv -work work +incdir+C:/Users/jihut/Downloads/de0_empty/design {C:/Users/jihut/Downloads/de0_empty/design/fouradder.sv}

