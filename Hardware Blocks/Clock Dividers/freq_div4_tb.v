`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 04:04:03 PM
// Design Name: 
// Module Name: freq_div4_tb
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


module freq_div4_tb();

     reg clk, rst, en;
     wire [1:0] count;
     wire f_4;
     
     freq_div4 dut(clk, rst, en, f_4);
     
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
           en = 1;
           #100;
           en = 0;
         end
     
endmodule
