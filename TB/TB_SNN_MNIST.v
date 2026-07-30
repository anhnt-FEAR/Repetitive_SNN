`include "../RTL/common.v"
`include "../RTL/LIF.v"
`define CLK_PERIOD 10

module TB_SNN_MNIST;
   parameter _QUIT = 1;
   parameter WEIGHT_WIDTH   = 8;
   parameter LIF_NEURON_OVRFL_WIDTH = 8;
   parameter SPK_ARRAY_WIDTH = `SPK_ARRAY_WIDTH;
   parameter NEURAL_ARRAY_WIDTH = `NEURAL_ARRAY_WIDTH;
   parameter STATE_WIDTH    = `STATE_WIDTH;
   parameter WEIGHT_ADDR_WIDTH = `WEIGHT_ADDR_WIDTH;
   parameter OUTPUT_ARRAY_WIDTH = `OUTPUT_ARRAY_WIDTH;
   parameter OUTPUT_REG     = 0;

   reg clk;
   reg rst_n;
   reg i_start;
   wire [OUTPUT_ARRAY_WIDTH-1:0] wo_spike;
   wire 			 wo_svalid;
   wire [3:0] 			 wo_number;
   wire 			 wo_done;

   reg [3:0] 			 number_reg;
   
   integer 			 i, j, k, v_i, v_j, max_scnt;
   integer 			 output_spike_cnt [9:0];

   always #(`CLK_PERIOD/2) clk = ~clk;
   
   initial begin
      i = 0;
      j = 0;
      k = 0;
      v_i = 0;
      v_j = 0;
      max_scnt = 0;      
      i_start <= 1'b0;
      clk <= 1'b0;
      rst_n <= 1'b0;
      #(200)
      rst_n <= 1'b1;
      #(1000*`CLK_PERIOD-1);
      for (i = 0; i<40; i=i+1) begin
	 @(posedge clk);
	 i_start <= 1'b1;
	 @(posedge clk);
	 i_start <= 1'b0;
	 $display("Time step = %d\n", i);
	 for (j=0; j <1600; j=j+1)
	   @(posedge clk);
      end
      v_j = -1;

      for (v_i = 0; v_i<10; v_i=v_i+1) begin
	 if (output_spike_cnt[v_i] > max_scnt) begin
            max_scnt = output_spike_cnt[v_i];
            v_j = v_i;
	 end
      end
      $display("Output spikes after all timestep: %p", output_spike_cnt);
      $display("Output is number %d with %d spikes", v_j, max_scnt);
      $display("Result is number %08X", number_reg);
      if (_QUIT == 1)
	$finish;
      else 
	$stop;
   end // initial begin
   
   always @(posedge clk or negedge rst_n) begin
      if (~rst_n) begin
	 number_reg <= 0;
	 for (k = 0; k<10; k=k+1) begin
	    output_spike_cnt[k] = 0;
	 end
      end else begin
	 if (wo_done) begin
	    number_reg <= wo_number;
	 end
	 for (k = 0; k<10; k=k+1) begin
	    if (wo_svalid == 1'b1 && wo_spike[k] == 1'b1) 
              output_spike_cnt[k] = output_spike_cnt[k]+1;
	 end
      end
   end // always @ (posedge clk or negedge rst_n)

   SNN_wrapper
     #(
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH (SPK_ARRAY_WIDTH),
       .NEURAL_ARRAY_WIDTH (NEURAL_ARRAY_WIDTH),
       .OUTPUT_ARRAY_WIDTH (OUTPUT_ARRAY_WIDTH),
       .WEIGHT_ADDR_WIDTH (WEIGHT_ADDR_WIDTH),
       .WEIGHT_WIDTH (WEIGHT_WIDTH)
       )
   DUT
     (
      .clk(clk),
      .rst_n(rst_n),
      .i_start(i_start),
      .o_spike(wo_spike),
      .o_svalid(wo_svalid),
      .o_number(wo_number),
      .o_done(wo_done)
      );
   
endmodule // TB_SNN_MNIST


