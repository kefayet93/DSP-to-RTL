`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2026 06:05:37 PM
// Design Name: 
// Module Name: top_ADDER
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


module top_adder(     
      input clk,
      input [7:0]A,
      input [7:0]B,
      output reg [8:0]Sum
);
      
     reg [7:0] Q_A, Q_B;
     wire [8:0] S;
     wire [6:0] C;
     
     always @(posedge clk)
     begin
         Q_A <= A;
         Q_B <= B;
         Sum <= S;
     end
      
     FA FA0(.A(Q_A[0]), .B(Q_B[0]), .C(1'b0), .Sum(S[0]), .Carry(C[0]));
     FA FA1(.A(Q_A[1]), .B(Q_B[1]), .C(C[0]), .Sum(S[1]), .Carry(C[1]));
     FA FA2(.A(Q_A[2]), .B(Q_B[2]), .C(C[1]), .Sum(S[2]), .Carry(C[2]));
     FA FA3(.A(Q_A[3]), .B(Q_B[3]), .C(C[2]), .Sum(S[3]), .Carry(C[3]));
     FA FA4(.A(Q_A[4]), .B(Q_B[4]), .C(C[3]), .Sum(S[4]), .Carry(C[4]));    
     FA FA5(.A(Q_A[5]), .B(Q_B[5]), .C(C[4]), .Sum(S[5]), .Carry(C[5]));
     FA FA6(.A(Q_A[6]), .B(Q_B[6]), .C(C[5]), .Sum(S[6]), .Carry(C[6]));
     FA FA7(.A(Q_A[7]), .B(Q_B[7]), .C(C[6]), .Sum(S[7]), .Carry(S[8]));    
endmodule
