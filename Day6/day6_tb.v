// Code your testbench here
// or browse Examples
module day6_tb();
  reg clk;
  reg reset;
  wire [3:0] q_o;
  
  day6 DAY6(
    .clk(clk),
    .reset(reset),
    .q_o(q_o)
  );
  
  initial begin
    clk = 1'b0;
    reset= 1'b1;
  end
  
  always #5 clk= ~clk;
  
  initial 
    begin
     #7 reset = 1'b0;
      
     #20 reset = 1'b1;
      
      #6 reset = 1'b0;
      
      #50
      $finish();
      
    end
  
  initial
    begin
      $dumpfile("day6_tb.vcd");
      $dumpvars(0, day6_tb);
    end
endmodule    
      
      
      
      
       
  
  
  
  
  
  
  
  
  