module day1_tb();
  // Inputs
  reg a;
  reg b;
  // outputs
  wire and_out;
  wire or_out;
  wire not_out;
  wire nand_out;
  wire nor_out;
  wire exor_out;
  wire exnor_out;
  
  // Instantiation the module day1
  day1 DAY1(.a(a),
            .b(b),
            .and_out(and_out),
            .or_out(or_out),
            .not_out(not_out),
            .nand_out( nand_out),
            .nor_out( nor_out),
            .exor_out(exor_out),
            .exnor_out(exnor_out)
           );
  
  initial begin
    a = 0;
	#5
	b = 0;
	#5
    a = 1;
    #5
    b = 0;
    #5
    a = 0;
	#5
	b = 1;
	#5
    a = 1;
    #5
    b = 1;
    #10
	$finish();
    
    
  end
  
  initial begin
    $dumpfile("day1.vcd");
    $dumpvars(0, day1_tb);
  end

endmodule
    
    
    
    
    
    
    
    
    
    
    