module day12_tb();
  parameter WIDTH = 4;
  reg [WIDTH-1:0] gray_i;
  wire [WIDTH -1:0] binary_o;
  
  day12 #(WIDTH) DAY12(
    .gray_i(gray_i),
    .binary_o(binary_o)
  );
  
  integer i;
  initial begin
    for(i=0; i<WIDTH; i=i+1)begin
      gray_i = i;
      #5;
    end
    $finish();
  end
  
  initial begin
    $dumpfile("day12_tb.vcd");
    $dumpvars(0,day12_tb);
  end
  
endmodule
    
  
  
  
  
  
  
  
  
  
  