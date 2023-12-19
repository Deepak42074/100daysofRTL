module day11_tb();
  
  parameter WIDTH=6;
  
 reg [WIDTH -1 :0] bin_i;
  wire [WIDTH -1:0] gray_o;
  
  day11 #(WIDTH) DAY11(
    .bin_i(bin_i),
    .gray_o(gray_o)
  );
  
  integer i;
  initial begin
    for(i=0; i<WIDTH; i=i+1)begin
      bin_i=i;
    #10;
  end
	#50
    $finish();
      
    end
    
  initial begin
    $dumpfile("day11_tb.vcd");
    $dumpvars(2,day11_tb);
  end
  
endmodule