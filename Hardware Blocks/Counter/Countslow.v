`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 02:35:28 AM
// Design Name: 
// Module Name: Countslow
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


module Countslow(
  
    input clk, reset, slowena,
    output reg [3:0]q
    );
    
    always @(posedge clk)
       if(reset)
         q <= 0;
       else if(!slowena)
         q <= q;
       else if(q == 9)
         q <= 0;
       else 
         q <= q +1;
       
endmodule
