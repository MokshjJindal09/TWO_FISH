`timescale 1ns / 1ps

module Mat_Multi(Key,S0,S1);
    input [127:0]Key;
    output [31:0] S0,S1;
    
    multi m00 ( 8'h01 , Key[127: 120] , 9'b101001101 , A00);
    multi m01 ( 8'hA4 , Key[119: 112] , 9'b101001101 , A01);
    multi m02 ( 8'h55 , Key[111: 104] , 9'b101001101 , A02);
    multi m03 ( 8'h87 , Key[103: 96] , 9'b101001101 , A03);
    multi m04 ( 8'h5A , Key[95: 88] , 9'b101001101 , A04);
    multi m05 ( 8'h58 , Key[87: 80] , 9'b101001101 , A05);
    multi m06 ( 8'hDB , Key[79: 72] , 9'b101001101 , A06);
    multi m07 ( 8'h9E , Key[71: 64] , 9'b101001101 , A07);
    assign S00= A00^A01^A02^A03^A04^A05^A06^A07;
    
    multi m10 ( 8'hA4 , Key[127: 120] , 9'b101001101 , A10);
    multi m11 ( 8'h56 , Key[119: 112] , 9'b101001101 , A11);
    multi m12 ( 8'h82 , Key[111: 104] , 9'b101001101 , A12);
    multi m13 ( 8'hF3 , Key[103: 96] , 9'b101001101 , A13);
    multi m14 ( 8'h1E , Key[95: 88] , 9'b101001101 , A14);
    multi m15 ( 8'hCE , Key[87: 80] , 9'b101001101 , A15);
    multi m16 ( 8'h68 , Key[79: 72] , 9'b101001101 , A16);
    multi m17 ( 8'hE5 , Key[71: 64] , 9'b101001101 , A17);
    assign S01= A10^A11^A12^A13^A14^A15^A16^A17;
        
    multi m20 ( 8'h02 , Key[127: 120] , 9'b101001101 , A20);
    multi m21 ( 8'hA1 , Key[119: 112] , 9'b101001101 , A21);
    multi m22 ( 8'hFC , Key[111: 104] , 9'b101001101 , A22);
    multi m23 ( 8'hC1 , Key[103: 96] , 9'b101001101 , A23);
    multi m24 ( 8'h47 , Key[95: 88] , 9'b101001101 , A24);
    multi m25 ( 8'hAE , Key[87: 80] , 9'b101001101 , A25);
    multi m26 ( 8'h3D , Key[79: 72] , 9'b101001101 , A26);
    multi m27 ( 8'h19 , Key[71: 64] , 9'b101001101 , A27);
    assign S02= A20^A21^A22^A23^A24^A25^A26^A27;
  
    multi m30 ( 8'hA4 , Key[127: 120] , 9'b101001101 , A30);
    multi m31 ( 8'h55 , Key[119: 112] , 9'b101001101 , A31);
    multi m32 ( 8'h87 , Key[111: 104] , 9'b101001101 , A32);
    multi m33 ( 8'h5A , Key[103: 96] , 9'b101001101 , A33);
    multi m34 ( 8'h58 , Key[95: 88] , 9'b101001101 , A34);
    multi m35 ( 8'hDB , Key[87: 80] , 9'b101001101 , A35);
    multi m36 ( 8'h9E , Key[79: 72] , 9'b101001101 , A36);
    multi m37 ( 8'h03 , Key[71: 64] , 9'b101001101 , A37);
    assign S03= A30^A31^A32^A33^A34^A35^A36^A37;
    
    assign S0={S00,S01,S02,S03};

    multi s08 ( 8'h01 , Key[63: 56] , 9'b101001101 , B08);
    multi s07 ( 8'hA4 , Key[55: 48] , 9'b101001101 , B07);
    multi s06 ( 8'h55 , Key[47: 40] , 9'b101001101 , B06);
    multi s05 ( 8'h87 , Key[39: 32] , 9'b101001101 , B05);
    multi s04 ( 8'h5A , Key[31: 24] , 9'b101001101 , B04);
    multi s03 ( 8'h58 , Key[23: 16] , 9'b101001101 , B03);
    multi s02 ( 8'hDB , Key[15: 8] , 9'b101001101 , B02);
    multi s01 ( 8'h9E , Key[7: 0] , 9'b101001101 , B01);
    assign S10=B08^B01^B02^B03^B04^B05^B06^B07;


    multi s18 ( 8'hA4 , Key[63: 56] , 9'b101001101 , B18);
    multi s17 ( 8'h56 , Key[55: 48] , 9'b101001101 , B17);
    multi s16 ( 8'h82 , Key[47: 40] , 9'b101001101 , B16);
    multi s15 ( 8'hF3 , Key[39: 32] , 9'b101001101 , B15);
    multi s14 ( 8'h1E , Key[31: 24] , 9'b101001101 , B14);
    multi s13 ( 8'hC6 , Key[23: 16] , 9'b101001101 , B13);
    multi s12 ( 8'h68 , Key[15: 8] , 9'b101001101 , B12);
    multi s11 ( 8'hE5 , Key[7: 0] , 9'b101001101 , B11);
    assign S11=B18^B11^B12^B13^B14^B15^B16^B17;


    multi s28 ( 8'h02 , Key[63: 56] , 9'b101001101 , B28);
    multi s27 ( 8'hA1 , Key[55: 48] , 9'b101001101 , B27);
    multi s26 ( 8'hFC , Key[47: 40] , 9'b101001101 , B26);
    multi s25 ( 8'hC1 , Key[39: 32] , 9'b101001101 , B25);
    multi s24 ( 8'h47 , Key[31: 24] , 9'b101001101 , B24);
    multi s23 ( 8'hAE , Key[23: 16] , 9'b101001101 , B23);
    multi s22 ( 8'h3D , Key[15: 8] , 9'b101001101 , B22);
    multi s21 ( 8'h19 , Key[7: 0] , 9'b101001101 , B21);
    assign S12=B28^B21^B22^B23^B24^B25^B26^B27;


    multi s38 ( 8'hA4 , Key[63: 56] , 9'b101001101 , B38);
    multi s37 ( 8'h55 , Key[55: 48] , 9'b101001101 , B37);
    multi s36 ( 8'h87 , Key[47: 40] , 9'b101001101 , B36);
    multi s35 ( 8'h5A , Key[39: 32] , 9'b101001101 , B35);
    multi s34 ( 8'h58 , Key[31: 24] , 9'b101001101 , B34);
    multi s33 ( 8'hDB , Key[23: 16] , 9'b101001101 , B33);
    multi s32 ( 8'h9E , Key[15: 8] , 9'b101001101 , B32);
    multi s31 ( 8'h03 , Key[7: 0] , 9'b101001101 , B31);
    assign S13=B38^B31^B32^B33^B34^B35^B36^B37;

    assign S1={S10,S11,S12,S13};
endmodule
