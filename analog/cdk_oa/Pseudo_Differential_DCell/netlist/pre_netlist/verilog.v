// Library - Delay_Cell_Lib_hwpeng, Cell - Pseudo_Differential_DCell,
//View - schematic
// LAST TIME SAVED: Jan  5 01:16:35 2019
// NETLIST TIME: Jan  6 01:04:59 2019
`timescale 1ns / 1ns 

module Pseudo_Differential_DCell ( von, vop, VDD, VNW, VPW, VSS, vin,
     vip );

output  von, vop;

inout  VDD, VNW, VPW, VSS;

input  vin, vip;


specify 
    specparam CDS_LIBNAME  = "Delay_Cell_Lib_hwpeng";
    specparam CDS_CELLNAME = "Pseudo_Differential_DCell";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  PM1 ( .b(VNW), .s(VDD), .g(vin), .d(vop));
pfet_b  PM2 ( .b(VNW), .s(VDD), .g(vop), .d(von));
pfet_b  PM3 ( .b(VNW), .s(VDD), .g(von), .d(vop));
pfet_b  PM0 ( .b(VNW), .s(VDD), .g(vip), .d(von));
nfet_b  NM1 ( .b(VPW), .s(VSS), .g(vin), .d(vop));
nfet_b  NM2 ( .b(VPW), .s(VSS), .g(vop), .d(von));
nfet_b  NM0 ( .b(VPW), .s(VSS), .g(vip), .d(von));
nfet_b  NM3 ( .b(VPW), .s(VSS), .g(von), .d(vop));

endmodule
