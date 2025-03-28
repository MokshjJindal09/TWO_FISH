`timescale 1ns / 1ps
module encrypt_out(input [127:0] plain_text, input [127:0] key, output [127:0] encryt);

    wire [127:0] in_whiten;
    wire [31:0] S0, S1;
    wire [127:0] Key;
    assign plain_text2 = plain_text;
    
    Mat_Multi uut(.Key(key), .S0(S0), .S1(S1));
    
    input_whitening(.plain_text(plain_text), .key(key), .whitened_text(in_whiten));
    
    genvar i;
    generate
        for(i = 0; i<16; i= i+1) begin
            wire [31:0] K0, K1;
            H_Function(.i(i), .M(key), .K0(K0), .K1(K1));
            
            FuncF_out(.R0(plain_text2[127:96]), .R1(plain_text2[95:64]),
             .R2(plain_text2[63:32]), .R3(plain_text2[31:0]), .K0(K0), .K1(K1),
              .c2(plain_text2[127:96]), .c3(plain_text2[95:64]),
             .r0(plain_text2[63:32]), .r1(plain_text2[31:0]), .S0(S0), .S1(S1));
            
        end
    endgenerate
    
    H_Function(.i(2), .M(key), .K0(Key[127:96]), .K1(Key[95:64]));
    H_Function(.i(3), .M(key), .K0(Key[63:32]), .K1(Key[31:0]));
    
    input_whitening(.plain_text(plain_text2), .key(Key), .whitened_text(encrypt));
endmodule