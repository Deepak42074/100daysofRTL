module day5_tb();
  reg clk;
  reg reset;
  wire [3:0] q_O;
  
  day5 DAY5(
    .clk(clk),
    .reset(reset),
    .q_o(q_o)
  );
  
  initial begin
    clk =1'b0;
    reset= 1'b1;
  end

  always #5 clk = ~clk;
  
  initial begin
   #6 reset = 1'b0;
    
    
    #17 reset =1'b1;
    
    #10 reset = 1'b0;
    
    #50 $finish();
  end
  
  initial begin
    $dumpfile("day5.vcd");
    $dumpvars(0, day5_tb);
    
  end
  
  
endmodule
  
  
  