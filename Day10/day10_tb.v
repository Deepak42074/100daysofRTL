
 module day10_tb ();
  parameter BIT_WIDTH = 3;
  parameter ONE_HOT_WIDTH = 8;
  
   reg [BIT_WIDTH -1:0] bin_i;
   wire [ONE_HOT_WIDTH -1:0] one_hot_o;
  
   day10 #(BIT_WIDTH, ONE_HOT_WIDTH) DAY10(
   			 	.bin_i(bin_i),
    			.one_hot_o(one_hot_o)
 			 );
  
  integer i;
  
  initial begin
    for(i=0; i<32; i=i+1) begin
      bin_i = $urandom_range(0, 4'hF);
      #5;
    end
    $finish();
  end
  
  initial begin
    $dumpfile("day10_tb.vcd");
    $dumpvars(0, day10_tb);
  end
      
endmodule






