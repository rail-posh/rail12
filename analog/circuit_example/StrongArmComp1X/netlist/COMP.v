module COMP (  
output  CKN, 
output VON, 
output VONB,
output VOP,
output VOPB,
inout  AVDD,
inout AVSS, 
inout  DVDD, 
inout DVSS, 
input CKC, 
input CKL,
input VDACN,
input VDACP
);

wire comp_a;
wire comp_b;
wire RDB;
wire delay_out;

SC7P5T_INVX1_SSC14R I0 ( .Z(VONB), .VDD(DVDD), .VSS(DVSS), .A(VON));
SC7P5T_INVX1_SSC14R I1 ( .Z(VOPB), .VDD(DVDD), .VSS(DVSS), .A(VOP)); //@symmetry I0
SC7P5T_NR2X1_SSC14R I2 ( .Z(RDB), .VDD(DVDD), .VSS(DVSS), .A(VON), .B(VOP));
SC7P5T_DLYX100_SSC14R I3 ( .Z(delay_out), .VDD(DVDD), .VSS(DVSS), .A(RDB));
SC7P5T_NR2X2_SSC14R I4 ( .Z(CKN), .VDD(DVDD), .VSS(DVSS), .A(delay_out), .B(CKL));
SC7P5T_INVX1_SSC14R I5 ( .Z(VON), .VDD(AVDD), .VSS(AVSS), .A(comp_b));
SC7P5T_INVX1_SSC14R I6 ( .Z(VOP), .VDD(AVDD), .VSS(AVSS), .A(comp_a)); //@symmetry I5
MND3X1 I7 ( .A(comp_b), .B(comp_a), .VDD(AVDD), .VSS(AVSS), .CK(CKC), .VIP(VDACN));
MND3X1 I8 ( .A(comp_a), .B(comp_b), .VDD(AVDD), .VSS(AVSS), .CK(CKC), .VIP(VDACP)); //@symmetry I7
endmodule
