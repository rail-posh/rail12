// Library - rail12lp, Cell - P2PARN1X1, View - schematic
// LAST TIME SAVED: Jan  4 21:46:55 2019
// NETLIST TIME: Jan  6 00:59:54 2019
`timescale 1ns / 1ns 

module P2PARN1X1 ( Z, VDD, VNW, VPW, VSS, A, B, C );

output  Z;

inout  VDD, VNW, VPW, VSS;

input  A, B, C;


specify 
    specparam CDS_LIBNAME  = "rail12lp";
    specparam CDS_CELLNAME = "P2PARN1X1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N0 ( .b(VPW), .s(VSS), .g(C), .d(Z));
pfet_b  P1 ( .b(VNW), .s(VDD), .g(B), .d(Z));
pfet_b  P0 ( .b(VNW), .s(VDD), .g(A), .d(Z));

endmodule
