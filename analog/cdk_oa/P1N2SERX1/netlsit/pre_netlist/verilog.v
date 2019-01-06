// Library - rail12lp, Cell - P1N2SERX1, View - schematic
// LAST TIME SAVED: Jan  4 21:46:36 2019
// NETLIST TIME: Jan  6 00:57:17 2019
`timescale 1ns / 1ns 

module P1N2SERX1 ( Z, VDD, VNW, VPW, VSS, A, B, C );

output  Z;

inout  VDD, VNW, VPW, VSS;

input  A, B, C;


specify 
    specparam CDS_LIBNAME  = "rail12lp";
    specparam CDS_CELLNAME = "P1N2SERX1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  P0 ( .b(VNW), .s(VDD), .g(A), .d(Z));
nfet_b  N1 ( .b(VPW), .s(VSS), .g(C), .d(net9));
nfet_b  N0 ( .b(VPW), .s(net9), .g(B), .d(Z));

endmodule
