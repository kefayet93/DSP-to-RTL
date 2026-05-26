`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 01:20:08 AM
// Design Name: 
// Module Name: Count10_counter
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

// HLD Bits: Counters
// Build a decade counter that counts from 0 through 9, inclusive, with a period of 10. 
// The reset input is synchronous, and should reset the counter to 0.

module Count10_counter(
      
      input clk, reset,
      output reg [3:0]q
    );
    
      always @(posedge clk)
         if(reset)
            q <= 0;
         else if(q == 9)
            q <= 0;
         else 
            q <= q + 1;     
      
endmodule
