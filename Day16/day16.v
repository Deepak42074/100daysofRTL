module day16
  (
    input wire clk,
    input wire reset,
    input wire[3:0] req_i,   // ith request
    output wire[3:0] grant_o  // grant access one hot
    
  );
  reg [3:0] mask;
  reg [3:0] next_mask;
    
  wire [3:0] mask_req;
  wire [3:0] mask_grant;
  wire [3:0] nomask_grant;
  
  
  //  mask based on the current grant
  always@(posedge clk or posedge reset) begin
    if(reset)
      mask <= 4'hF;
    else 
      case(1'b1) //synthesis parallel case
        grant_o[0]: mask = 4'b1110;
        grant_o[1]: mask = 4'b1100;
        grant_o[2]: mask = 4'b1000;
        grant_o[3]: mask = 4'b0000;
      endcase 
  end
        
  // Generate the masked requests
    assign mask_req = req_i & mask;
        
 // Generate grants for request and masked request    
  
  day15 #(4) maskedgrant(.req_i(mask_req),.grant_o(mask_grant));
  day15 #(4) nomaskgrant(.req_i(req_i),.grant_o(nomask_grant));
                                              
 assign grant_o = |mask_req ? mask_grant : nomask_grant;
                                              
 endmodule                                            
                               
          
              
        
// Priority arbiter
//highest priority to req_i[0]

module day15 #(
  parameter NUM=4)
  (
    input wire[NUM-1:0] req_i,   // ith request
    output wire[NUM-1:0] grant_o  // grant access
    
  );
  
  assign grant_o[0] = req_i[0];
  
  genvar i;
  for(i= 1 ; i<NUM; i=i+1)begin
    assign grant_o[i] = req_i[i] & ~(|grant_o[i-1:0]);
  end
endmodule
                               

  
 