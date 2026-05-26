`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2026 12:23:07 AM
// Design Name: 
// Module Name: Nbit_bincounter
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

// HLD bits: Count15
// Build a 4-bit binary counter that counts from 0 through 15, inclusive, with a period of 16.
// The reset input is synchronous, and should reset the counter to 0.


module Fourbit_bincounter(

      input clk, reset,
      output reg [3:0] q
    );
    
      always @(posedge clk)
        begin
           if(reset)  // Synchronous active reset
              q <= 0;
           else 
              q <= q + 1;
        end
         
    
endmodule
