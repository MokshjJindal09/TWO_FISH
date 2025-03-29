`timescale 1ns / 1ps
module F_function(R0,R1,K0,K1,S0,S1,F0,F1);
    input [31:0] R0,R1,K0,K1,S0,S1;
    output [31:0] F0,F1;
    wire [31:0] rol,T0,T1,t0,t1;
    assign rol = (R1 << 8) | (R1 >> (32 - 8));
    G_Function g0(R0,S0,S1,T0);
    G_Function g1(Rrol,S0,S1,T1);
    pht_32bit p0(T0,T1,t0,t1);
    assign F0=t0+K0;
    assign F1=t1+K1;
endmodule