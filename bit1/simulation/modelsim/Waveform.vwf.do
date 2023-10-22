vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L maxv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.bit1_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
