/*
 * Project: Compression SNN 
 * Modules: Repetition controller
 * Version: 1.0
 */
`include "common.v" 
module REP_CNTRL
 #(
    parameter ST_REP_WIDTH = `ST_REP_WIDTH
   )(
     input clk, 
     input rst_n, 
     input i_start, 

     input i_core_ts, 
     input i_rep_ts,

     input i_rep_layer2,
     input i_rep_layer3, 
     input i_rep_layer4,
 
     input i_skip_com, 
     input i_not_skip_com, 
     input i_done,
     
     input i_svalid,
     //input i_svalid_SNPC1,
     //input i_svalid_SNPC2, 

     output o_store_SNPC0, // signal for store output
     output o_store_SNPC1, // signal for store output
     output o_store_SNPC2, 
     
     output o_start_SNPC0, // signal for computation or skip at SNPC0 
     output o_start_SNPC1, // signal for computation or skip at SNPC1
     output o_start_SNPC2, // signal for computation or skip at SNPC2
     
     output o_svalid_SNPC0,
     output o_svalid_SNPC1, 
     output o_svalid_SNPC2,
     
     output o_en_SRAM_SNPC0, 
     output o_en_SRAM_SNPC1, 
     output o_en_SRAM_SNPC2,  
	
     output [ST_REP_WIDTH-1:0] o_st
    );


   reg [ST_REP_WIDTH-1:0]	r_st; 
   reg [ST_REP_WIDTH-1:0]	w_next_st; 
   
   wire w_IDLE_TO_CHECK; 
   wire w_CHECK_TO_CORE_TS;
   wire w_CHECK_TO_SKIP; 
   wire w_CORE_TS_TO_COMPUTE; 
   wire w_SKIP_TO_COMPUTE;
   wire w_COMPUTE_TO_LOAD_DATA;
   wire w_SKIP_TO_IDLE; 
   wire w_LOAD_DATA_TO_IDLE;

   wire w_start_rep_SNPC0; 
   wire w_start_rep_SNPC1;
   wire w_start_rep_SNPC2;
   wire w_start_not_rep_SNPC0; 
   wire w_start_not_rep_SNPC1;
   wire w_start_not_rep_SNPC2;


   wire w_store_SNPC0;
   wire w_store_SNPC1;
   wire w_store_SNPC2; 
   
   wire w_en_SRAM_SNPC0; 
   wire w_en_SRAM_SNPC1;
   wire w_en_SRAM_SNPC2;

   reg r_en_SRAM_SNPC0; 
   reg r_en_SRAM_SNPC1;
   reg r_en_SRAM_SNPC2;


   wire w_svalid_rep_SNPC0;
   wire w_svalid_rep_SNPC1;
   wire w_svalid_rep_SNPC2; 

   wire w_svalid_not_rep_SNPC0;
   wire w_svalid_not_rep_SNPC1;
   wire w_svalid_not_rep_SNPC2; 


   assign w_IDLE_TO_CHECK 	= i_start;
   assign w_CHECK_TO_CORE_TS 	= i_core_ts; 
   assign w_CHECK_TO_SKIP	= i_rep_ts; 
   assign w_CORE_TS_TO_COMPUTE	= 1'b1; 
   assign w_SKIP_TO_COMPUTE 	= i_not_skip_com; 
   assign w_SKIP_TO_NOT_COMPUTE	= i_skip_com;
   assign w_NOT_COMPUTE_TO_IDLE = 1'b1;  
   assign w_LOAD_DATA_TO_IDLE	= 1'b1;
   assign w_COMPUTE_TO_LOAD_DATA = 1'b1; 

   assign o_st 			= r_st;

   ///////////////////////////////////////////////////////////////////////////////////////////
   //control store signal 
   assign w_store_SNPC0		= (i_core_ts) ? 1'b1:1'b0;
   assign w_store_SNPC1		= (i_core_ts) ? 1'b1:1'b0; 
   //assign w_store_SNPC2		= (i_core_ts) ? 1'b1:1'b0;
   
   assign o_store_SNPC0 	= (i_rep_layer3) ? w_store_SNPC0:1'b1; 
   assign o_store_SNPC1 	= (i_rep_layer4) ? w_store_SNPC1:1'b1; 
   assign o_store_SNPC2		= 1'b1;
   ////////////////////////////////////////////////////////////////////////////////////////////

   ////////////////////////////////////////////////////////////////////////////////////////////
   //control start signal
   assign w_start_rep_SNPC0	= (r_st == `ST_COMPUTE) ? 1'b1:1'b0;
   assign w_start_rep_SNPC1     = (r_st == `ST_COMPUTE) ? 1'b1:1'b0;
   assign w_start_rep_SNPC2	= (r_st == `ST_COMPUTE) ? 1'b1:1'b0; 
  
   assign w_start_not_rep_SNPC0 = (r_st == `ST_SKIP || r_st == `ST_COMPUTE) ? 1'b1:1'b0;
   assign w_start_not_rep_SNPC1 = (r_st == `ST_SKIP || r_st == `ST_COMPUTE) ? 1'b1:1'b0;
   assign w_start_not_rep_SNPC2 = (r_st == `ST_SKIP) ? 1'b1:1'b0;

   assign o_start_SNPC0		= (i_rep_layer2) ? w_start_rep_SNPC0:w_start_not_rep_SNPC0;
   assign o_start_SNPC1	        = (i_rep_layer3) ? w_start_rep_SNPC1:w_start_not_rep_SNPC1;
   assign o_start_SNPC2         = w_start_rep_SNPC2 || w_start_not_rep_SNPC2;
   ////////////////////////////////////////////////////////////////////////////////////////////
   
   ///////////////////////////////////////////////////////////////////////////////////////////
   //control input valid signal
   assign w_svalid_rep_SNPC0    = (r_st == `ST_LOAD_DATA) ? 1'b1:1'b0; //computation case
   assign w_svalid_rep_SNPC1	= (r_st == `ST_LOAD_DATA) ? 1'b1:1'b0;
   assign w_svalid_rep_SNPC2	= (r_st == `ST_LOAD_DATA) ? 1'b1:1'b0;
   
   assign w_svalid_not_rep_SNPC0 = ((r_st == `ST_NOT_COMPUTE) || (r_st == `ST_LOAD_DATA)) ? 1'b1:1'b0; 
   assign w_svalid_not_rep_SNPC1 = ((r_st == `ST_NOT_COMPUTE) || (r_st == `ST_LOAD_DATA)) ? 1'b1:1'b0;
   assign w_svalid_not_rep_SNPC2 = (r_st == `ST_NOT_COMPUTE) ? 1'b1:1'b0;  
   
   assign o_svalid_SNPC0        = (i_rep_layer2) ? w_svalid_rep_SNPC0:w_svalid_not_rep_SNPC0; 
   assign o_svalid_SNPC1        = (i_rep_layer3) ? w_svalid_rep_SNPC1:w_svalid_not_rep_SNPC1;
   assign o_svalid_SNPC2        = w_svalid_rep_SNPC2 || w_svalid_not_rep_SNPC2;
   ////////////////////////////////////////////////////////////////////////////////////////////
   
   ////////////////////////////////////////////////////////////////////////////////////////////
   //control enable SRAM signal
   assign w_en_SRAM_SNPC0	= r_en_SRAM_SNPC0; 
   assign w_en_SRAM_SNPC1	= r_en_SRAM_SNPC1; 
   assign w_en_SRAM_SNPC2	= r_en_SRAM_SNPC2;

   assign o_en_SRAM_SNPC0       = (i_rep_layer2 && i_skip_com) ? w_en_SRAM_SNPC0:1'b0; 
   assign o_en_SRAM_SNPC1       = (i_rep_layer3 && i_skip_com) ? w_en_SRAM_SNPC1:1'b0;  
   assign o_en_SRAM_SNPC2 	= 1'b0;

   always @(posedge clk) begin 
    if (~rst_n) begin 
      r_en_SRAM_SNPC0 = 1'b0;
      r_en_SRAM_SNPC1 = 1'b0;
      r_en_SRAM_SNPC2 = 1'b0; 
    end else begin 
      if (i_rep_ts && r_st == `ST_SKIP) begin 
        r_en_SRAM_SNPC0 = 1'b1; 
        r_en_SRAM_SNPC1 = 1'b1; 
        r_en_SRAM_SNPC2 = 1'b1;
      end else if (i_core_ts) begin 
        r_en_SRAM_SNPC0 = 1'b0;
        r_en_SRAM_SNPC1 = 1'b0; 
        r_en_SRAM_SNPC2 = 1'b0;
      end 
    end 
  end 
      
   ////////////////////////////////////////////////////////////////////////////////////////////
   always @(*) begin 
      case (r_st)
	`ST_REP_IDLE:
	  if (w_IDLE_TO_CHECK)
	    w_next_st <= `ST_CHECK; 
          else 
            w_next_st <= `ST_REP_IDLE;

        `ST_CHECK:
          if (w_CHECK_TO_CORE_TS) 
            w_next_st <= `ST_CORE; 
          else if (w_CHECK_TO_SKIP) 
            w_next_st <= `ST_SKIP; 
          else 
            w_next_st <= `ST_CHECK;

        `ST_CORE: 
          if (w_CORE_TS_TO_COMPUTE) 
            w_next_st <= `ST_COMPUTE;
          else 
            w_next_st <= `ST_CORE;

        `ST_SKIP:
          if (w_SKIP_TO_COMPUTE) 
            w_next_st <= `ST_COMPUTE; 
          else if (w_SKIP_TO_NOT_COMPUTE)
            w_next_st <= `ST_NOT_COMPUTE; 
          else 
            w_next_st <= `ST_SKIP; 
        
        `ST_NOT_COMPUTE: 
          if (w_NOT_COMPUTE_TO_IDLE)
            w_next_st <= `ST_REP_IDLE;
          else
            w_next_st <= `ST_NOT_COMPUTE; 

        `ST_COMPUTE: 
	  if (w_COMPUTE_TO_LOAD_DATA) 
            w_next_st <= `ST_LOAD_DATA; 
          else 
            w_next_st <= `ST_COMPUTE;
 
	`ST_LOAD_DATA:
	  if (w_LOAD_DATA_TO_IDLE)
	    w_next_st <= `ST_REP_IDLE; 
          else 
            w_next_st <= `ST_LOAD_DATA;
     
      default:
        w_next_st <= `ST_REP_IDLE;
    endcase
  end 


  always @(posedge clk, negedge rst_n) begin 
    if (~rst_n) 
       r_st <= `ST_REP_IDLE; 
    else begin 
       r_st <= w_next_st;
    end
  end 

endmodule

        
