module day7_tb();
  reg [3:0] a_i;
  reg [3:0] b_i;
  reg [2:0] opcode;
  wire [7:0] ALU_O;
  
  day7 DAY7(
    .a_i(a_i),
    .b_i(b_i),
    .opcode(opcode),
    . ALU_O(ALU_O)
  );
  integer i,j ;
  initial begin
    for (j=0; j<3; j=j+1) begin
      for( i=0 ; i<7; i=i+1) begin
         a_i = $urandom_range(0, 8'hFF);
         b_i = $urandom_range(0, 8'hFF);
        opcode = i;
        #10;
      end
    end
        
  end
   initial begin
     $dumpfile("day7.vcd");
     $dumpvars(0, day7_tb);
  end
endmodule
