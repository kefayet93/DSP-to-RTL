`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2026 09:01:51 PM
// Design Name: 
// Module Name: counter_mod4
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


module counter_mod4(

     input clk, rst, en, 
     output reg [1:0] count
    );
    
     always @(posedge clk)
       begin 
          if(rst)
           begin
            count <= 0;
           end
          else if(en)
            count <= count + 1'b1;
          else
            count <= count;
       end
endmodule

// Testbench
module counter_mod4_tb;

reg clk, rst, en;
wire [1:0] count;

counter_mod4 dut(clk, rst, en, count);

// Initializing variables
initial 
  begin
     {clk, rst, en} = 0;
  end
  
  always #5 clk = ~clk; // Creating clocks

initial
  begin
    rst = 1;
    #10;
    rst = 0;
    en = 1;
    #50;
    en = 0;
  end
  
endmodule
    
   

  