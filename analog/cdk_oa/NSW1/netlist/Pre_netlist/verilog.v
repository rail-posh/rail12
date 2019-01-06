//Verilog HDL for "RAIL12", "nsw1" "Pre_netlist"


module nsw1 ( NEG, POS, VDD, VNW, VPW, VSS, SW );

  inout POS;
  inout NEG;
  inout VNW;
  inout VDD;
  input SW;
  inout VSS;
  inout VPW;
specify 
    specparam CDS_LIBNAME  = "RAIL12";
    specparam CDS_CELLNAME = "nsw1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

NFET1 I0 ( .VDD(VDD), .VSS(VSS), .VNW(VNW), .VPW(VPW), .S(NEG),
     .D(POS), .G(NET7));
SC7P5T_INVX0P5_SSC14R I2 ( .VPW(VPW), .VNW(VNW), .VSS(VSS), .VDD(VDD),
     .Z(NET6), .A(SW));
SC7P5T_INVX0P5_SSC14R I1 ( .VPW(VPW), .VNW(VNW), .VSS(VSS), .VDD(VDD),
     .Z(NET7), .A(NET6));


endmodule

module nfet1 ( D, G, S, VDD, VNW, VPW, VSS );

  inout VNW;
  inout S;
  inout VDD;
  inout VSS;
  inout G;
  inout D;
  inout VPW;
specify 
    specparam CDS_LIBNAME  = "RAIL12";
    specparam CDS_CELLNAME = "nfet1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

NFET_B  N0 ( .b(VPW), .s(S), .g(G), .d(D));
endmodule
