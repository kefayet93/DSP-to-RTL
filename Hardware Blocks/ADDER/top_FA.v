module top_FA(a, b, cin, sum, cout);
   input [3:0] a, b;
   input cin;
   output [3:0] sum;
   output cout;
   
   reg [3:0] sum;
   reg carry;
   reg cout;
   reg [3:0] idx;
   
   always @(*)
     begin
	   carry = cin;
	    for(idx = 0; idx < 4; idx = idx+1);
		{carry, sum[idx]} = a[idx] + b[idx] + cin;
		end
	   cout = carry;
	 end
endmodule

   