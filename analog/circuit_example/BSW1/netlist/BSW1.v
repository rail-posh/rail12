module GCAP (
	inout CT,
	inout CB
);
//placeholder to pass lvs in virtuoso
endmodule

module BSW1 (
	input  CK,
	input  CKB,
	inout  VIN,
	inout VOUT,
	inout  VSS,
 	inout VDD
);

wire CAPB;
wire CAPT;
wire [0:0] vi;
wire vo;
GCAP I0 (.CB(CAPB), .CT(CAPT), .VDD(VDD), .VSS(VSS)); 
NFET1 I1 ( .D(vi[0]), .G(CK), .S(CAPB), .VDD(VDD), .VSS(VSS));
NFET1 I2 ( .D(VOUT), .G(vo), .S(VIN), .VDD(VDD), .VSS(VSS));
NFET1 I3 ( .D(VOUT), .G(vo), .S(VIN), .VDD(VDD), .VSS(VSS));
NFET1 I4 ( .D(VOUT), .G(vo), .S(VIN), .VDD(VDD), .VSS(VSS));
NFET1 I5 ( .D(VOUT), .G(vo), .S(VIN), .VDD(VDD), .VSS(VSS));
NFET1 I6 ( .D(VOUT), .G(vo), .S(VIN), .VDD(VDD), .VSS(VSS));
NFET1 I7 ( .D(CAPB), .G(CKB), .S(VSS), .VDD(VDD), .VSS(VSS));
NFET1 I8 ( .D(VIN), .G(vo), .S(CAPB), .VDD(VDD), .VSS(VSS));
CDC1 I9 ( .CAP(CAPT), .VO(vo),.I1(vi[0]), .I2(CKB), .VDD(VDD), .VSS(VSS));
PFET1 I10 ( .D(VDD), .G(CK), .S(vi[0]), .VDD(VDD), .VSS(VSS));
endmodule

