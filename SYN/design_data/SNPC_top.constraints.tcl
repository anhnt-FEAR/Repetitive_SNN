set CLOCK_PERIOD $env(CLOCK_PERIOD)
create_clock -period $CLOCK_PERIOD -name master_clk -waveform [list 0 [expr $CLOCK_PERIOD / 2.0]] [get_port clk]
set_clock_latency 0.5 [get_clocks {master_clk}]
set_clock_uncertainty 0.1 [get_clocks {master_clk}]
set_clock_transition 0 {master_clk}

#set_clock_skew -delay 0.8 -uncertainty 0.2 [get_clock clk]
set all_inputs_except_clk [remove_from_collection [all_inputs] [get_port clk]]

set_input_delay -clock [get_clock master_clk] [expr $CLOCK_PERIOD / 4.0] $all_inputs_except_clk
set_output_delay -clock [get_clock master_clk] [expr $CLOCK_PERIOD / 4.0] [all_outputs]

set_false_path -from [list [get_ports rst_n]]
