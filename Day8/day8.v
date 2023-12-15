module day8(
  		input wire  clk,
  		input wire  reset,
  output  reg [7:0] count_o
);
  
  always@(posedge clk)
    begin
      if (reset)
        count_o <= 8'h0;
      else
        count_o <= count_o + 8'h1;
      
    end
endmodule
  
  
  
  
  
  
  
  
  