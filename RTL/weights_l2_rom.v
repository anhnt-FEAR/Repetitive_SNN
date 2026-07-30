module weights_l2_rom
  (
   input 	      clk,
   input 	      rst_n,
   output reg [79:0]  data_out,
   output reg [9:0]   addr_out,
   output reg 	      cs,
   output reg 	      we,
   output reg 	      oe);

   parameter SIZE = 48;
   reg [79:0] 	      rom [SIZE-1:0];
   reg 		      read_reg;
   reg [9:0] 	      counter_reg;
   integer 	      i;
   initial begin
      $readmemh("../RTL/weights_l2.mem", rom);
      i = 0;
   end

   always@(posedge clk, negedge rst_n) begin
      if (~rst_n) begin
	 read_reg <= 1'b1;
	 addr_out <= 10'b0;
	 counter_reg <= 10'b0;	 
	 data_out <= 0;
	 cs <= 1'b0;
	 we <= 1'b0;
	 oe <= 1'b0;
      end else begin
	 if (read_reg) begin
	    cs <= 1'b1;
	    we <= 1'b1;
	    data_out <= rom[counter_reg];
	    if (counter_reg == SIZE - 1) begin
	       counter_reg <= 0;
	       read_reg <= 1'b0;	       
	    end else begin
	       counter_reg <= counter_reg + 1;
	    end
	 end else begin // if (read_reg)
	    counter_reg <= 0;	    
	    cs <= 1'b0;
	    we <= 1'b0;
	 end // else: !if(read_reg)
	 
	 addr_out <= counter_reg;
      end
   end
endmodule
