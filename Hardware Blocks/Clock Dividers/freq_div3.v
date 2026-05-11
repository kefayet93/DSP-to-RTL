`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 05:05:35 PM
// Design Name: 
// Module Name: counter_mod3
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

module counter_mod3(
      
      input clk, rst, en,
      output reg [1:0] count
    );
    
      always @(posedge clk)
        begin
          if(rst)
            count <= 0;
          else if(count < 2 && en==1)
            count <= count + 1'b1;
          else if(en == 1'b1 && count >=2 )
            count <= 1'b0;            
          else if(en == 1'b0)
            count <= count; // this condition means when en=0 count stays the same and do not change. 
            // count should only change when en=1.  
            
        end
endmodule

