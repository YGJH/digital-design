vsim -voptargs=+acc work.tb_birth
view structure wave signals

do wave.do

log -r *
run -all

