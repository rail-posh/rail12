//Verilog HDL for "rail12lp", "MOM2" "Pre_netlist"


module MOM2 ( CB, CT, VDD, VNW, VPW, VSS );

  inout CT;
  inout VNW;
  inout VDD;
  inout CB;
  inout VSS;
  inout VPW;

specify 
    specparam CDS_LIBNAME  = "rail12lp";
    specparam CDS_CELLNAME = "MOM2";
    specparam CDS_VIEWNAME = "schematic";
endspecify

SC7P5T_DECAPSTX6_SSC14R I2 ( VDD, VNW, VPW, VSS);
SC7P5T_DECAPSTX6_SSC14R I3 ( VDD, VNW, VPW, VSS);


endmodule

module SC7P5T_DECAPSTX6_SSC14R ( VDD, VNW, VPW, VSS );

inout  VDD, VNW, VPW, VSS;


specify 
    specparam CDS_LIBNAME  = "IN14LPP_SC7P5T_84CPP_BASE_SSC14R";
    specparam CDS_CELLNAME = "SC7P5T_DECAPSTX6_SSC14R";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet  MMP1 ( .s(VDD), .g(N0), .d(VDD));
pfet  MMP2 ( .s(VDD), .g(N1), .d(N0));
pfet  MMP3 ( .s(VDD), .g(N1), .d(N0));
nfet  MMN1 ( .s(VSS), .g(N0), .d(N1));
nfet  MMN2 ( .s(VSS), .g(N0), .d(N1));
nfet  MMN3 ( .s(VSS), .g(N0), .d(VSS));
nfet  MMN4 ( .s(VSS), .g(N1), .d(VSS));

endmodule
