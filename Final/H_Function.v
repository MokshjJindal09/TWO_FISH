`timescale 1ns / 1ps
module H_Function(i,M ,K0,K1);
    input [7:0] i;
    input[127:0] M ;
    output [31:0] K0,K1;
    wire [31:0] X0,X1,m0,m1,m2,m3,y0,y1,rol;
    assign X0= {8'd2*i,8'd2*i,8'd2*i,8'd2*i};
    assign X1= {8'd2*i+1,8'd2*i+1,8'd2*i+1,8'd2*i+1};
    assign {m0,m1,m2,m3}=M;
    G_Function g2(X0,m2,m0,y0);
    G_Function g3(X1,m3,m1,y1);
    assign rol=(y1 << 8) | (y1 >> (32 - 8));
    pht_32bit p1(y0,rol,K0,t1);
    assign K1=(t1 << 9) | (t1 >> (32 - 9));
endmodule
