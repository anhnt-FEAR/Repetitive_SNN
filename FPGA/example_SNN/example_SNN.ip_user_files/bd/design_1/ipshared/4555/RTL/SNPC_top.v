`include "common.v"
`include "LIF.v"

module SNPC_top
  #(
    parameter LIF_NEURON_OVRFL_WIDTH = 8,
    parameter SPK_ARRAY_WIDTH = 784,
    parameter NEURAL_ARRAY_WIDTH = 48,
    parameter OUTPUT_ARRAY_WIDTH = 10,
    parameter WEIGHT_ADDR_WIDTH = 10,
    parameter WEIGHT_WIDTH = 8
  )(
   input 								 clk,
   input 								 rst_n,
   input 								 i_start,
   input 								 i_svalid,
   input [SPK_ARRAY_WIDTH-1:0] 						 i_spk_arry,
   input [WEIGHT_ADDR_WIDTH-1:0] 					 address_1,
   input [NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] 				 data_1,
   input 								 cs_1,
   input 								 we_1,
   input 								 oe_1,
   input [WEIGHT_ADDR_WIDTH-1:0] 					 address_2,
   input [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] 				 data_2,
   input 								 cs_2,
   input 								 we_2,
   input 								 oe_2,
   output [OUTPUT_ARRAY_WIDTH-1:0] 					 o_spike,
   output 								 o_svalid
   );
   
   wire [NEURAL_ARRAY_WIDTH-1:0] wo_spike_L0;    
   wire [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] wo_V_L0;   
   wire 							       wo_svalid_L0;

   wire [OUTPUT_ARRAY_WIDTH-1:0] 				       wo_spike_L1;    
   wire [OUTPUT_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] wo_V_L1;   
   wire 							       wo_svalid_L1;

   assign o_spike = wo_spike_L1;
   assign o_svalid = wo_svalid_L1;
   
   SNPC 
     #(
       .WEIGHT_WIDTH           (WEIGHT_WIDTH),
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH        (SPK_ARRAY_WIDTH),
       .STATE_WIDTH            (3),
       .WEIGHT_ADDR_WIDTH      (WEIGHT_ADDR_WIDTH),
       .NEURAL_ARRAY_WIDTH     (NEURAL_ARRAY_WIDTH),
       .OUTPUT_REG             (0)
       )
   SNPC0
     (
      .clk          (clk),
      .rst_n        (rst_n),

      .i_start      (i_start),
      .i_spk_arry   (i_spk_arry),
      .i_svalid     (i_svalid),

      .o_spike     (wo_spike_L0),
      .o_V         (wo_V_L0),
      .o_svalid    (wo_svalid_L0),
`ifdef __NO_LEARNING__
      .address_1 (address_1), 
      .data_1    (data_1   ),
 `ifdef __SPLIT_RAM__
      .i_ram_ena (i_ram_ena),
 `endif
      .cs_1      (cs_1     ), 
      .we_1      (we_1     ), 
      .oe_1      (oe_1     )
`else 
      .address_1 (address_1), 
      .data_1    (data_1   ), 
      .cs_1      (cs_1     ), 
      .we_1      (we_1     ), 
      .oe_1      (oe_1     ),
      .o_weight  (o_weight)
`endif
      );

   SNPC
     #(
       .WEIGHT_WIDTH           (WEIGHT_WIDTH),
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH        (NEURAL_ARRAY_WIDTH),
       .STATE_WIDTH            (3),
       .WEIGHT_ADDR_WIDTH      (WEIGHT_ADDR_WIDTH),
       .NEURAL_ARRAY_WIDTH     (OUTPUT_ARRAY_WIDTH),
       .OUTPUT_REG             (0)
       )
   SNPC1
     (
      .clk        (clk),
      .rst_n      (rst_n),

      .i_start    (i_start),
      .i_spk_arry (wo_spike_L0),
      .i_svalid   (wo_svalid_L0),

      .o_spike    (wo_spike_L1),
      .o_V        (wo_V_L1),
      .o_svalid   (wo_svalid_L1),
`ifdef __NO_LEARNING__
      .address_1  (address_2), 
      .data_1     (data_2   ),
 `ifdef __SPLIT_RAM__
      .i_ram_ena  (i_ram_ena),
 `endif
      .cs_1       (cs_2     ), 
      .we_1       (we_2     ), 
      .oe_1       (oe_2     )
`else 
      .address_1  (address_2), 
      .data_1     (data_2   ), 
      .cs_1       (cs_2     ), 
      .we_1       (we_2     ), 
      .oe_1       (oe_2     ),
      .o_weight   (o_weight)
`endif
      );

endmodule
