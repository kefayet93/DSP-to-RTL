`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 01:49:17 AM
// Design Name: 
// Module Name: Count1to10_counter
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


module Count1to10_counter(

     input clk, reset,
     output reg [3:0]q
    );
    
     always @(posedge clk)
        if(reset)
           q <= 1;
        else if(q == 10)
           q <= 1;
        else 
           q <= q + 1;
              
endmodule
