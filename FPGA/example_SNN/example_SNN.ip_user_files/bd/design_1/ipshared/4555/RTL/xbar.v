/*
 * Project: NASH
 * Module: crossbar
 * Version: 1.1
 */
`include "common.v"
`include "LIF.v"

module xbar
  #( 
     parameter WEIGHT_WIDTH          = 8,
     parameter SPK_ARRAY_WIDTH       = 784,
     parameter NEURAL_ARRAY_WIDTH    = 48,
     parameter STATE_WIDTH           = `STATE_WIDTH,
     parameter WEIGHT_ADDR_WIDTH     = 10,
     parameter OUTPUT_REG            = 0
     )(
`ifndef FIX_INTEFACE
       input clk,
       input rst_n,
       
       input [SPK_ARRAY_WIDTH-1:0] i_spk_arry,   // input spike with weight
       input                       i_svalid,   // valid of spike
       input [STATE_WIDTH-1:0]     i_State,    // System State, for controlling
       output [WEIGHT_WIDTH*NEURAL_ARRAY_WIDTH-1:0]   o_wspike,    // input spike with weight
       output                      o_svalid,   // valid of spike
       output                      o_last_spk,    

       input [WEIGHT_ADDR_WIDTH-1:0] address_1,
       input cs_1,
       input we_1,
       input oe_1, 
       input [WEIGHT_WIDTH*NEURAL_ARRAY_WIDTH-1:0] data_1
`else
`endif
       );

   ////////////////////////////////////////////////////////////////////////////////
  // Wire/reg declarations
   ////////////////////////////////////////////////////////////////////////////////
   reg [SPK_ARRAY_WIDTH-1:0] 	   r_spk_arry;
   reg [SPK_ARRAY_WIDTH-1:0] 	   w_not_acc_spk_arry;

   wire [SPK_ARRAY_WIDTH-1:0] 	   w_upd_spk_arry;
   wire 			   w_no_spike_in;
   reg [SPK_ARRAY_WIDTH-1:0] 	   w_onehot_spk;
   wire 			   w_have_spk;

   reg [WEIGHT_ADDR_WIDTH-1:0] 	   w_weight_addr;
   reg 				   r_swvalid;

   wire 			   web0;
   wire [WEIGHT_ADDR_WIDTH-1:0]    addr0;
   
   ////////////////////////////////////////////////////////////////////////////////
   // Wire assignments
   ////////////////////////////////////////////////////////////////////////////////
   assign web0 = (i_State == `ST_GENSPK_A_COM)? (w_have_spk|r_swvalid): ~we_1;
   assign addr0 = (i_State == `ST_GENSPK_A_COM)? w_weight_addr:address_1;
   
   assign w_upd_spk_arry = r_spk_arry ^ w_onehot_spk;
   assign w_have_spk = (i_State == `ST_GENSPK_A_COM)? |r_spk_arry:1'b0;
   assign o_svalid = r_swvalid;
   assign o_last_spk = (r_swvalid & ~w_have_spk) | w_no_spike_in;
   assign w_no_spike_in = (i_State == `ST_DOWNLD_SPIKE && i_svalid == 1'b1)? (~(|i_spk_arry)) : 1'b0; 
   ////////////////////////////////////////////////////////////////////////////////
   // Comb. processes
   ////////////////////////////////////////////////////////////////////////////////
   integer 			   i;
   always @ (*) begin
      w_not_acc_spk_arry[0] = ~r_spk_arry[0];
      for (i = 1; i<SPK_ARRAY_WIDTH; i=i+1) begin
         w_not_acc_spk_arry[i] =  ~r_spk_arry[i] & w_not_acc_spk_arry[i-1];
      end
   end

   integer j;
   always @ (*) begin
      w_onehot_spk[0] = r_spk_arry[0];
      for (j = 1; j<SPK_ARRAY_WIDTH; j=j+1) begin
         w_onehot_spk[j] =  r_spk_arry[j] & w_not_acc_spk_arry[j-1];
      end
   end

   integer k;

   always @ (*) begin
      w_weight_addr = 0;
      for (k = 0; k<SPK_ARRAY_WIDTH; k=k+1) begin
         if (w_onehot_spk[k] == 1'b1) begin
            w_weight_addr = k;
         end
      end
   end

   ////////////////////////////////////////////////////////////////////////////////
   // Seq. processes
   ////////////////////////////////////////////////////////////////////////////////
   always @ (posedge clk `__RST_SENS__) begin
      if (~rst_n)
        r_spk_arry = 0;
      else begin
         if (i_State == `ST_DOWNLD_SPIKE && i_svalid == 1'b1) begin
           r_spk_arry = i_spk_arry;
         end else if (i_State == `ST_GENSPK_A_COM)
           r_spk_arry = w_upd_spk_arry;
      end
   end

   always @ (posedge clk `__RST_SENS__) begin
      if (~rst_n)
        r_swvalid = 0;
      else begin
         r_swvalid = w_have_spk;
      end
   end
   ////////////////////////////////////////////////////////////////////////////////
   // module instantiation
   ////////////////////////////////////////////////////////////////////////////////
   genvar gi;
   generate
      for (gi = 0; gi< NEURAL_ARRAY_WIDTH; gi=gi+1) begin : GEN_RAM
`ifdef __FPGA__
	 xilinx_mem_1024x8 R0
		(
		 .clka  ( clk  ),
		 .rsta  ( 1'b0 ),
		 .ena   ( 1'b1 ),
		 .addra ( addr0 ),
		 .dina  ( data_1[(gi+1)*WEIGHT_WIDTH-1:gi*WEIGHT_WIDTH]   ),
		 .douta ( o_wspike[(gi+1)*WEIGHT_WIDTH-1:gi*WEIGHT_WIDTH] ),
		 .wea   ( w_have_spk|r_swvalid )
		 );
`else
	 `RAM_MODEL R0 
	   (
	    .clk0    ( clk ), 
	    .csb0    ( 1'b0 ), 
	    .web0    ( web0 ),
	    .addr0   ( addr0 ), 
	    .din0    ( data_1[(gi+1)*WEIGHT_WIDTH-1:gi*WEIGHT_WIDTH] ),
	    .dout0   ( o_wspike[(gi+1)*WEIGHT_WIDTH-1:gi*WEIGHT_WIDTH] )
	    );
`endif
      end // block: GEN_RAM
   endgenerate

endmodule // xbar
