// Code your design here
module day6(
  input wire clk,
  input wire reset,
  output reg[3:0] q_o
);
  
  always@(posedge clk)
    begin
      if(reset)
        q_o <= 4'b0000;
      else
        begin
          q_o[0]<= ~(q_o[3]);
          q_o[1]<= q_o[0];
          q_o[2]<= q_o[1];
          q_o[3]<= q_o[2];
        end
    end
endmodule
  