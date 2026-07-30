# How to run

The directory consists of the power estimation scripts using Synopsys Prime Time tool.


### Power Estimation

To run power estimation using PT, please use the following command:


```
make
```
NOTE: In order to correctly export power consumption, a modification is needed.

- For changing type of switching activities (.vcd or .saif), there are two steps:

First, chosing one of the two following command line in "rm_pt_setupt/pt.tcl" and comment the other line.

If running power estimation with .saif file:

```
read_saif $ACTIVITY_FILE -strip_path $STRIP_PATH
```

If running power estimation with .vcd file:

```
read_vcd $ACTIVITY_FILE -strip_path $STRIP_PATH
```

Second, correct the linking path to your switching activity file in "rm_setup/pt_setup.tcl".

```
set ACTIVITY_FILE "../RTL_SIM/script/$(YOUR_ACTIVITY_FILE)"
```

For example:

If running power estimation with .saif file:

```
set ACTIVITY_FILE "../RTL_SIM/script/snpc_activities_SPIKE_IMG-123.saif"
```

If running power estimation with .vcd file:

```
set ACTIVITY_FILE "../RTL_SIM/script/snpc_activities_SPIKE_IMG-123.vcd"
```


### Clean workspace

- In order to clean the workspace, the following command is useful.

```
make clean
```