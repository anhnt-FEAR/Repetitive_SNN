SP_RAM_PROG ?= /home/dkits/tsmc_65/TSMCHOME/memory_compiler/cln65gplus/sram_sp_hdc_svt_rvt_hvt/r0p0-00eac0/bin/sram_sp_hdc_svt_rvt_hvt
#GENERATORS ?= postscript verilog gds2 lvs tmax vclef-fp
GENERATORS ?= verilog gds2 lvs vclef-fp
SP_RAM1024X8_CFG := -words 1024 -bits 8 -write_thru off -write_mask on -wp_size 4
OPTS ?= -frequency 100

all: sp_ram1024x8.v

sp_ram1024x8.v:
	$(SP_RAM_PROG) $(GENERATORS) $(SP_RAM1024X8_CFG) \
		-instname $(@:.v=)
	$(SP_RAM_PROG) synopsys $(SP_RAM1024X8_CFG) \
		-instname $(@:.v=) \
		-libname $(@:.v=) -nldm on -ccs off -ecsm off
	$(SP_RAM_PROG) synopsys $(SP_RAM1024X8_CFG) \
		-instname $(@:.v=) \
		-libname $(@:.v=) -nldm off -ccs on -ecsm off 
	$(SP_RAM_PROG) synopsys $(SP_RAM1024X8_CFG) \
		-instname $(@:.v=) \
		-libname $(@:.v=) -nldm off -ccs off -ecsm on 
	sed -i -e '/parameter WP_SIZE/ a parameter MEM_INIT = \"\";' \
		-e '/INITIALIZE_MEMORY/,+5 s/^/\/\//' \
		-e '/INITIALIZE_MEMORY/ i \`ifdef INITIALIZE_MEMORY\n initial $$readmemh(MEM_INIT, mem);\n\`endif' \
	$@
gen_db:
	for i in $$(ls *.lib); do echo "XXX $${i%_*} XX"; \
		lc_shell -x "read_lib $$i; write_lib -output $${i%.*}.db -format db $${i%_*}; exit"; done;
clean:
	-rm -rf *.v *.db *.lib *.gds2 *.tv *.ps *.cdl *.log *.clf *.vclef

