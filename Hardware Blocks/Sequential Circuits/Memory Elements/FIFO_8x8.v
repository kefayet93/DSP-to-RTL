`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2026 08:24:33 PM
// Design Name: 
// Module Name: FIFO_8x8
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


module FIFO_8x8(
    
    input clk, rst, wr_en, rd_en,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output full, empty
    );
    
    // Creating internal memory
    reg [7:0] mem [7:0];
    
    reg [2:0] wr_ptr = 0;
    reg [2:0] rd_ptr = 0;
    
    integer i;
    
    //FIFO logic
    always @(posedge clk)
    begin
       if(rst)
         begin
           for(i=0; i<7; i=i+1)
             mem[i] <= 0;
         end
       else if(wr_en && full == 0)
         begin
           mem[wr_ptr] <= data_in;
           wr_ptr <= wr_ptr + 1'b1;
         end
       else if(rd_en && empty == 0)
         begin
           data_out <= mem[rd_ptr];
           rd_ptr <= rd_ptr + 1'b1;
         end
    end
    
    assign full = ((wr_ptr + 1'b1) == rd_ptr);
    assign empty = wr_ptr == rd_ptr;
 
endmodule
