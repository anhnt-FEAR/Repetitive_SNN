module weights_l1_rom
  (
   input 	      clk,
   input 	      rst_n,
   output reg [383:0] data_out,
   output reg [9:0]   addr_out,
   output reg 	      cs,
   output reg 	      we,
   output reg 	      oe);

   parameter SIZE = 784;
   reg [383:0] 	      rom [SIZE-1:0];
   reg 		      read_reg;
   reg [9:0] 	      counter_reg;
   initial begin
      $readmemh("../RTL/weights_l1.mem", rom);
   end

   always@(posedge clk, negedge rst_n) begin
      if (~rst_n) begin
	 read_reg <= 1'b1;
	 addr_out <= 10'b0;
	 data_out <= 0;
	 counter_reg <= 10'b0;
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
