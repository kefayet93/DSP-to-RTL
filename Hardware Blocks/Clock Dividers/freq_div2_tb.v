`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 01:37:45 AM
// Design Name: 
// Module Name: freq_div2_tb
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


module freq_div2_tb();
    
    reg clk, rst;
    
    freq_div2 dut(clk, rst, f_2);
    
    
    initial
      begin
         {clk, rst} = 0;
      end
      
      always #5 clk = ~clk;
      
      initial
        begin
          rst = 1'b1;
          #10;
          rst = 1'b0;
          
        end
            
    
endmodule
