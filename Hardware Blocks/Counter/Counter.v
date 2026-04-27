`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2026 01:51:43 AM
// Design Name: 
// Module Name: Counter
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


module Counter(
        input clk, rst, 
        output reg [3:0]cout
    );
    
               
        always @(posedge clk)
           begin
              if(rst)
                cout <= 4'b0000;
              else 
                cout <= cout + 1;
           end
                  
endmodule
