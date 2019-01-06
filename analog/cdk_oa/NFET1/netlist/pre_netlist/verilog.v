//Verilog HDL for "RAIL12", "nfet1" "Pre_netlist"


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
