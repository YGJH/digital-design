transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/jihut/Downloads/de0_empty/simulation/tb {C:/Users/jihut/Downloads/de0_empty/simulation/tb/tb_birth.sv}
vlog -sv -work work +incdir+C:/Users/jihut/Downloads/de0_empty/design {C:/Users/jihut/Downloads/de0_empty/design/BirthDay.sv}
vlog -sv -work work +incdir+C:/Users/jihut/Downloads/de0_empty/design {C:/Users/jihut/Downloads/de0_empty/design/dff_pos.sv}

