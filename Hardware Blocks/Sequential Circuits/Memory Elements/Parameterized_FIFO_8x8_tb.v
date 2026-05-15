module FIFO_8x8_tb();
    
    reg clk, rst_n, wr_en, rd_en;
    reg [7:0]data_in;
    wire [7:0]data_out;
    wire full, empty;
    
    FIFO_8x8 uut(
       .clk(clk),
       .rst_n(rst_n),
       .wr_en(wr_en),
       .rd_en(rd_en),
       .data_in(data_in),
       .data_out(data_out),
       .full(full),
       .empty(empty)   
    );
    
    initial 
      begin
        clk = 0;
        forever #5 clk = ~clk;
      end
      
      initial
        begin
          rst_n = 0; wr_en = 0; rd_en = 0; data_in = 0;
          #12 rst_n = 1;
          // Write data to FIFO
          repeat(17)
          begin
            wr_en = 1;
            data_in = $random;
            #10 wr_en = 0;
            #5;
          end
          
          
          //Read data from FIFO
          repeat(17)
          begin
            rd_en = 1;
            #10 rd_en = 0;
            #5;
          end
          
          
          #20 $finish;
          
          
        end
    
    
endmodule