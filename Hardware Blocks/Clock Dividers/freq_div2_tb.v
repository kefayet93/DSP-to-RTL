module freq_div2_tb();

   reg clk, rst;
   
   freq_div2_tb dut(clk, rst, f_2);
   
   initial 
      begin
	    {clk, rst) = 0;
	  end 
	  
	  always #5 clk = ~clk;
	  
	  initial
	    begin
		  rst = 1'b1;
		  #10;
		  rst = 1'b0;
		end

endmodule