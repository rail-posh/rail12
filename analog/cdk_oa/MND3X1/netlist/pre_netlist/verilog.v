// Library - rail12lp, Cell - MND3X1, View - schematic
// LAST TIME SAVED: Jan  2 21:18:24 2019
// NETLIST TIME: Jan  6 00:28:37 2019
`timescale 1ns / 1ns 

module MND3X1 ( A, B, VDD, VNW, VPW, VSS, CK, VIP );

inout  A, B, VDD, VNW, VPW, VSS;

input  CK, VIP;


specify 
    specparam CDS_LIBNAME  = "rail12lp";
    specparam CDS_CELLNAME = "MND3X1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  P6 ( .b(VNW), .s(VDD), .g(CK), .d(net04));
pfet_b  P0 ( .b(VNW), .s(VDD), .g(B), .d(A));
pfet_b  P2 ( .b(VNW), .s(VDD), .g(CK), .d(A));
nfet_b  N3 ( .b(VPW), .s(net04), .g(B), .d(A));
nfet_b  N1 ( .b(VPW), .s(net17), .g(VIP), .d(net04));
nfet_b  N0 ( .b(VPW), .s(VSS), .g(CK), .d(net17));

endmodule
