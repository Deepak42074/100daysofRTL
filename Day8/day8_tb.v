module day8_tb();
  reg clk;
  reg reset;
  wire [7:0] count_o;
  
  day8 DAY8(
    .clk(clk),
    .reset(reset),
    .count_o(count_o)
  );
  
  initial
    begin
      clk = 1'b0;
      reset = 1'b1;
    end
  always #5 clk= ~clk;
  
   initial  
     begin  
     #7 reset = 1'b0;
  
      #50
       $finish();
     end
  
   initial
    begin
      $dumpfile("day8_tb.vcd");
      $dumpvars(0,day8_tb);
    end
endmodule
      
   
      

       
          