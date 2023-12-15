// Code your design here
module day7(
  input [3:0] a_i,
  input [3:0] b_i,
  input [2:0] opcode,
  
  output reg [7:0] ALU_O
);
  
  parameter OP_ADD = 3'b000,
  			OP_SUB = 3'b001,
  			OP_AND = 3'b010,
  			OP_OR  = 3'b011,
  			OP_XOR = 3'b100,
    		OP_EQL = 3'b101,
  			OP_SL = 3'b110,
  			OP_SR = 3'b111;
  reg carry;
  
  always @(*)
    begin
      case(opcode)
          OP_ADD :{carry, ALU_O} = a_i + b_i;
          OP_SUB : ALU_O = a_i - b_i;
          OP_AND : ALU_O = a_i & b_i;
          OP_OR : ALU_O = a_i | b_i;
          OP_XOR : ALU_O = a_i ^ b_i;
          OP_EQL : ALU_O = (a_i== b_i);
          OP_SL : ALU_O = a_i << b_i;
          OP_SR : ALU_O = a_i >> b_i;
      endcase    
          
          
        end
  
endmodule
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  			
  
  