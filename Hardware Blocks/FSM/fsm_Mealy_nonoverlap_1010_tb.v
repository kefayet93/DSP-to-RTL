`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dr. Kefayet Ullah
// 
// Create Date: 05/21/2026 05:30:30 AM
// Design Name: 
// Module Name: fsm_nonoverlap_1010_tb
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


module fsm_nonoverlap_1010_tb();

     reg clk, rst, din;
     wire y;
     
     fsm_nonoverlap_1010 dut(clk, rst, din, y);
     
     initial 
       begin
         {clk, rst, din} = 0;
       end
       
       always #5 clk = ~clk;
     
     initial
        begin
          rst = 1'b1;
          #10;
          rst = 1'b0;
          #10;
          din = 1'b1;
          #10;
          din = 1'b0;
          #10;
          din = 1'b1;
          #10;
          din = 1'b0;
        end
   
endmodule
