`timescale 1ns / 1ps
module func_h(key,a,K_even,K_odd);
    input [127:0]key;
    input [7:0]a;
    output [31:0]K_even,K_odd;
//    output [31:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12,K13,K14,K15,K16,K17,K18,K19,K20,K21,K22,K23,K24,K25,K26,K27,K28,K29,K30,K31,K32,K33,K34,K35,K36,K37,K38,K39;
//    wire [31:0] K [0:39];
    wire [31:0] O1,O2;
    wire [31:0] M0,M1,M2,M3;
    wire [31:0]ROL8,ROL9;
    wire [31:0] k;
    wire [7:0] a2;
    wire [7:0] a2p1;
    
    assign a2=2*a;
    assign a2p1=a2+1;
    assign {M0,M1,M2,M3}=key;
            func_g f0({4{a2}},M2,M0,O1);
            func_g f1({4{a2p1}},M3,M1,O2);
            assign ROL8={O2[23:0],O2[31:24]};
            pht_32bit P0(O1,ROL8,K_even,k);
            assign ROL9= {k[22:0],k[31:23]};
//            assign K[2*a]=k[2*a];
            assign K_odd=ROL9;
//   assign K0=K[0];assign K1=K[1];assign K2=K[2];assign K3=K[3];assign K4=K[4];assign K5=K[5];assign K6=K[6];assign K7=K[7];assign K8=K[8];assign K9=K[9];
//   assign K10=K[10];assign K11=K[11];assign K12=K[12];assign K13=K[13];assign K14=K[14];assign K15=K[15];assign K16=K[16];assign K17=K[17];assign K18=K[18];assign K19=K[19];
//   assign K20=K[20];assign K21=K[21];assign K22=K[22];assign K23=K[23];assign K24=K[24];assign K25=K[25];assign K26=K[26];assign K27=K[27];assign K28=K[28];assign K29=K[29];
//   assign K30=K[30];assign K31=K[31];assign K32=K[32];assign K33=K[33];assign K34=K[34];assign K35=K[35];assign K36=K[36];assign K37=K[37];assign K38=K[38];assign K39=K[39];
endmodule