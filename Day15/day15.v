// Priority arbiter
// port[N] - highest priority

module day15 #(
  parameter NUM=4)
  (
    input wire[NUM-1:0] req_i,   // ith request
    output wire[NUM-1:0] grant_o  // grant access
    
  );
  
  assign grant_o[NUM-1] = req_i[NUM-1];
  
  genvar i;
  for(i= NUM-2 ; i>=0; i=i-1)begin
    assign grant_o[i] = req_i[i] & ~(|grant_o[NUM-1:i+1]);
  end
endmodule
                               