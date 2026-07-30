### SNN with Stacking Memory
============================

This repository consists of the SNN hardware architecture with 3-D IC-based stacking memory.

```
+./______RTL/                     - RTL models of SNPC core
  | 
  |______TB/	                  - Testbench of SNPC core
  | 
  |______DATA/                    - Input/Output spike of the hardware of SNPC core
  | 
  |______SIM/                     - Logic simulation using ModelSim 
  |
  |______SYN/                     - Logic synthesis using Synopsys DesignCompiler tool
  |      |_____script/            - Scripts for Synopsys DC flow
  |      |_____reports/           - Reports of DC hardware synthesis
  |      |_____results/           - Resutls of DC hardware synthesis
  |
  |______SYNTH/                   - Logic synthesis using Cadance Genus tool
  |      |_____script/            - Scripts for Cadance Genus flow
  |      |_____reports/           - Reports of Genus hardware synthesis
  |      |_____results/           - Results of Genus hardware synthesis
  |
  |______PT/                      - Power estimation using Synopsys PrimeTime tool
  |      |_____script/            - Scripts for Synopsys PT flow
  |      |_____reports/           - Reports of PT power estimation
  |      |_____results/           - Results of PT power estimation
  |
  |______PNR/                     - Layout synthesis using Cadance Innovus tool
  |      |_____script/            - Scripts for Cadance Innovus flow
  |      |_____reports/           - Reports of Innovus layout synthesis
  |      |_____results/           - Results of Innovus layout synthesis
  |
  |______SRAM/                    - SRAM models generated from memory compiler
  |
  |______LIB/                     - Technology library of the Open NANGATE 45nm CMOS 
  |
  |______env.sh                   - Environment Varriable Initialization
```

# How to Check-out

First, complete setup your github environment (linking your account).
After that, checkout this repository using the following command:


```
git clone https://github.com/<YOUR_DEFINE>
```

In order to run, you need to access CAD-tools server (zxp007 or 163.143.94.123).
In addition, the environment variable initializaiton is needed with the following command:

```
source env.sh
```

NOTE: First, build sram model before doing anything.
```
cd ./SRAM/
make
```

