
module day4_tb ();
  
  reg in;
  reg clk;
  reg reset;
  
  wire [3:0] q_o;
  
  day4 DAY4( 
    .in(in),
    .clk(clk),
    .reset(reset),
    .q_o(q_o)
  );
    
  
  initial 
    begin
      reset = 1'b1;
      clk = 1'b0;
      in = 1'b0;
    end
  
  always #5 clk = ~clk;
  
  initial 
    begin
      $dumpfile("day4.vcd");
      $dumpvars(0,day4_tb);
    end
  
  initial
    begin
      #7 reset = 1'b0;
      #10 in = 1'b1;
      #10 in = 1'b1;
      #10 in = 1'b0;
      #10 in = 1'b1;
      
     #50
      $finish();
    end
  
endmodule
  
  
  
  
  
  
  
  
  
  
  
  
  
       
      
      