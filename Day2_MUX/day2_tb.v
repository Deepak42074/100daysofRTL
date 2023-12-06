
module day2_tb ();
  
 reg [3:0] a_i;
 reg [3:0] b_i;
 reg       sel_i;
 wire [3:0] y_o;
  
  day2 DAY2(
    .a_i(a_i),
    .b_i(b_i),
    .sel_i(sel_i),
    .y_o(y_o)
  );
  
  initial begin
    repeat(5) begin
      a_i   = $urandom_range (0, 8'hFF);
      b_i  = $urandom_range(0, 8'hFF);
      sel_i = $random%2;
      #10;  
    end
  end
  
  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0,day2_tb);
  end
  
endmodule