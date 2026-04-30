`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2026 09:32:58 PM
// Design Name: 
// Module Name: RAM8x8
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


module RAM8x8(
     input clk, rst, WR_ENB,
     input [2:0] WR_ADDR, RD_ADDR, 
     input [7:0] data_in,
     output reg [7:0] data_out
);
     // Creating one internal memory
     reg [7:0] mem[7:0];
     integer i;
     
     // Write operation
     always @(posedge clk or rst)
       begin
           if(rst)
             begin
                for(i=0; i<7; i=i+1)
                  mem[i] <=0; // non-blocking assignement since sequential element
             end
           else if(WR_ENB)
              mem[WR_ADDR] <= data_in;
              
     // Read Logic
           else if(WR_ENB == 0)
              data_out <= mem[RD_ADDR];
           end
             
  
endmodule
