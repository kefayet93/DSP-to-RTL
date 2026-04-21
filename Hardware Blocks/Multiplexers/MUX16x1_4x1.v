`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2026 09:45:56 PM
// Design Name: 
// Module Name: MUX16x1_4x1
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


module MUX16x1_4x1(in, sel, out);

      input [3:0]in;
      input [1:0]sel;
      output out;
      
      assign out = in[sel];
           
endmodule

module MUX_16x1(in, sel, out);

     input [15:0]in;
     input [3:0]sel;
     output out;
     
     wire [3:0]t;
     
     MUX16x1_4x1 M0(in[3:0], sel[1:0], t[0]);
     MUX16x1_4x1 M1(in[7:4], sel[1:0], t[1]);
     MUX16x1_4x1 M2(in[11:8], sel[1:0], t[2]);
     MUX16x1_4x1 M3(in[15:12], sel[1:0], t[3]);
     
     MUX16x1_4x1 M4(t, sel[3:2], out);
     
endmodule

