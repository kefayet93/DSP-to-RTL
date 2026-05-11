`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 10:52:06 PM
// Design Name: 
// Module Name: freq_div3_tb
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


module freq_div3_tb();
     
     reg clk, rst, en;
     wire f_3;
     
     //Instantiating freq divider by 3 module
     freq_div3 dut(clk, rst, en, f_3);
     
     //Initializing variables
     initial
     begin
       {clk, rst, en} = 0;
     end
     
     // Generating clock
     always #5 clk = ~ clk;
     
     initial 
        begin
          rst = 1'b1;
          #10;
          rst = 1'b0;
          #10;
          en = 1'b1;
          #100;
          en = 1'b0;
        end
endmodule
