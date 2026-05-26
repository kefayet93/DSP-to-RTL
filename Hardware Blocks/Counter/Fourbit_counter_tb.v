`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 12:25:25 AM
// Design Name: 
// Module Name: Nbit_bincounter_tb
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


module Fourbit_bincounter_tb();

     reg clk, reset;
     wire [3:0]q;
     
     // Module Instantiation
     Fourbit_bincounter dut(clk, reset, q);
     
     // Generating clock
     initial clk = 1'b0;
     always #5 clk = ~clk;
     
     initial
       begin
         {clk, reset} = 0;
       end
     
     initial
       begin
          reset = 1;
          #10;
          reset = 0;
          #400;
          $finish;
       end

endmodule
