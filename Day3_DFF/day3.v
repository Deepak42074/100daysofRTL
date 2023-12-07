// Code your design here
module day3(
  input wire D_i,
  input wire clk,
  input wire reset,
  
  output reg q_o,
  output reg q_syncrst_o,
  output reg q_asynrst_o
);
  // DFF with no reset
  always@(posedge clk)
    q_o <= D_i;
  
   // DFF with synchronous reset
  always@(posedge clk )
    begin
      if(reset)
        q_syncrst_o<= 1'b0;
      else
        q_syncrst_o <= D_i;
    end
  
   // DFF with asynchronous reset
  
  always@(posedge clk or posedge reset)
    begin
      if(reset)
        q_asynrst_o<=1'b0;
      else
        q_asynrst_o<= D_i;
    end
endmodule
        
  
  
  
  
  
  
  