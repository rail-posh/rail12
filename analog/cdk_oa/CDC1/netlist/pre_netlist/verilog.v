//Verilog HDL for "RAIL12", "cdc1" "Pre_netlist"


module cdc1 ( CAP, VDD, VNW, VO, VPW, VSS, I1, I2 );

  inout VO;
  input I1;
  inout CAP;
  input I2;
  inout VNW;
  inout VDD;
  inout VSS;
  inout VPW;
specify 
    specparam CDS_LIBNAME  = "RAIL12";
    specparam CDS_CELLNAME = "cdc1";
    specparam CDS_VIEWNAME = "schematic";
endspecify

PFET_B  P1 ( .b(VNW), .s(CAP), .g(I1), .d(VO));
PFET_B  P0 ( .b(VNW), .s(VDD), .g(VO), .d(CAP));
NFET_B  N1 ( .b(VPW), .s(VSS), .g(I2), .d(NET17));
NFET_B  N0 ( .b(VPW), .s(NET17), .g(VDD), .d(VO));
endmodule
