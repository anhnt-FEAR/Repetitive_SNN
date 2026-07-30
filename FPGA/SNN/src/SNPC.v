/*
 * Project: NASH
 * Module: SNPC
 * Version: 1.1 (add STDP learning)
 */
`include "common.v"
`include "LIF.v"

module SNPC
  #( 
     parameter WEIGHT_WIDTH           = 8,
     parameter LIF_NEURON_OVRFL_WIDTH = 8,
     parameter SPK_ARRAY_WIDTH        = 784,
     parameter STATE_WIDTH            = `STATE_WIDTH,
     parameter WEIGHT_ADDR_WIDTH      = 10,
     parameter NEURAL_ARRAY_WIDTH     = 48,
     parameter OUTPUT_REG             = 0
     )(
`ifndef FIX_INTEFACE
       input               clk,            // system clock
       input               rst_n,          // system reset
 `ifdef __NO_LEARNING__
       input [WEIGHT_ADDR_WIDTH-1:0] address_1,
       input cs_1,
       input we_1,
       input oe_1, 
       inout [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] data_1,
 `else
  `ifdef __EXT_RAM_INF__
       input [WEIGHT_ADDR_WIDTH-1:0] address_1,
       input cs_1,
       input we_1,
       input oe_1, 
       inout [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] data_1,
  `endif
       output [SPK_ARRAY_WIDTH*NEURAL_ARRAY_WIDTH*WEIGHT_WIDTH-1:0] o_weight,
 `endif

       input i_start,

       input [SPK_ARRAY_WIDTH-1:0] i_spk_arry,   // input spike with weight
       input                       i_svalid,   // valid of spike
       output [NEURAL_ARRAY_WIDTH*(LIF_NEURON_OVRFL_WIDTH+WEIGHT_WIDTH)-1:0] o_V,   // input spike with weight
       output [NEURAL_ARRAY_WIDTH-1:0]                   o_spike,
       output                                            o_svalid,
  

       output TBD
`else
`endif
       );
   ////////////////////////////////////////////////////////////////////////////////
  // Wire/reg declarations
   ////////////////////////////////////////////////////////////////////////////////
   wire [STATE_WIDTH-1:0] w_cntrl_State;
   wire [WEIGHT_WIDTH*NEURAL_ARRAY_WIDTH-1:0] w_xbar_wspike;
   wire 				      w_xbar_last_spk;
   wire 				      w_LB_done;
   wire 				      w_xbar_svalid;
   wire 				      w_spk_post_val;

`ifndef __NO_LEARNING__
 `ifndef __EXT_RAM_INF__
   wire [WEIGHT_ADDR_WIDTH-1:0] 	      address_1;
   wire 				      cs_1;
   wire 				      we_1;
   wire 				      oe_1; 
   wire [NEURAL_ARRAY_WIDTH*(WEIGHT_WIDTH)-1:0] data_1;
   wire 					w_spk_post_val;
 `endif
`endif

   ////////////////////////////////////////////////////////////////////////////////
   // Wire assignments
   ////////////////////////////////////////////////////////////////////////////////
`ifndef __NO_LEARNING__
 `ifndef __EXT_RAM_INF__
   assign w_spk_post_val = (w_cntrl_State == `ST_FIRE)? 1'b1:1'b0;
 `endif
`endif
   assign o_svalid = (w_cntrl_State == `ST_FIRE)? 1'b1:1'b0;
   ////////////////////////////////////////////////////////////////////////////////
   // module instantiations
   ////////////////////////////////////////////////////////////////////////////////
   SNPC_cntrl
     #(
       .WEIGHT_WIDTH (WEIGHT_WIDTH)
       )
   CNTL0 
     (
      .clk          (clk),
      .rst_n        (rst_n),
      
      .i_start         (i_start),
      .i_io_svalid     (i_svalid),
      .i_xbar_last_spk (w_xbar_last_spk),
      .i_LB_done       (w_LB_done),

      .o_State (w_cntrl_State)
      );

   xbar 
     #(
       .WEIGHT_WIDTH       (WEIGHT_WIDTH),
       .SPK_ARRAY_WIDTH    (SPK_ARRAY_WIDTH),
       .NEURAL_ARRAY_WIDTH (NEURAL_ARRAY_WIDTH),
       .STATE_WIDTH        (STATE_WIDTH),
       .WEIGHT_ADDR_WIDTH  (WEIGHT_ADDR_WIDTH),
       .OUTPUT_REG         (OUTPUT_REG)
       )
   XBAR0
     (
      .clk          (clk),
      .rst_n        (rst_n),

      .i_spk_arry   (i_spk_arry),
      .i_svalid     (i_svalid),
      .i_State      (w_cntrl_State),
      
      .o_wspike     (w_xbar_wspike),
      .o_svalid     (w_xbar_svalid),
      .o_last_spk   (w_xbar_last_spk),
      
      .address_1 (address_1), 
      .data_1    (data_1   ), 
      .cs_1      (cs_1     ), 
      .we_1      (we_1     ), 
      .oe_1      (oe_1     ),
      .TBD       (TBD     )
      );
   genvar 					gi;
   generate 
      for (gi = 0; gi< NEURAL_ARRAY_WIDTH; gi=gi+1) begin: LIF_GEN
	 LIF_neuron 
		#( 
		   .WEIGHT_WIDTH (WEIGHT_WIDTH),
		   .OUTPUT_REG    (0)
		   )
	 LIF0
		(
		 .clk          (clk),
		 .rst_n        (rst_n),

		 .i_wspike     (w_xbar_wspike[(gi+1)*WEIGHT_WIDTH-1:gi*WEIGHT_WIDTH]),
		 .i_svalid     (w_xbar_svalid),
		 .i_State      (w_cntrl_State),

		 .o_V          (o_V[(gi+1)*(LIF_NEURON_OVRFL_WIDTH+WEIGHT_WIDTH)-1:gi*(LIF_NEURON_OVRFL_WIDTH+WEIGHT_WIDTH)]),
		 .o_spike      (o_spike[gi]),

		 .TBD(TBD)
		 );
      end
   endgenerate

`ifndef __NO_LEARNING__
   LB 
     #( .OUTPUT_REG    (0))
   LB0
     (
      .clk          (clk),
      .rst_n        (rst_n),

      .i_spk_pre      (i_spk_arry),
      .i_spk_pre_val  (i_svalid),
      .i_spk_post     (o_spike),
      .i_spk_post_val (w_spk_post_val),
      
 `ifndef __EXT_RAM_INF__
      .address_1 (address_1), 
      .data_1    (data_1   ), 
      .cs_1      (cs_1     ), 
      .we_1      (we_1     ), 
      .oe_1      (oe_1     ),
 `endif
      .o_weight       (o_weight),
      .o_done         (w_LB_done)
      
      );

`endif
endmodule
