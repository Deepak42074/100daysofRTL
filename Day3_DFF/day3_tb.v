module day3_tb();
  reg D_i;
  reg clk ;
  reg reset;
  wire q_o;
  wire q_syncrst_o;
  wire q_asynrst_o;

day3 DAY3(
  .D_i(D_i),
  .clk(clk),
  .reset(reset),
  .q_o(q_o),
  .q_syncrst_o(q_syncrst_o),
  .q_asynrst_o(q_asynrst_o)
);

initial begin
  clk = 1'b0;
  reset=1'b1;
end


always #5 clk= ~clk;

initial begin
  $dumpfile("day3.vcd");
  $dumpvars(0,day3_tb);
end


initial 
  begin
  #6 reset = 1'b0;
    
  D_i = 1'b0;
    
  #16
  D_i = 1'b1;
    
  #14
    reset = 1'b1;
  #5
    reset = 1'b0;
  #5
    D_i = 1'b0;
  #50
    $finish();
  
end

endmodule







