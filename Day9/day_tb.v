module day9_tb ();
  reg clk;
  reg reset;
  wire [3:0] lfsr_o;
  
  day9 DAY9 (
    .clk(clk),
    .reset(reset),
    .lfsr_o(lfsr_o)
  );
  
  initial begin
    clk = 1'b0;
    reset = 1'b1;
  end
  
  always #5 clk = ~ clk;  
  
  initial
    begin
     #7 reset = 1'b0;
      
     #25 reset= 1'b1;
      #7 reset= 1'b0;
      
      #50
      $finish();
    end
  
  
  initial begin
    $dumpfile("day9_tb.vcd");
    $dumpvars(0, day9_tb);
  end
endmodule
  
  
  
  
  
  
  
  
  
  
  
  
  
  
