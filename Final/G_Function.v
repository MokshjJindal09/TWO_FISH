`timescale 1ns / 1ps


module G_Function(X,S0,S1,Z);
    input [31:0] X,S0,S1;
    output [31:0] Z;
    wire[31:0] Y;
    wire [7:0] y0,y1,y2,y3;
    
    
    Sbox u1 (X,S0,S1,Y);
    assign {y0,y1,y2,y3}=Y;
    
    
    mds m1 (.y0(y0),.y1(y1),.y2(y2),.y3(y3),.out(Z));
endmodule
