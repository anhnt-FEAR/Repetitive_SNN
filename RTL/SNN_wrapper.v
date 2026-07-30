module SNN_wrapper
  #(
    parameter LIF_NEURON_OVRFL_WIDTH = 8,
    parameter SPK_ARRAY_WIDTH = 784,
    parameter NEURAL_ARRAY_WIDTH = 48,
    parameter OUTPUT_ARRAY_WIDTH = 10,
    parameter WEIGHT_ADDR_WIDTH = 10,
    parameter WEIGHT_WIDTH = 8
    )(
      input clk,
      input rst_n,
      input i_start,
      output [9:0] o_spike,
      output o_svalid,
      output [3:0] o_number,
      output o_done
      );

   wire [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] data_1;
   wire [WEIGHT_ADDR_WIDTH-1:0] 	      address_1;
   wire 				      cs_1;
   wire 				      we_1;
   wire 				      oe_1;
   
   wire [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] data_2;
   wire [WEIGHT_ADDR_WIDTH-1:0] 	      address_2;
   wire 				      cs_2;
   wire 				      we_2;
   wire 				      oe_2;

   wire [SPK_ARRAY_WIDTH-1:0]		      w_spk_arry;
   wire 				      w_valid;

   wire [9:0] 				      w_spike;
   wire 				      w_svalid;
   wire [3:0] 				      w_number;
   wire 				      w_done;

   assign o_svalid = w_svalid;
   assign o_spike = w_spike;
   assign o_number = w_number;
   assign o_done = w_done;
   
   transform_spike converter
     (
      .clk(clk),
      .rst_n(rst_n),
      .i_spike(w_spike),
      .i_spike_valid(w_svalid),
      .i_start(i_start),
      .o_number(w_number),
      .o_done(w_done));
      
   weights_l2_rom w2_rom
     (
      .clk(clk),
      .rst_n(rst_n),
      .data_out(data_2),
      .addr_out(address_2),
      .cs(cs_2),
      .we(we_2),
      .oe(oe_2));

   weights_l1_rom w1_rom
     (
      .clk(clk),
      .rst_n(rst_n),
      .data_out(data_1),
      .addr_out(address_1),
      .cs(cs_1),
      .we(we_1),
      .oe(oe_1));

   spike_rom spk_rom
     (
      .clk(clk),
      .rst_n(rst_n),
      .i_start(i_start),
      .spk_arry(w_spk_arry),
      .svalid(w_valid));

   SNPC_top
     #(
       .LIF_NEURON_OVRFL_WIDTH(LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH(SPK_ARRAY_WIDTH),
       .NEURAL_ARRAY_WIDTH(NEURAL_ARRAY_WIDTH),
       .OUTPUT_ARRAY_WIDTH(OUTPUT_ARRAY_WIDTH),
       .WEIGHT_ADDR_WIDTH(WEIGHT_ADDR_WIDTH),
       .WEIGHT_WIDTH(WEIGHT_WIDTH)
       )
   SNPC_top0
     (
      .clk(clk),
      .rst_n(rst_n),
      .i_start(i_start),
      .i_svalid(w_valid),
      .i_spk_arry(w_spk_arry),
      .address_1(address_1),
      .data_1(data_1),
      .cs_1(cs_1),
      .we_1(we_1),
      .oe_1(oe_1),
      .address_2(address_2),
      .data_2(data_2),
      .cs_2(cs_2),
      .we_2(we_2),
      .oe_2(oe_2),
      .o_spike(w_spike),
      .o_svalid(w_svalid)
      );
   
endmodule // SNN_wrapper


