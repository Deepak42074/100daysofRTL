module day15_tb();
  parameter NUM=3;
  reg[NUM-1:0] req_i;
  wire[NUM-1:0] grant_o;
  
  day15 #(NUM) DAY15(
    .req_i(req_i),
    .grant_o(grant_o)
  );
  
  integer i;
  
  initial begin
    for(i=0; i<=16; i=i+1)begin
      req_i = $urandom_range(0, 2**NUM-1);
      #5;
    end
  end
  
  initial begin
    $dumpfile("day15_tb.vcd");
    $dumpvars(0,day15_tb);
  end
endmodule
  
  
  
  
  
  
  