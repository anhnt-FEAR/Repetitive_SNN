module SNN_wrapper
  #(
    parameter LIF_NEURON_OVRFL_WIDTH = 8,
    parameter SPK_ARRAY_WIDTH = 784,
    parameter NEURAL_ARRAY_WIDTH = 48,
    parameter OUTPUT_ARRAY_WIDTH = 10,
    parameter WEIGHT_ADDR_WIDTH = 10,
    parameter WEIGHT_WIDTH = 8
    )(
      input					  clk,
      input					  rst_n,
      input					  i_start,
      output [9:0]				  o_spike,

      input [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] data_1,
      input [WEIGHT_ADDR_WIDTH-1:0]		  address_1,
      input					  cs_1,
      input					  we_1,
      input					  oe_1,
  
      input [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] data_2,
      input [WEIGHT_ADDR_WIDTH-1:0]		  address_2,
      input					  cs_2,
      input					  we_2,
      input					  oe_2,

      input [SPK_ARRAY_WIDTH-1:0]		  i_spk_arry,
      input					  i_svalid,
      output					  o_svalid
      );
   
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
      .i_svalid(i_svalid),
      .i_spk_arry(i_spk_arry),
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
      .o_spike(o_spike),
      .o_svalid(o_svalid)
      );
   
endmodule // SNN_wrapper


