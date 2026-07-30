create_clock -period 10.000 -name clk      [get_nets {clk}]

#define false paths between all clocks
set_clock_groups -asynchronous \
		 -group { clk }
