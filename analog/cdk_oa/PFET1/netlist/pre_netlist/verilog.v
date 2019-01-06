//Verilog HDL for "RAIL12", "pfet1" "Pre_netlist"


module pfet1 ( D, G, S, VDD, VNW, VPW, VSS );

  inout VNW;
  inout S;
  inout VDD;
  inout VSS;
  inout G;
  inout D;
  inout VPW;
specify 
    specparam CDS_LIBNAME  = "RAIL12";
    specparam CDS_CELLNAME = "pfet1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

PFET_B  P0 ( .b(VNW), .s(S), .g(G), .d(D));
endmodule
