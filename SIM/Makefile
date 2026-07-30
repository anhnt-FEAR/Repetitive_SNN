RTL_DIR := ../RTL
SRAM_DIR := ../SRAM
TB_DIR := ../TB
PS_SNPC_FILE := ../SYN/results/SNPC_top.mapped.v
#PS_SNPC_FILE := ../SYNTH/output_files/SNPC_top_net.v
INPUT_DIR := ../DATA/input/256x256/1000_IMG/RAM/TEST_X
REF_FILE := ../DATA/input/RAM/TEST_Y.txt
OUTPUT_FILE := ../DATA/output/MNIST_10K_V-1.0.txt
# STD_CELL_LIB = ../LIB/NangateOpenCellLibrary.v
STD_CELL_LIB = /home/dkits/tsmc_65/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_200a/tcbn65gplus.v
#SDF_FILE := ../SYNTH/output_files/SNPC_top_net.sdf
SDF_FILE := ../SYN/results/SNPC_top.mapped.sdf
# ALL_TEST = $(notdir $(wildcard $(INPUT_DIR)/*-2*.bin))
ALL_TEST = $(notdir $(wildcard $(INPUT_DIR)/*.bin))
#SRAM_FILE := sram_sp_w8_b1024_freepdk45.v
SRAM_FILE := sp_ram1024x8.v
OPTS ?= -vlog01compat
SDF_INCLUDE ?= -sdfmax
#-sdfmax TB_SNPC_MNIST/DUT=$(SDF_FILE) +sdf_verbose 
all: top_compile

RESULT_DIR := ./results

top_compile:
	vlib work
	vlog $(OPTS) $(RTL_DIR)/LIF_neuron.v
	vlog $(OPTS) $(RTL_DIR)/aw_ram_dp_sr_sw.v
	vlog $(OPTS) $(SRAM_DIR)/$(SRAM_FILE)
	vlog $(OPTS) $(SRAM_DIR)/sp_ram1024x8.v
	vlog $(OPTS) $(RTL_DIR)/xbar_snn_test.v
	vlog $(OPTS) $(RTL_DIR)/SNPC_cntrl.v
	vlog $(OPTS) $(RTL_DIR)/SNPC.v
	vlog $(OPTS) $(RTL_DIR)/repetition_cntrl.v
	vlog $(OPTS) $(RTL_DIR)/SNPC_top.v
	vlog -sv  $(RTL_DIR)/axi_slave_if.sv
	vlog $(OPTS) $(RTL_DIR)/transform_spike.v
	vlog $(OPTS) $(RTL_DIR)/SNN_top.v
	vlog $(OPTS) $(TB_DIR)/TB_SNPC_MNIST_32b.v
	touch $@

test_compile:
	vlib work
	vlog $(OPTS) $(RTL_DIR)/LIF_neuron.v
	vlog $(OPTS) $(RTL_DIR)/aw_ram_dp_sr_sw.v
	#vlog $(OPTS) $(SRAM_DIR)/sram_sp_w8_b1024_freepdk45.v
	vlog $(OPTS) $(SRAM_DIR)/sp_ram1024x8.v
	vlog $(OPTS) $(RTL_DIR)/xbar.v
	vlog $(OPTS) $(RTL_DIR)/SNPC_cntrl.v
	vlog $(OPTS) $(RTL_DIR)/SNPC.v
	vlog $(OPTS) $(RTL_DIR)/repetition_cntrl.v
	vlog $(OPTS) $(RTL_DIR)/SNPC_top.v
	vlog -sv  $(RTL_DIR)/axi_slave_if.sv
	vlog $(OPTS) $(RTL_DIR)/SNN_top.v
	vlog $(OPTS) $(RTL_DIR)/spike_rom.v
	vlog $(OPTS) $(RTL_DIR)/weights_l1_rom.v
	vlog $(OPTS) $(RTL_DIR)/weights_l2_rom.v
	vlog $(OPTS) $(RTL_DIR)/transform_spike.v
	vlog $(OPTS) $(RTL_DIR)/SNN_wrapper.v
	vlog $(OPTS) $(RTL_DIR)/SNN_top.v
	vlog $(OPTS) $(TB_DIR)/TB_SNN_MNIST.v
	touch $@

top_ps_compile:
	vlib work
	vlog $(STD_CELL_LIB)
	vlog $(OPTS) $(RTL_DIR)/common.v
	vlog $(OPTS) $(RTL_DIR)/LIF.v
	#vlog $(OPTS) $(SRAM_DIR)/sram_sp_w8_b1024_freepdk45.v
	vlog $(OPTS) $(SRAM_DIR)/sp_ram1024x8.v
	vlog $(OPTS) $(PS_SNPC_FILE)
	vlog $(OPTS) $(TB_DIR)/TB_SNPC_MNIST.v
	touch $@

%.run_ps: top_ps_compile
	vsim -voptargs="+acc" -debugDB -wlf $(@:.run_ps=.wlf) \
		-t 1ps +notimingchecks -sdfmax TB_SNPC_MNIST/DUT=$(SDF_FILE) +sdf_verbose \
		-g_QUIT=0 -g_IMG_INDX="0" -debugdb=$(@:.run_ps=.dbg) \
		-gINPUT_SPIKE_FILE=$(INPUT_DIR)/$(@:.run_ps=.bin) \
		-gOUTPUT_CLASSIF_FILE=$(OUTPUT_FILE) \
		TB_SNPC_MNIST \
		-c -do "log -r *; \
			power add -in -inout -out /TB_SNPC_MNIST/DUT/*; \
			vcd file snpc_activities_$(@:.run_ps=).vcd; \
			vcd add -r /TB_SNPC_MNIST/*; \
			run -all; \
			power report -all -bsaif snpc_activities_$(@:.run_ps=).saif; \
			add wave -group TOP *; \
			exit" 2>&1 | tee $(@:.run_ps=.log)

%.bin_ps: top_ps_compile
	vsim -voptargs="+acc" -t +notimingchecks 1ps -g_QUIT=0 -g_IMG_INDX="0" \
		-sdfmax TB_SNPC_MNIST/DUT=$(SDF_FILE) +sdf_verbose \
		-gINPUT_SPIKE_FILE=$(INPUT_DIR)/$(@:.bin_ps=.bin) \
		-gOUTPUT_CLASSIF_FILE=$(OUTPUT_FILE) \
		TB_SNPC_MNIST \
		-c -do "run -all; exit" 2>&1 | tee $(@:.bin_ps=.log)

test: test_compile
	vsim -voptargs="+acc" -wlf SNN_wrapper.wlf TB_SNN_MNIST \
		-c -do "log -r *; run -all; exit" 2>& 1 | tee SNN_wrapper.log

%.run: top_compile
	vsim -voptargs="+acc" -wlf $(@:.run=.wlf) \
		-t 1ps +notimingchecks +transport_int_delays +pulse_r/10 +pulse_int_r/10 +maxdelays \
		-g_QUIT=0 -g_IMG_INDX="0" \
		-gINPUT_SPIKE_FILE=$(INPUT_DIR)/$(@:.run=.bin) \
		-gOUTPUT_CLASSIF_FILE=$(OUTPUT_FILE) \
		TB_SNPC_MNIST \
		-c -do "log -r *; \
			power add -in -inout -out /TB_SNPC_MNIST/DUT/*; \
			vcd file snpc_activities_$(@:.run=).vcd; \
			vcd add -r /TB_SNPC_MNIST/*; \
			run -all; \
			power report -all -bsaif snpc_activities_$(@:.run=).saif; \
			add wave -group TOP *; \
			exit" 2>&1 | tee $(@:.run=.log)

%.bin: top_compile
	vsim -voptargs="+acc" -t 1ps +notimingchecks -g_QUIT=0 -g_IMG_INDX="0" \
		-gINPUT_SPIKE_FILE=$(INPUT_DIR)/$@ \
		-gOUTPUT_CLASSIF_FILE=$(OUTPUT_FILE) \
		TB_SNPC_MNIST_32b \
		-c -do "run -all; exit" 2>&1 | tee $(RESULT_DIR)/$(@:.bin=.log)

full_test: $(ALL_TEST)

%.result_v1:
	grep -w 'Output is' $(@:.result_v1=)/*.log | \
	sed -e 's\$(@:.result_v1=)/SPIKE_IMG-\\g' | \
	sed -e 's\.log:#\\g' |  awk '{print $$1 " " 9-$$5}' | \
	sort -n | awk '{print $$2}' > ./result/run_$(@:.result_v1=).log
	cat $(REF_FILE) > ./result/ref.log
	pr -m -t ./result/run_$(@:.result_v1=).log ./result/ref.log | \
	awk '$$1 != $$2 { printf "%s\t%s\n", $$1, $$2 }' > ./result/diff_$(@:.result_v1=).log

%.result_v2:
	grep -w 'Output is' $(@:.result_v2=)/*.log | \
	sed -e 's\$(@:.result_v2=)/SPIKE_IMG-\\g' | \
	sed -e 's\.log:#\\g' |  awk '{print $$1 " " $$5}' | \
	sort -n | awk '{print $$2}' > ./result/run_$(@:.result_v2=).log
	cat $(REF_FILE) > ./result/ref.log
	pr -m -t ./result/run_$(@:.result_v2=).log ./result/ref.log | \
	awk '$$1 != $$2 { printf "%s\t%s\n", $$1, $$2 }' > ./result/diff_$(@:.result_v2=).log


.PHONY: clean
clean:
	rm -rf $(RTL_DIR)/modelsim.ini $(TB_DIR)/modelsim.ini $(RESULT_DIR)/*.log *.dbg *.saif *.vcd *.log etch* *.txt\
		./transcript ./work/ ./vsim* ./*\~ ./*.wlf top_compile top_ps_compile \
		test_compile

