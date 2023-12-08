module day5(
  input wire clk,
  input wire reset,
  output reg [3:0] q_o
);
  
  always@(posedge clk)
    begin
      if(reset)
        begin
      		q_o[3:1]<=3'b000;
      		q_o[0]<=1;
        end
  	  else
         begin
           q_o[3]<= q_o[0];
           q_o[2]<= q_o[3];
           q_o[1]<= q_o[2];
           q_o[0]<= q_o[1];
         end
    end
  
endmodule
