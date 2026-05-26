`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 01:23:11 AM
// Design Name: 
// Module Name: Count10_counter_tb
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


module Count10_counter_tb();

     reg clk, reset;
     wire [3:0]q;
     
     // Module Instantiation
     Count10_counter dut(.clk(clk), .reset(reset), .q(q));
     
           
     
     initial clk = 1'b0; 
      
     always #5 clk = ~clk;
     
     initial
       begin
          reset = 1;
          #10;
          reset = 0;
          #400;
          $finish;
       end

endmodule
