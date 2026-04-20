`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2026 06:30:50 PM
// Design Name: 
// Module Name: MUX_2x1_Gatelevel
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


module MUX_2x1_Gatelevel(in, sel, out);
         input [1:0]in;
         input sel;
         output out;
         
         wire t1, t2, t3;
         
         NOT G1(t1, sel);
         AND G2(t2, in[0], t1);
         AND G3(t3, in[1], sel);
         OR G4(out, t2, t3);  

endmodule
