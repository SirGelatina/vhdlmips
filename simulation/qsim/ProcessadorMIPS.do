onerror {exit -code 1}
vlib work
vcom -work work Processor.vho
vcom -work work Processor.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Processor_vhd_vec_tst
vcd file -direction ProcessadorMIPS.msim.vcd
vcd add -internal Processor_vhd_vec_tst/*
vcd add -internal Processor_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f






