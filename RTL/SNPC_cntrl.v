/*
 * Project: NASH
 * Module: SNPC_cntrl
 * Version: 1.1
 */
`include "common.v"
`include "LIF.v"

module SNPC_cntrl 
  #( 
     parameter WEIGHT_WIDTH   = 8,
     parameter SPK_ARRAY_WIDTH = 784,
     parameter STATE_WIDTH    = `STATE_WIDTH,
     parameter WEIGHT_ADDR_WIDTH = 10,
     parameter OUTPUT_REG     = 0
     )(
`ifndef FIX_INTEFACE
       input clk,           // system clock
       input rst_n,         // system reset
       input i_start,
       input i_io_svalid,   // valid of spike
       input i_xbar_last_spk,
`ifdef __NO_LEARNING__
`else       
       input i_LB_done,
`endif
       output [STATE_WIDTH-1:0] o_State
`else
`endif
       );

   ////////////////////////////////////////////////////////////////////////////////
  // Wire/reg declarations
   ////////////////////////////////////////////////////////////////////////////////
   reg [WEIGHT_WIDTH-1:0] 	r_State;
   reg [WEIGHT_WIDTH:0] 	w_next_State;

   wire 			w_IDLE_TO_DLSPK;
   wire 			w_DLSPK_TO_GENSPK;
   wire 			w_GENSPK_TO_LEAK;
   wire 			w_LEAK_TO_FIRE;
   wire 			w_FIRE_TO_UPSPK;
   wire 			w_UPSPK_TO_IDLE;

   ////////////////////////////////////////////////////////////////////////////////
   // Wire assignments
   ////////////////////////////////////////////////////////////////////////////////
   assign w_IDLE_TO_DLSPK = i_start;
`ifdef __NO_LEARNING__
   assign w_DLSPK_TO_GENSPK = i_io_svalid;

`else
   assign w_DLSPK_TO_GENSPK = i_LB_done; 
`endif

   assign w_DLSPK_TO_IDLE = i_xbar_last_spk;

   assign w_GENSPK_TO_LEAK = i_xbar_last_spk;
   assign w_LEAK_TO_FIRE = 1'b1;
   assign w_FIRE_TO_UPSPK = 1'b1;
   assign w_UPSPK_TO_IDLE = 1'b1; // i have no control about this parameters

   assign o_State = r_State;
   ////////////////////////////////////////////////////////////////////////////////
   // Comb. processes
   ////////////////////////////////////////////////////////////////////////////////

   always @(*) begin
      case (r_State)
        `ST_IDLE:
          if (w_IDLE_TO_DLSPK) 
            w_next_State <= `ST_DOWNLD_SPIKE;
          else
            w_next_State <= `ST_IDLE;
        
        `ST_DOWNLD_SPIKE:
          if (w_DLSPK_TO_IDLE)
            w_next_State <= `ST_IDLE;
          else if (w_DLSPK_TO_GENSPK) 
            w_next_State <= `ST_GENSPK_A_COM;
          else
            w_next_State <= `ST_DOWNLD_SPIKE;
        
        `ST_GENSPK_A_COM: 
          if (w_GENSPK_TO_LEAK) 
            w_next_State <= `ST_LEAK;
          else
            w_next_State <= `ST_GENSPK_A_COM;
        
        `ST_LEAK:
          if (w_LEAK_TO_FIRE) 
            w_next_State <= `ST_FIRE;
          else
            w_next_State <= `ST_LEAK;
        
        `ST_FIRE:
          if (w_FIRE_TO_UPSPK) 
            w_next_State <= `ST_UPLD_SPIKE;
          else
            w_next_State <= `ST_FIRE;
        
        `ST_UPLD_SPIKE:
          if (w_UPSPK_TO_IDLE) 
            w_next_State <= `ST_IDLE;
          else
            w_next_State <= `ST_UPLD_SPIKE;
        
        default: 
          w_next_State <= `ST_IDLE;
      endcase
   end

   ////////////////////////////////////////////////////////////////////////////////
   // Seq. processes
   ////////////////////////////////////////////////////////////////////////////////
   always @ (posedge clk, negedge rst_n) begin
      if (~rst_n)
         r_State <= `ST_IDLE;
      else begin
         r_State <= w_next_State;
      end
   end

endmodule // SNPC_cntrl 
