`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 17:40:42
// Design Name: 
// Module Name: spike_rom
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


module spike_rom(
    input clk,
    input rst_n,
    input i_start,
    output reg [783:0] spk_arry,
    output svalid
    );
parameter SIZE = 40;
reg [783:0] rom_memory [SIZE-1:0];
reg enable;
integer i, counter;
initial begin
    $readmemh("spike.mem", rom_memory);
    i = 0;
end

assign svalid = enable;

always@(posedge clk, negedge rst_n)
begin
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

always@(posedge clk, negedge rst_n)
begin
    if (~rst_n) begin
        spk_arry <= 0;
        i = 0;
        counter = 0;
    end else begin
        if (enable) begin
            spk_arry <= rom_memory[i];
            i = i + 1;
            if (i == SIZE) begin
                i = 0;
            end
        end
    end
end
    
endmodule
