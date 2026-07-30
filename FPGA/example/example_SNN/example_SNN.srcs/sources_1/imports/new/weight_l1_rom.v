`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 16:11:43
// Design Name: 
// Module Name: weight_l1_rom
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module weight_l1_rom(
    input clk,
    input rst_n,
    output reg [383:0] data_out,
    output reg [9:0] addr_out,
    output reg cs,
    output reg we,
    output reg oe
    );
parameter SIZE = 784;
reg [383:0] rom_memory [SIZE-1:0];
reg read_reg;
integer i;
initial begin
    $readmemh("weights_l1.mem", rom_memory);
    i = 0;
end

always@(posedge clk, negedge rst_n)
begin
    if (~rst_n) begin
        read_reg = 1'b1;
        addr_out = 10'b0;
        cs = 1'b0;
        we = 1'b0;
        oe = 1'b0;
    end else begin
        if (read_reg) begin
            cs = 1'b1;
            we = 1'b1;
            data_out = rom_memory[i];
            i = i + 1;
            addr_out = addr_out + 1;
            if (i == SIZE) begin
                i = 0;
                read_reg = 1'b0; 
            end
        end else begin
            addr_out = 10'b0;
            cs = 1'b0;
            we = 1'b0;
        end
    end
end
    
endmodule
