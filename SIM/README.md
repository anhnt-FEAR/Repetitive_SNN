# How to run SNPC simulations

The directory consists of the RTL, post-synthesis, and post-layout simulation of SNPC module.
Currently, it only supports for RTL and post-synthesis simulations. 
It will be updated in future for post-layout simulation.

### Setup RTL model

- There are two types of SNPC model, which are 4x2-bit_SRAM and 1x8-bit_SRAM.
To change the type of model, please access to "../RTL/common.v" file.

If the expected configuration is 4x2-bit_SRAM, please uncomment the following line:

```
`define __SPLIT_RAM__ 1
```
If the expected configuration is 1x8-bit_SRAM, please comment the above line:


### RTL simulation

- First, compile all RTL using the following command:

``` 
make top_compile
```

- Second, run the design with its testbench. There are three type of test. 
The first one is testing with a specific input in the "../input" folder.

```
make $(YOUR_INPUT_FILE).bin
```

An example is presented in the following command:

```
make SPIKE_IMG-123.bin
```

The second one is also testing with a specific input in the "../input" folder.
However, it also exports the switching activity of hardware module (.vcd and .saif).
Those files are used in Synopsys PrimeTime tool for power estimation.

```
make $(YOUR_INPUT_FILE).run
```

An example is presented in the following command:

```
make SPIKE_IMG-123.run
```

The last one is testing all input in the "input" folder.
This option is to calculate the overall accuracy of SNPC module with 10000 MNIST images.

```
make full_test
```

### Post-synthesis simulation

NOTE: There are two types of generated netlist. One is from DC, and the other is from Genus.
To change the post-synthesis simulation with the expected netlist, please access to "Makefile".

If simulating with DC netlist, please change the following line into:

```
PS_SNPC_FILE := ../../SYN/results/SNPC.mapped.v
```

If simulating with Genus netlist, please change the following line into:

```
PS_SNPC_FILE := ../../SYNTH/output_files/SNPC_net.v
```

- First, compile the synthesized netlist using the following command:

``` 
make top_ps_compile
```

At this step, a modification for Makefile is needed. 
Please uncomment the two following lines in order to run post-synthesis simulation.

```
%.bin: top_ps_compile

...

%.run: top_ps_compile
```
	
And comment the two following lines.

```
%.bin: top_compile

...

%.run: top_compile
```

- Second, run the design with its testbench. There are three type of test. 
The first one is testing with a specific input in the "../input" folder.

```
make $(YOUR_INPUT_FILE).bin
```

An example is presented in the following command:

```
make SPIKE_IMG-123.bin
```

The second one is also testing with a specific input in the "../input" folder.
However, it also exports the switching activity of hardware module (.vcd and .saif).
Those files are used in Synopsys PrimeTime tool for power estimation.

```
make $(YOUR_INPUT_FILE).run
```

An example is presented in the following command:

```
make SPIKE_IMG-123.run
```

The last one is testing all input in the "input" folder.
This option is to calculate the overall accuracy of SNPC module with 10000 MNIST images.

```
make full_test
```

### Clean workspace

- In order to clean the workspace, the following command is useful.

```
make clean
```


