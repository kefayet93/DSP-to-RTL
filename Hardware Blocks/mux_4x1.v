`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 04:40:34 PM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
     input a, b, c, d;
     input [1:0] s;
     output reg out;
);
     always @(*)
       begin
           case(s)
              2'b00: out = a;
              2'b01: out = b;
              2'b10: out = c;
              2'b11: out = d;
           endcase
       end             
endmodule
