`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 03:59:22 PM
// Design Name: 
// Module Name: freq_div4
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

module freq_div4(
     
       input clk, rst,en,
       output f_4
    );
    
       reg [1:0] count;
       
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
       
       assign f_4 = count[1]; // Assigning MSB of count to f_4
       
endmodule
