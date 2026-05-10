`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2026 10:00:34 PM
// Design Name: 
// Module Name: counter_mod8
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


module counter_mod8(
     
       input clk, rst, en,
       output reg [2:0] count   // MOD-8 counter, so 3-bit bus
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

module counter_mod8_tb;

reg clk, rst, en;
wire [2:0] count;

counter_mod8 dut(clk, rst, en, count);

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
     en = 1;
     #50;
     en = 0;
  end
endmodule



