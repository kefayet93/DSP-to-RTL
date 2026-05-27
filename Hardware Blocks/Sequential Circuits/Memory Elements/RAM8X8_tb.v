`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2026 11:50:20 PM
// Design Name: 
// Module Name: RAM8X8_tb
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
module RAM8X8_tb();
    
    reg clk, rst, WR_ENB, RD_ENB;
    reg [2:0] WR_ADDR, RD_ADDR;
    reg [7:0] data_in;
    wire [7:0] data_out; 
    
    //Instantial the RAM8X8
    RAM8x8 dut(clk, rst, WR_ENB, RD_ENB, WR_ADDR, RD_ADDR, data_in, data_out);
    
   initial clk = 1'b0;
   
   initial
     begin
       {rst, WR_ENB, RD_ENB, WR_ADDR, RD_ADDR, data_in} = 0;
     end
   
   always #5 clk = ~clk;
    
       initial 
          begin
             rst = 1;
             #12;
             rst = 0;
             
             //Write location 1; Value =4
             WR_ENB = 1;
             WR_ADDR = 3'b000; // 1st location in the RAM
             data_in = 4;
             #10;
             
             //Write location 2; Value = 8
             WR_ENB = 1;
             WR_ADDR = 3'b001; // 4th location in the RAM
             data_in = 8;
             #10;             
              
             //Write location 3; Value = 16
             WR_ENB = 1;
             WR_ADDR = 3'b010; // 4th location in the RAM
             data_in = 16;
             #10;
             
             //Write location 4; Value = 16
             WR_ENB = 1;
             WR_ADDR = 3'b011; // 4th location in the RAM
             data_in = 32;
             #10;             
             
             //Write location 5; Value = 32
             WR_ENB = 1;
             WR_ADDR = 3'b100; // 4th location in the RAM
             data_in = 64;
             #10;
             
             //Write location 6; Value = 64
             WR_ENB = 1;
             WR_ADDR = 3'b101;
             data_in = 64; 
             #10;
             
             //Write location 7; Value = 6
             WR_ENB = 1;
             WR_ADDR = 3'b110;
             data_in = 32;  
             #10;
             
             //Write location 8; Value = 
             WR_ENB = 1;
             WR_ADDR = 3'b111;
             data_in = 16;     
             #10;     
             
             
             //Read location 1
             WR_ENB = 0;
             RD_ENB = 1;
             RD_ADDR = 3'b000;
             #10;
             
             //Read location 2
             RD_ENB = 1;
             RD_ADDR = 3'b001;
             #10;
             
             //Read location 3
             RD_ENB = 1;
             RD_ADDR = 3'b010;
             #10
             
             //Read location 4
             RD_ENB = 1;
             RD_ADDR = 3'b011;
             #10;
             
             //Read location 5             
             RD_ENB = 1;
             RD_ADDR = 3'b100;
             #10;
             
             //Read location 6
             RD_ENB = 1;
             RD_ADDR = 3'b101;
             #10;
                          
            //Read location 7
             RD_ENB = 1;
             RD_ADDR = 3'b110;
             #10;
             
             //Read location 8
             RD_ENB = 1;
             RD_ADDR = 3'b111;
             #10;
             
             #200;
             $finish;
          end
          
          // ── Monitor: prints every signal change ──────────────────────
    initial begin
        $monitor("t=%0t | WR_ENB=%b RD_ENB=%b | WR_ADDR=%0d RD_ADDR=%0d | data_in=%0d | data_out=%0d",
                  $time, WR_ENB, RD_ENB, WR_ADDR, RD_ADDR, data_in, data_out);
    end
 
        
endmodule
