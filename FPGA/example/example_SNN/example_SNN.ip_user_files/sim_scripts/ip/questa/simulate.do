onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xilinx_mem_1024x8_opt

do {wave.do}

view wave
view structure
view signals

do {xilinx_mem_1024x8.udo}

run -all

quit -force
