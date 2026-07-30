module spike_rom
  (
   input clk,
   input rst_n,
   input i_start,
   output reg [783:0] spk_arry,
   output svalid
   );

   parameter SIZE = 40;
   reg [783:0] rom [SIZE-1:0];
   reg 	       enable;
   integer     i;
   initial begin
      $readmemh("../RTL/spike-2.mem", rom);
      i = 0;
   end

   assign svalid = enable;

   always@(posedge clk, negedge rst_n) begin
      if (~rst_n) begin
	 enable <= 1'b0;
      end else begin
	 if (i_start) begin
	    enable <= 1'b1;
	 end else begin
	    enable <= 1'b0;
	 end
      end
   end

   always@(posedge clk, negedge rst_n) begin
      if (~rst_n) begin
	 spk_arry <= '0;
      end else begin
	 if (i_start) begin
	    spk_arry <= rom[i];
	    i = i + 1;
	    if (i == SIZE) begin
	       i = 0;
	    end
	 end
      end
   end
endmodule
