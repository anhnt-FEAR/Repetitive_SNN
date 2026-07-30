`include "common.v"
`include "LIF.v"

module transform_spike
  (
   input 	clk,
   input 	rst_n,
   input [9:0] 	i_spike,
   input 	i_start,
   input 	i_spike_valid,
   output [3:0] o_number,
   output 	o_done
   );

   reg [7:0]    number_reg_0;
   reg [7:0]    number_reg_1;
   reg [7:0]    number_reg_2;
   reg [7:0]    number_reg_3;
   reg [7:0]    number_reg_4; 
   reg [7:0]    number_reg_5;
   reg [7:0]    number_reg_6;
   reg [7:0]    number_reg_7;
   reg [7:0]    number_reg_8;
   reg [7:0]    number_reg_9;   
  
   reg [7:0] 	time_step_reg;
   reg [7:0] 	tmp_reg;
   reg [3:0] 	result_reg;
   reg 		done_reg;

   always@(posedge clk, negedge rst_n) begin
      if (~rst_n) begin
	 time_step_reg <= 0;
      end else begin
	 if (i_start) begin
	    if (time_step_reg == 8'h27) begin
	       time_step_reg <= 0;
	    end else begin
	       time_step_reg <= time_step_reg + 1;
	    end
	 end
      end
   end

   always@(posedge clk, negedge rst_n) begin
      if (~rst_n) begin
	 number_reg_0 <= 0;
	 number_reg_1 <= 0;
	 number_reg_2 <= 0;
	 number_reg_3 <= 0;
	 number_reg_4 <= 0;
	 number_reg_5 <= 0;
	 number_reg_6 <= 0;
	 number_reg_7 <= 0;
	 number_reg_8 <= 0;
	 number_reg_9 <= 0;
	 
	 result_reg <= 0;
	 tmp_reg    <= 0;
	 done_reg   <= 1'b0;
      end else begin
	 if (i_spike_valid) begin
	    case (i_spike)
	      10'b0000000001 : begin
		 number_reg_0 <= number_reg_0 + 1;
		 if (number_reg_0 > tmp_reg) begin
		    result_reg <= 4'h0;
		    tmp_reg    <= number_reg_0;
		 end
	      end
	      10'b0000000010 : begin
		 number_reg_1 <= number_reg_1 + 1;
		 if (number_reg_1 > result_reg) begin
		    result_reg <= 4'h1;
		    tmp_reg    <= number_reg_1;		    
		 end
	      end
	      10'b0000000100 : begin
		 number_reg_2 <= number_reg_2 + 1;
		 if (number_reg_2 > result_reg) begin
		    result_reg <= 4'h2;
		    tmp_reg    <= number_reg_2;		    
		 end
	      end
	      10'b0000001000 : begin
		 number_reg_3 <= number_reg_3 + 1;
		 if (number_reg_3 > result_reg) begin
		    result_reg <= 4'h3;
		    tmp_reg    <= number_reg_3;		    
		 end
	      end
	      10'b0000010000 : begin
		 number_reg_4 <= number_reg_4 + 1;
		 if (number_reg_4 > result_reg) begin
		    result_reg <= 4'h4;
		    tmp_reg    <= number_reg_4;		    
		 end
	      end
	      10'b0000100000 : begin
		 number_reg_5 <= number_reg_5 + 1;
		 if (number_reg_5 > result_reg) begin
		    result_reg <= 4'h5;
		    tmp_reg    <= number_reg_5;		    
		 end
	      end
	      10'b0001000000 : begin
		 number_reg_6 <= number_reg_6 + 1;
		 if (number_reg_6 > result_reg) begin
		    result_reg <= 4'h6;
		    tmp_reg    <= number_reg_6;		    
		 end
	      end
	      10'b0010000000 : begin
		 number_reg_7 <= number_reg_7 + 1;
		 if (number_reg_7 > result_reg) begin
		    result_reg <= 4'h7;
		    tmp_reg    <= number_reg_7;		    
		 end
	      end
	      10'b0100000000 : begin
		 number_reg_8 <= number_reg_8 + 1;
		 if (number_reg_8 > result_reg) begin
		    result_reg <= 4'h8;
		    tmp_reg    <= number_reg_8;		    
		 end
	      end
	      10'b1000000000 : begin
		number_reg_9 <= number_reg_9 + 1;
		 if (number_reg_9 > result_reg) begin
		    result_reg <= 4'h9;
		    tmp_reg    <= number_reg_9;
		 end
	      end
	    endcase // case (i_spike)
	    if (time_step_reg == 8'h27) begin
	       done_reg <= 1'b1;
	    end else begin
	       done_reg <= 1'b0;
	    end 
	 end else begin // if (i_spike_valid)
	    done_reg <= 1'b0;
	 end // else: !if(i_spike_valid)
	 if (done_reg) begin
	    number_reg_0 <= 0;
	    number_reg_1 <= 0;
	    number_reg_2 <= 0;
	    number_reg_3 <= 0;
	    number_reg_4 <= 0;
	    number_reg_5 <= 0;
	    number_reg_6 <= 0;
	    number_reg_7 <= 0;
	    number_reg_8 <= 0;
	    number_reg_9 <= 0;
	 end
      end
   end // always@ (posedge clk, negedge rst_n)

   assign o_done = done_reg;
   assign o_number = result_reg;
endmodule // transform_spike
