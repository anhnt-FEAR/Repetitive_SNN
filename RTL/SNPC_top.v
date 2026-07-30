`include "common.v"
`include "LIF.v"

module SNPC_top
  #(
    parameter LIF_NEURON_OVRFL_WIDTH 	= 8,
    parameter SPK_ARRAY_WIDTH 		= 784,
    parameter NEURAL_ARRAY_L1 		= 256,
    parameter NEURAL_ARRAY_L2 		= 256,  
    parameter OUTPUT_ARRAY_WIDTH 	= 10,
    parameter WEIGHT_ADDR_WIDTH 	= 10,
    parameter WEIGHT_WIDTH 		= 8
  )(
   input 								 clk,
   input 								 rst_n,
   input 								 i_start,
   input 								 i_svalid,
   input [SPK_ARRAY_WIDTH-1:0] 						 i_spk_arry,

`ifdef __REPETITION__
   input 								 i_core_ts, 
   input 								 i_rep_ts,

   input								 i_rep_layer2,
   input                                               			 i_rep_layer3,
   input 								 i_rep_layer4, 
     
   input 								 i_skip_com, 
   input								 i_not_skip_com,
   input 								 i_done,  
`endif
 
   input [WEIGHT_ADDR_WIDTH-1:0] 					 address_1,
   //input [NEURAL_ARRAY_L1*WEIGHT_WIDTH-1:0] 				 data_1,
   input [31:0]                                                          data_1, 
   input 								 cs_1,
   input 								 we_1,
   input 								 oe_1,
   
   input [WEIGHT_ADDR_WIDTH-1:0] 					 address_2,
   //input [NEURAL_ARRAY_L2*WEIGHT_WIDTH-1:0] 				 data_2,
   input [31:0]                                                          data_2,
   input 								 cs_2,
   input 								 we_2,
   input 								 oe_2,
   
   input [WEIGHT_ADDR_WIDTH-1:0] 					 address_3,
   //input [OUTPUT_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] 				 data_3,
   input [31:0]                                                          data_3,
   input 								 cs_3,
   input 								 we_3,
   input 								 oe_3,
   
   output [OUTPUT_ARRAY_WIDTH-1:0] 					 o_spike,
   output 								 o_svalid
   );
   
   wire [NEURAL_ARRAY_L1-1:0] 						wo_spike_L0;    
   wire [NEURAL_ARRAY_L1*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] 	wo_V_L0;   
   wire 							       	wo_svalid_L0;
  
   wire [NEURAL_ARRAY_L2-1:0] 						wo_spike_L1;    
   wire [NEURAL_ARRAY_L2*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] 	wo_V_L1;   
   wire 							       	wo_svalid_L1;


   wire [OUTPUT_ARRAY_WIDTH-1:0] 				       	wo_spike_L2;    
   wire [OUTPUT_ARRAY_WIDTH*(WEIGHT_WIDTH+LIF_NEURON_OVRFL_WIDTH)-1:0] 	wo_V_L2;   
   wire 							       	wo_svalid_L2;

`ifdef __REPETITION__
   wire 								w_svalid_SNPC0;
   wire 								w_svalid_SNPC1; 
   wire 								w_svalid_SNPC2; 
   
   wire 								w_store_SNPC0;
   wire                                               			w_store_SNPC1;
   wire 								w_store_SNPC2; 
   
   wire 								w_start_SNPC0; 
   wire									w_start_SNPC1;
   wire                                               			w_start_SNPC2;
   
   wire 								w_en_SRAM_SNPC0;
   wire 								w_en_SRAM_SNPC1;
   wire 								w_en_SRAM_SNPC2; 
 
   wire [2:0]								w_o_st;
`endif 

   assign o_spike 	= wo_spike_L2;
   assign o_svalid	= wo_svalid_L2;
   
   //assign o_spike_SNPC0 = wo_spike_L0; 
   //assign o_svalid_SNPC0 = wo_svalid_L0; 
   //assign o_spike_SNPC1 = wo_spike_L1; 
   //assign o_svalid_SNPC1 = wo_spike_L1; 
 
`ifdef __REPETITION__ 
   REP_CNTRL
    #(
       .ST_REP_WIDTH 		(3)
     )
   REP_CNTRL0
    (
	.clk (clk), 
	.rst_n (rst_n),
	.i_start (i_start), 
	.i_core_ts (i_core_ts),
	.i_rep_ts (i_rep_ts),

	.i_rep_layer2 (i_rep_layer2),
	.i_rep_layer3 (i_rep_layer3),
	.i_rep_layer4 (i_rep_layer4), 

      	.i_skip_com (i_skip_com), 
     	.i_not_skip_com (i_not_skip_com),
     	.i_done (i_done),
  
	//.i_svalid_SNPC0 (i_svalid),
        //.i_svalid_SNPC1 (wo_svalid_L0), 
        //.i_svalid_SNPC2 (wo_svalid_L1),
        .i_svalid (i_svalid),

      	.o_store_SNPC0 (w_store_SNPC0), 
      	.o_store_SNPC1 (w_store_SNPC1),
	.o_store_SNPC2 (w_store_SNPC2),
 
      	.o_start_SNPC0 (w_start_SNPC0),
      	.o_start_SNPC1 (w_start_SNPC1),
        .o_start_SNPC2 (w_start_SNPC2),
         
 	
	.o_svalid_SNPC0 (w_svalid_SNPC0), 
	.o_svalid_SNPC1 (w_svalid_SNPC1), 
        .o_svalid_SNPC2 (w_svalid_SNPC2),
	
        .o_en_SRAM_SNPC0 (w_en_SRAM_SNPC0),
        .o_en_SRAM_SNPC1 (w_en_SRAM_SNPC1),
        .o_en_SRAM_SNPC2 (w_en_SRAM_SNPC2), 

      	.o_st (w_o_st)
    );
`endif

   SNPC 
     #(
       .WEIGHT_WIDTH           (WEIGHT_WIDTH),
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH        (SPK_ARRAY_WIDTH),
       .STATE_WIDTH            (3),
       .WEIGHT_ADDR_WIDTH      (WEIGHT_ADDR_WIDTH),
       .NEURAL_ARRAY_WIDTH     (NEURAL_ARRAY_L1),
       .OUTPUT_REG             (0)
       )
   SNPC0
     (
      .clk          (clk),
      .rst_n        (rst_n),

`ifdef __REPETITION__
      .i_start      (w_start_SNPC0),
      .i_store      (w_store_SNPC0),
      .i_svalid	    (w_svalid_SNPC0),
      .i_en_SRAM    (w_en_SRAM_SNPC0),
    
`else
      .i_start 	    (i_start),
      .i_svalid     (i_svalid),
`endif 

      .i_spk_arry   (i_spk_arry),
      //.i_svalid     (i_svalid),

      .o_spike     (wo_spike_L0),
      .o_V         (wo_V_L0),
      .o_svalid    (wo_svalid_L0),
`ifdef __NO_LEARNING__
 `ifdef __SPLIT_RAM__
      .i_ram_ena (i_ram_ena),
 `endif
`else 
      .o_weight  (o_weight),
`endif
      .address_1 (address_1), 
      .data_1    (data_1   ),
      .cs_1      (cs_1     ), 
      .we_1      (we_1     ), 
      .oe_1      (oe_1     )
      );
   
   SNPC 
     #(
       .WEIGHT_WIDTH           (WEIGHT_WIDTH),
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH        (NEURAL_ARRAY_L1),
       .STATE_WIDTH            (3),
       .WEIGHT_ADDR_WIDTH      (WEIGHT_ADDR_WIDTH),
       .NEURAL_ARRAY_WIDTH     (NEURAL_ARRAY_L2),
       .OUTPUT_REG             (0)
       )
   SNPC1
     (
      .clk          (clk),
      .rst_n        (rst_n),

`ifdef __REPETITION__
      .i_start      (w_start_SNPC1),
      .i_store      (w_store_SNPC1),
      .i_svalid     (w_svalid_SNPC1), 
      .i_en_SRAM    (w_en_SRAM_SNPC1),  
`else
      .i_start 	    (i_start),
      .i_svalid     (wo_svalid_L0),
`endif 
      
      .i_spk_arry   (wo_spike_L0),
      //.i_svalid     (wo_svalid_L0),

      .o_spike     (wo_spike_L1),
      .o_V         (wo_V_L1),
      .o_svalid    (wo_svalid_L1),
`ifdef __NO_LEARNING__
 `ifdef __SPLIT_RAM__
      .i_ram_ena (i_ram_ena),
 `endif
`else 
      .o_weight  (o_weight),
`endif
      .address_1 (address_2), 
      .data_1    (data_2   ),
      .cs_1      (cs_2     ), 
      .we_1      (we_2     ), 
      .oe_1      (oe_2     )
      );


   SNPC
     #(
       .WEIGHT_WIDTH           (WEIGHT_WIDTH),
       .LIF_NEURON_OVRFL_WIDTH (LIF_NEURON_OVRFL_WIDTH),
       .SPK_ARRAY_WIDTH        (NEURAL_ARRAY_L2),
       .STATE_WIDTH            (3),
       .WEIGHT_ADDR_WIDTH      (WEIGHT_ADDR_WIDTH),
       .NEURAL_ARRAY_WIDTH     (OUTPUT_ARRAY_WIDTH),
       .OUTPUT_REG             (0)
       )
   SNPC2
     (
      .clk        (clk),
      .rst_n      (rst_n),

`ifdef __REPETITION__
      .i_start      (w_start_SNPC2),
      .i_store      (w_store_SNPC2), 
      .i_svalid     (w_svalid_SNPC2),
      .i_en_SRAM    (w_en_SRAM_SNPC2),  
`else
      .i_start 	    (i_start),
      .i_svalid     (wo_svalid_L1),
`endif 

      .i_spk_arry (wo_spike_L1),
      //.i_svalid   (wo_svalid_L1),
`ifdef __NO_LEARNING__
 `ifdef __SPLIT_RAM__
      .i_ram_ena  (i_ram_ena),
 `endif
`else 
      .o_weight   (o_weight),
`endif
      .o_spike    (wo_spike_L2),
      .o_V        (wo_V_L2),
      .o_svalid   (wo_svalid_L2),
      .address_1  (address_3), 
      .data_1     (data_3   ),
      .cs_1       (cs_3     ), 
      .we_1       (we_3     ), 
      .oe_1       (oe_3     )
      );

endmodule
