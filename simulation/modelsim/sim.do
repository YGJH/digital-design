vsim -voptargs=+acc work.tb_final_exam
view structure wave signals

do wave.do

log -r *
run -all

