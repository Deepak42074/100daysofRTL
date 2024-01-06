module day16_tb();
  reg clk;
  reg reset;
  reg [3:0] req_i;
  wire [3:0] grant_o;
  
  day16 DAY16(.clk(clk), .reset(reset),
    .req_i(req_i),.grant_o(grant_o));
  
  initial begin
    clk = 1'b1;
    reset = 1'b1;
     req_i = 4'h0;
   
  end
   always #5 clk = ~clk;
  
  integer i;
  initial begin
   
    @(posedge clk);
    reset = 1'b0;
     @(posedge clk);
     @(posedge clk);
    for(i=0; i<=16; i=i+1)begin
      req_i = $urandom_range(0, 4'hF);
     @(posedge clk);
    end
    $finish();
  end
  
  initial begin
    $dumpfile("day16_tb.vcd");
    $dumpvars(0, day16_tb);
  end
endmodule
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    