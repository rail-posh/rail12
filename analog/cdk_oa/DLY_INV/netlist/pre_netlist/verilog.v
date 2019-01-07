// Library - Delay_Cell_Lib_hwpeng, Cell - DLY_INV, View - schematic
// LAST TIME SAVED: Jan  4 01:26:42 2019
// NETLIST TIME: Jan  6 01:25:38 2019
`timescale 1ns / 1ns 

module DLY_INV ( Z, VDD, VNW, VPW, VSS, I );

output  Z;

inout  VDD, VNW, VPW, VSS;

input  I;


specify 
    specparam CDS_LIBNAME  = "Delay_Cell_Lib_hwpeng";
    specparam CDS_CELLNAME = "DLY_INV";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet  MMN1 ( .s(VSS), .g(I), .d(Z));
pfet  MMP1 ( .s(VDD), .g(I), .d(Z));

endmodule
