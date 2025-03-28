`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 23:24:26
// Design Name: 
// Module Name: G_Function
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module G_Function(X,S0,S1,Z);
    input [31:0] X,S0,S1;
    output [31:0] Z;
    wire [7:0] X0,X1,X2,X3;
    wire [7:0] X0,X1,X2,X3;
    
    assign {X0,X1,X2,X3}=X;
    
    Sbox u1 (X0,S0,S1,Y0);
    Sbox u2 (X1,S0,S1,Y1);
    Sbox u3 (X2,S0,S1,Y2);
    Sbox u4 (X3,S0,S1,Y3);
    
    
    mds m1 (Y0,Y1,Y2,Y3,Z);
endmodule
