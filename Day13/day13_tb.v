module day13_tb();
  reg clk;
  reg reset;
  reg [3:0] parallel_in;
  wire serial_o;
  wire empty_o;
  wire valid_o;
  
  day13 DAY13(
    .clk(clk),
    .reset(reset),
    .parallel_in(parallel_in),
    .serial_o(serial_o),
    .empty_o(empty_o),
    .valid_o(valid_o)
  );
  
  initial begin
    clk=1'b0;
    reset=1'b1;
    parallel_in <= 4'h0;
  end
  
  always #5 clk = ~clk;
  
  integer i;
  initial begin
   @(negedge clk);
    reset = 1'b0;
    
    @(posedge clk);   
   
    for(i=0; i<32; i=i+1) begin
      parallel_in = $urandom_range(0,4'hF);	
     @(posedge clk);
    end
   $finish();
  end
  
  
 
  
  initial begin
    $dumpfile("day13_tb.vcd");
    $dumpvars(0,day13_tb);
  end
endmodule
  
  
  
  
  
  
  
  
  
  
  
  
  