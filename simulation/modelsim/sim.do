vsim -voptargs=+acc work.tb_fourAdder
view structure wave signals

do wave.do

log -r *
run -all

