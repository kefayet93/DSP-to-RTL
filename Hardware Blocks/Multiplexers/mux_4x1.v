`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kefayet Ullah, Ph.D. 
// 
// Create Date: 08/19/2025 04:40:34 PM
// Design Name: 4x1 Multiplexer
// Module Name: mux_4x1
// Project Name: Multiplexer
// Target Devices: XCZU28DR
// Tool Versions: Vivado 2020.2
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
     output reg out; // since "out" signal is assigned inside the procedural block "always@(*)"
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
