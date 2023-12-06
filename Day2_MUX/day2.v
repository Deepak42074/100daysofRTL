
module day2(
  input wire [3:0] a_i,
  input wire [3:0] b_i,
  input wire sel_i,
  output wire [3:0] y_o
);
  
  assign y_o = sel_i ? a_i: b_i;
  
endmodule
