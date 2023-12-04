module day1 (
  input a,
  input b,
  output and_out,
  output or_out,
  output not_out,
  output nand_out,
  output nor_out,
  output exor_out,
  output exnor_out
);
 // Logic gates using data flow modeling
  
  //a (AND) b
  assign and_out = a & b;
  
  //a (OR) b
  assign or_out = a | b;
  
  //(NOT)a
  assign not_out = ~a;
  
  //a (NAND) b
  assign nand_out = ~(a & b);
  
  //a (NOR) b
  assign nor_out = ~(a | b);
  
  //a (EXOR) b
  assign exor_out = a ^ b;
  
  //a (EXNOR) b
  assign exnor_out = ~(a ^ b);
  
endmodule