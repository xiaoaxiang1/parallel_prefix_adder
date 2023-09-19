//
// Created by         :
// Filename           :g_calc.v
// Author             :(RDC)
// Created On         :2023-09-20 00:58
// Last Modified      : 
// Update Count       :2023-09-20 00:58
// Description        :
//                     
//                     
//=======================================================================
module g_calc(
    g0_in,
    g1_in,
    p1_in,
    g_out,
);

input g0_in;
input g1_in;
input p1_in;
output g_out;

assign g_out = g1_in | (p1_in & g0_in);

endmodule
