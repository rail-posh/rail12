// Library - Delay_Cell_Lib_hwpeng, Cell - DLY, View - schematic
// LAST TIME SAVED: Jan  4 01:39:11 2019
// NETLIST TIME: Jan  6 01:24:10 2019
`timescale 1ns / 1ns 

module DLY ( Z, VDD, VNW, VPW, VSS, I );

output  Z;

inout  VDD, VNW, VPW, VSS;

input  I;


specify 
    specparam CDS_LIBNAME  = "Delay_Cell_Lib_hwpeng";
    specparam CDS_CELLNAME = "DLY";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet  MMP1 ( .s(VDD), .g(N0), .d(Z));
pfet  MMP2 ( .s(VDD), .g(I), .d(N0));
nfet  MMN1 ( .s(VSS), .g(N0), .d(Z));
nfet  MMN2 ( .s(VSS), .g(I), .d(N0));

endmodule
