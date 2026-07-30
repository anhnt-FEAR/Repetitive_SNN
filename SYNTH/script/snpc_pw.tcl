######################################################
# Script for Cadence RTL Compiler Power Estimation
######################################################

######################################################
# Set the default search paths to the libraries and 
# the HDL files
######################################################
set_attribute hdl_search_path {../RTL_SIM/RTL}
# set_attribute hdl_search_path {./output_files/}
set_attribute lib_search_path {../LIB}

######################################################
# Set the target technology library for synthesis
######################################################
set_attribute library [list typical.lib output_w2_b256_freepdk45/sram_w2_b256_freepdk45_TT_1p0V_25C.lib]
# set_attribute information_level 6

######################################################
# Enable Clock Gating logic
######################################################
set_attribute lp_insert_clock_gating true

######################################################
# Enable RTL Power Analysis
######################################################
set_attr hdl_track_filename_row_col true
set_attribute lp_power_unit nW

######################################################
# Read HDL files, Elaborate Design
######################################################
# Set the name of top-level module
set basename SNPC; 
# Set the name of clock
set myClk clk;
# Set the clock period
set myPeriod_ps 10000;
# Set the delay from clock to inputs valid
set myInDelay_ns 0.1;
# Set the delay from clock to outputs valid
set myOutDelay_ns 0.1;
# Set the name appended to output files
set runname net;
# List all HDL files
# set myFiles [list ./output_files/${basename}_${runname}.v
# set myFiles [list common.v LIF.v LIF_neuron.v xbar_new.v SNPC_cntrl.v SNPC.v ];
set myFiles [list common.v LIF.v ./output_files/SNPC_net.v];

######################################################
#Analyze and Elaborate the HDL files
######################################################
read_hdl ${myFiles}
elaborate ${basename}

######################################################
# Apply Clock-Gating Directives
######################################################
## Select an available clock-gating integrated cells in
# technology library
# lp_clock_gating_cell
# lp_clock_gating_add_obs_port
# lp_clock_gating_add_reset
# lp_clock_gating_control_point
# lp_clock_gating_style
## Control the clock gating
# lp_clock_gating_max_flops
# lp_clock_gating_min_flops
# lp_clock_gating_exclude

######################################################
# Set Timing and Design Constraints
######################################################
define_clock -period ${myPeriod_ps} -name ${myClk} [clock_ports]
external_delay -input $myInDelay_ns -clock ${myClk} [find / -port ports_in/*]
external_delay -output $myOutDelay_ns -clock ${myClk} [find / -port ports_out/*]

######################################################
# Sets transition to default values for Synopsys SDC format, 
# fall/rise 400ps
######################################################
dc::set_clock_transition .4 $myClk

######################################################
# Annotate Switching activities
######################################################
# Read SDC file
# read_sdc ./output_files/${basename}_${runname}.sdc
# read_vcd -static ../RTL_SIM/script/SNPC_normal_activities_v3.vcd
read_vcd -static ../RTL_SIM/script/SNPC_0_activity_v3.vcd

######################################################
# Set Leakage Power and Dynamic Power Constraints
######################################################
# Specify Leakage Power Constraint
set_attribute max_leakage_power 3.3 ${basename}
# Specify Leakage Power Constraint
set_attribute max_dynamic_power 3.3 ${basename}
# Specify Leakage Power Optimization Directive
set_attribute leakage_power_effort medium
# Specify Effort to use for Propagation of Switching Activtives
set_attribute lp_power_analysis_effort medium
set_attribute lp_power_optimization_weight 0.5 ${basename}

######################################################
# Synthesize the Design
######################################################
# syn_map
check_design -unresolved
report timing -lint

######################################################
# Optimize timing
######################################################
set_attribute retime true ${basename}
# Synthesize the design to the target library
#synthesize -to_mapped
syn_generic
syn_map
retime -min_delay
# synthesize -to_mapped

######################################################
# Run Increamental Optimization
######################################################
syn_opt -incr

######################################################
# Write out the Reports
######################################################
report clock_gating > ./reports_pw/${basename}_${runname}_clock_gating.rep
report timing -lint > ./reports_pw/${basename}_${runname}_timing_v1.rep
report timing > ./reports_pw/${basename}_${runname}_timing.rep
report gates  > ./reports_pw/${basename}_${runname}_cell.rep
report area   > ./reports_pw/${basename}_${runname}_area.rep
report power  > ./reports_pw/${basename}_${runname}_power.rep
report power -detail  > ./reports_pw/${basename}_${runname}_power_detail.rep

######################################################
# Write out the Structural Verilog
######################################################
write_hdl -mapped >  ./output_files_pw/${basename}_${runname}.v
write_sdc >  ./output_files_pw/${basename}_${runname}.sdc
write_sdf >  ./output_files_pw/${basename}_${runname}.sdf
