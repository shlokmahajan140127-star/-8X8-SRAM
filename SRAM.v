
module RAM_2_port#(parameter ADDR_WIDTH =3 ,DATA_WIDTH =8)(
   input logic clk,
   input logic we,
   input logic[ADDR_WIDTH-1:0] r_addr,
   input logic [ADDR_WIDTH-1:0]w_addr,
   input logic [DATA_WIDTH-1:0]w_data,
   output logic [DATA_WIDTH-1:0]r_data
    );
    
        // 8 × 8 memory array
    logic [DATA_WIDTH-1:0] memory[0:2**ADDR_WIDTH-1];
    
    always_ff@(posedge clk)
    begin
     if(we)
      memory[w_addr] <= w_data;
    end
    
    assign r_data=memory[r_addr];
endmodule
