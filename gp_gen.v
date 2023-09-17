
//
// Created by         :
// Filename           :gp_gen.v
// Author             :(RDC)
// Created On         :2023-09-18 00:53
// Last Modified      : 
// Update Count       :2023-09-18 00:53
// Description        :
//                     
//                     
//=======================================================================
module gp_gen(
    a,
    b,
    g,
    p
);

parameter DATA_WIDTH = 8;

input [DATA_WIDTH-1:0] a;
input [DATA_WIDTH-1:0] b;
output [DATA_WIDTH-1:0] g;
output [DATA_WIDTH-1:0] p;

reg[DATA_WIDTH-1:0] g;
reg[DATA_WIDTH-1:0] p;
genvar i;
always @(*) begin
generate
    for (i=0; i<DATA_WIDTH; i=i+1) begin
        g[i] = a[i] & b[i];
        p[i] = a[i] | b[i];
    end
endgenerate

endmodule
