`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kefayet Ullah, Ph.D. 
// 
// Create Date: 08/19/2025 04:40:34 PM
// Design Name: Full Adder
// Module Name: top_FA
// Project Name: ADDER
// Target Devices: XCZU28DR
// Tool Versions: Vivado 2020.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top_FA(a, b, cin, sum, cout);
     input [3:0]a, b;
	 input cin;
	 output [3:0] sum;
	 output cout;
	 
	 reg [3:0] sum;
	 reg cout;
	 reg carry;
	 reg [3:0] idx;
	 
	 always @(*)
	   begin
	      carry = cin;
		for (idx=0; idx<4; idx=idx+1)
		   {carry, sum[idx]} = a[idx] + b[idx] + carry
		end
		  cout = carry;
	   end

	   

