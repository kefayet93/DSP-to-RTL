`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2026 02:31:23 AM
// Design Name: 
// Module Name: PIPO
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


module D_FF(
     input clk, rst, D,
     output reg Q 
);

     always @(posedge clk)
        begin 
           if (rst)
             Q <= 1'b0;
           else
             Q <= D; 
        end
endmodule

// Instantiating D Flip-Flops to form the Parallel-In Parallel-Out (PIPO) Register

module PIPO (
     input clk, rst,
     input [3:0]P_In,
     output [3:0]P_Out
);

     D_FF PIPO1(clk, rst, P_In[0], P_Out[0]);
     D_FF PIPO2(clk, rst, P_In[1], P_Out[1]);
     D_FF PIPO3(clk, rst, P_In[2], P_Out[2]);
     D_FF PIPO4(clk, rst, P_In[3], P_Out[3]);
 
endmodule
