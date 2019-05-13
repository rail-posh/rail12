module COMP (  
input VDACN,
input VDACP,
input  DONE, 
input STARTLSB, 
output VON,
output VOP,
output VALID,
inout  AVDD,
inout AVSS, 
inout  DVDD, 
inout DVSS, 
inout  VNW, 
inout VPW 
);

wire CKC;
wire VALID;
wire comp_a;
wire comp_b;
wire RDB;
wire delay_out;
wire startlsb_n;

SC7P5T_OR2X1_SSC14R I00 ( .Z(RDB), .VDD(DVDD), .VSS(DVSS), .A(VON), .B(VOP), .VNW(VNW), .VPW(VPW));
SC7P5T_INVX4_SSC14R I01 ( .Z(VALID), .VDD(DVDD), .VSS(DVSS), .A(RDB), .VNW(VNW), .VPW(VPW));
SC7P5T_DLYX100_SSC14R I02 ( .Z(delay_out), .VDD(DVDD), .VSS(DVSS), .A(VALID), .VNW(VNW), .VPW(VPW));
SC7P5T_NR3X1_SSC14R I03 ( .Z(CKC), .VDD(DVDD), .VSS(DVSS), .A(delay_out), .B(startlsb_n), .C(DONE), .VNW(VNW), .VPW(VPW));
SC7P5T_INVX1_SSC14R I04 ( .Z(startlsb_n), .VDD(DVDD), .VSS(DVSS), .A(STARTLSB), .VNW(VNW), .VPW(VPW));
SC7P5T_INVX2_SSC14R I05 ( .Z(VON), .VDD(AVDD), .VSS(AVSS), .A(comp_b), .VNW(VNW), .VPW(VPW));
SC7P5T_INVX2_SSC14R I06 ( .Z(VOP), .VDD(AVDD), .VSS(AVSS), .A(comp_a), .VNW(VNW), .VPW(VPW));
MND3X1 I07 ( .A(comp_b), .B(comp_a), .VDD(AVDD), .VSS(AVSS), .CK(CKC), .VIP(VDACN), .VNW(VNW), .VPW(VPW));
MND3X1 I08 ( .A(comp_a), .B(comp_b), .VDD(AVDD), .VSS(AVSS), .CK(CKC), .VIP(VDACP), .VNW(VNW), .VPW(VPW)); 
MND3X1 I09 ( .A(comp_b), .B(comp_a), .VDD(AVDD), .VSS(AVSS), .CK(CKC), .VIP(VDACN), .VNW(VNW), .VPW(VPW));
MND3X1 I10 ( .A(comp_a), .B(comp_b), .VDD(AVDD), .VSS(AVSS), .CK(CKC), .VIP(VDACP), .VNW(VNW), .VPW(VPW)); 
endmodule
