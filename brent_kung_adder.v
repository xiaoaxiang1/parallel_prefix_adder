//
// Created by         :
// Filename           :.\brent_kung_adder.v
// Author             :(RDC)
// Created On         :2023-09-21 00:26
// Last Modified      : 
// Update Count       :2023-09-21 00:26
// Description        :
//                     
//                     
//=======================================================================
module brent_kung_adder ();

// max_width is 64
parameter A_WIDTH = 64;
parameter B_WIDTH = 64;

localparam MAX_WIDTH = A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH;
localparam STAGE = $clog2(MAX_WIDTH);

input [A_WIDTH-1:0] a;
input [B_WIDTH-1:0] b;
output [A_WIDTH:0]  s;

genvar i;
generate
    if (A_WIDTH == B_WIDTH) begin: gp_a_eq_b
        wire [A_WIDTH-1:0] g;
        wire [B_WIDTH-1:0] p;
        for (i=0; i<A_WIDTH; i=i+1) begin: gp_gen_a_eq_b
            assign g[i] = a[i] & b[i];
            assign p[i] = a[i] | b[i];
        end 
    end 
    else if (A_WIDTH > B_WIDTH) begin: gp_a_gt_b
        wire [B_WIDTH-1:0] g;
        wire [B_WIDTH-1:0] p;
        for (i=0; i<B_WIDTH; i=i+1) begin: gp_gen_a_gt_b
            assign g[i] = a[i] & b[i];
            assign p[i] = a[i] | b[i];
        end
    end 
    else begin: gp_a_lt_b
        wire [A_WIDTH-1:0] g;
        wire [A_WIDTH-1:0] p;
        for (i=0; i<A_WIDTH; i=i+1) begin: gp_gen_a_lt_b
            assign g[i] = a[i] & b[i];
            assign p[i] = a[i] | b[i];
        end
    end 
endgenerate

genvar j;
generate
    for {j=; }
endgenerate 

endmodule
