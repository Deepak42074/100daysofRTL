module day14_tb();
  reg  clk;
  reg  reset;
  reg  serial_in;
  wire seq_det_o;
  
  day14 DAY14(
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .seq_det_o(seq_det_o)
  );
  initial begin
    clk=1'b1;
    reset = 1'b1;
  end
  
  always #5 clk = ~clk;
  
wire [7:0] seq=8'b1100_0101;
  
  integer i;
  
  initial begin
    serial_in = 1'b0;
     @(posedge clk);
    reset = 1'b0;
     @(posedge clk);
    for(i=0; i<8 ; i=i+1) begin
      serial_in = seq[i];
      @(posedge clk);
    end
       serial_in = 1'b0;
    $finish();
  end
  
  initial begin
    $dumpfile("day14_tb.vcd");
    $dumpvars(0,day14_tb);
  end
  
endmodule
    
    
    
  
  
  
  
  
  
  
  
  
  
    
    
