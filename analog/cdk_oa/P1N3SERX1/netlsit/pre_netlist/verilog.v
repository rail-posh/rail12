// Library - rail12lp, Cell - P1N3SERX1, View - schematic
// LAST TIME SAVED: Jan  4 21:51:13 2019
// NETLIST TIME: Jan  6 00:59:30 2019
`timescale 1ns / 1ns 

module P1N3SERX1 ( Z, VDD, VNW, VPW, VSS, A, B, C, D );

output  Z;

inout  VDD, VNW, VPW, VSS;

input  A, B, C, D;


specify 
    specparam CDS_LIBNAME  = "rail12lp";
    specparam CDS_CELLNAME = "P1N3SERX1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  P0 ( .b(VNW), .s(VDD), .g(A), .d(Z));
nfet_b  N2 ( .b(VPW), .s(VSS), .g(D), .d(net02));
nfet_b  N1 ( .b(VPW), .s(net02), .g(C), .d(net9));
nfet_b  N0 ( .b(VPW), .s(net9), .g(B), .d(Z));

endmodule
