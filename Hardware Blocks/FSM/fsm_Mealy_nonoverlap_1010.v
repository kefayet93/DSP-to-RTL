`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dr. Kefayet Ullah
// 
// Create Date: 05/21/2026 05:04:52 AM
// Design Name: 
// Module Name: fsm_nonoverlap_1010
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


module fsm_nonoverlap_1010(
        input clk, rst, din,
        output reg y
    );
    
      reg [1:0] ps, ns; // ps: present state, ns: next state
      
      parameter S0 = 2'b00,
                S1 = 2'b01,
                S2 = 2'b10,
                S3 = 2'b11;
                
      // Present State Sequential Circuit
      always @(posedge clk)
         begin
            if(rst)
              ps <= S0;
            else 
              ps <= ns;            
         end
         
      // Next State Combinational Logic
      always @(*)
         begin
           case(ps)
             S0: begin
                   y = 1'b0;
                   if(din == 1'b1)
                      ns = S1;
                   else 
                      ns = S0;
                 end
             S1: begin  
                   if(din == 1'b0)
                      ns = S2;
                   else 
                      ns = S1;
                 end
             S2: begin 
                   if(din == 1'b1)
                      ns = S3;
                   else 
                      ns = S0;
                 end
              S3: begin
                   if(din == 0)
                     begin
                       ns = S0;
                       y = 1'b1;
                     end
                   else 
                      ns = S1;
                  end
                   
               default: ns = S0;
          endcase         
     end     
endmodule
