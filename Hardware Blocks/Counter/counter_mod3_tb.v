`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 06:42:37 PM
// Design Name: 
// Module Name: counter_mod3_tb
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


module counter_mod3_tb();
   
   reg clk, rst, en;
   wire [1:0] count;
   
   // Instantiation of MOD-3 counter
   counter_mod3 dut(clk, rst, en, count);
   
   // Initializing variables
   initial
   begin
     {clk, rst, en} = 0;
   end
   
   always #5 clk = ~clk;
   
   initial
     begin
     rst = 1;
     #10;
     rst = 0;
     #10;
     en = 1;
     #100;
     en = 0;
     
     end
   
   
endmodule
