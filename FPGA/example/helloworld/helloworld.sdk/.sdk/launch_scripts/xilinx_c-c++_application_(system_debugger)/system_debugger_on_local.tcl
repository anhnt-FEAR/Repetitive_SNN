connect -url tcp:127.0.0.1:3121
source /home/doanh/Work/SNN_Stack_SRAM/fpga/example/helloworld/helloworld.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AC8A94"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248AC8A94" && level==0} -index 1
fpga -file /home/doanh/Work/SNN_Stack_SRAM/fpga/example/helloworld/helloworld.runs/impl_1/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AC8A94"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AC8A94"} -index 0
dow /home/doanh/Work/SNN_Stack_SRAM/fpga/example/helloworld/helloworld.sdk/helloworld_bsp_xuartps_hello_world_example_1/Debug/helloworld_bsp_xuartps_hello_world_example_1.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AC8A94"} -index 0
con
