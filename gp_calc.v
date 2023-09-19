//
// Created by         :
// Filename           :gp_calc.v
// Author             :(RDC)
// Created On         :2023-09-20 00:47
// Last Modified      : 
// Update Count       :2023-09-20 00:47
// Description        :
//                     
//                     
//=======================================================================
module gp_calc(
    g0_in,
    p0_in,
    g1_in,
    p1_in,
    g_out,
    p_out
);

input g0_in;
input p0_in;
input g1_in;
input p1_in;
output g_out;
output p_out;

assign g_out = g1_in | (p1_in & g0_in);
assign p_out = p1_in & p0_in;

endmodule
