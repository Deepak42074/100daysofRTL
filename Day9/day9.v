module day9(
  input  wire clk,
  input wire reset,
  output wire[3:0] lfsr_o
);
  reg [3:0] lfsr_mid;
  
  always@(posedge clk)
    begin
      if(reset)
       lfsr_mid <= 4'hE;
      else
        lfsr_mid <= {lfsr_mid[2:0], lfsr_mid[1]^lfsr_mid[3]};     
    end
  
	assign lfsr_o = lfsr_mid;
endmodule