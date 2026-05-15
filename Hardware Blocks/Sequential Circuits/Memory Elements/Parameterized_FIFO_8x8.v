module FIFO_8x8 #(parameter DEPTH = 8, DATA_WIDTH = 8)(

     input clk, rst_n, wr_en, rd_en, // asynchronous reset
     input [DATA_WIDTH-1 : 0]data_in,
     output reg [DATA_WIDTH-1 : 0]data_out,
     output empty, full
);
     
     //Creating internal memory
     reg [DATA_WIDTH-1 : 0] mem[DEPTH-1:0];
     reg [$clog2(DEPTH) : 0] wr_ptr, rd_ptr;
     
     assign full = (wr_ptr - rd_ptr == DEPTH);
     assign empty = (wr_ptr == rd_ptr);
     
     
     //WRITE Data to FIFO
     always @(posedge clk or negedge rst_n)
      begin
       if(!rst_n) // asynchronous active low reset
         begin
           wr_ptr <= 0;
         end
       else if(wr_en && !full)
         begin
           mem[wr_ptr % DEPTH] <= data_in;
           wr_ptr <= wr_ptr + 1;
         end
      end
         
         
         // READ data from FIFO
         always @(posedge clk or negedge rst_n)
           begin
             if(!rst_n)
               begin
                 rd_ptr <= 0;
                 data_out <= 0; // clearing any garbage value
               end
              else if(rd_en && !empty)
                begin
                  data_out <= mem[rd_ptr % DEPTH];
                  rd_ptr <= rd_ptr + 1;
                end
           end    
 endmodule
