`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 02:39:13 AM
// Design Name: 
// Module Name: Countslow_tb
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


module Countslow_tb();

reg clk, reset, slowena;
wire [3:0]q;

  // Instantiation of MOD-3 counter
   Countslow dut(clk, reset, slowena, q);
   
   // Initializing variables
   initial clk = 1'b0;
   
   initial
     begin
       {reset, slowena} = 0;
     end
   
   always #5 clk = ~clk;
   
   initial
     begin
     reset = 1;
     #10;
     reset = 0;
     #10;
     slowena = 0;
     #10;
     slowena = 1;
     #10;
     slowena = 0;
     #10;
     slowena = 1;
     #10;
     slowena = 0;
     #10;
     slowena = 1;
     #10;
     slowena = 0;
     #40;
     slowena = 1;
     #10;
     slowena = 0;
     #10;
     slowena = 1;
     #10;
     slowena = 0;
     #10;
     slowena = 1;
     #1000;
     $finish;     
     end
endmodule