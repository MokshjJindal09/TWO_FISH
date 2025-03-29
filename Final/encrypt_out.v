`timescale 1ns / 1ps
module encrypt_out(input [127:0] plain_text, input [127:0] key, output [127:0] encrypt);

    wire [127:0] in_whiten;
    wire [31:0] S0, S1;
    wire [127:0] Key1, Key2;
    wire [31:0] K [39:0] ;
    
    Mat_Multi uut(.Key(key), .S0(S0), .S1(S1));

    
        H_Function h0(.i(0), .M(key), .K0(K[0]), .K1(K[1]));
        H_Function h1(.i(1), .M(key), .K0(K[2]), .K1(K[3]));
        H_Function h2(.i(2), .M(key), .K0(K[4]), .K1(K[5]));
        H_Function h3(.i(3), .M(key), .K0(K[6]), .K1(K[7]));
        H_Function h4(.i(4), .M(key), .K0(K[8]), .K1(K[9]));
        H_Function h5(.i(5), .M(key), .K0(K[10]), .K1(K[11]));
        H_Function h6(.i(6), .M(key), .K0(K[12]), .K1(K[13]));
        H_Function h7(.i(7), .M(key), .K0(K[14]), .K1(K[15]));
        H_Function h8(.i(8), .M(key), .K0(K[16]), .K1(K[17]));
        H_Function h9(.i(9), .M(key), .K0(K[18]), .K1(K[19]));
        H_Function h10(.i(10), .M(key), .K0(K[20]), .K1(K[21]));
        H_Function h11(.i(11), .M(key), .K0(K[22]), .K1(K[23]));
        H_Function h12(.i(12), .M(key), .K0(K[24]), .K1(K[25]));
        H_Function h13(.i(13), .M(key), .K0(K[26]), .K1(K[27]));
        H_Function h14(.i(14), .M(key), .K0(K[28]), .K1(K[29]));
        H_Function h15(.i(15), .M(key), .K0(K[30]), .K1(K[31]));
        H_Function h16(.i(16), .M(key), .K0(K[32]), .K1(K[33]));
        H_Function h17(.i(17), .M(key), .K0(K[34]), .K1(K[35]));
        H_Function h18(.i(18), .M(key), .K0(K[36]), .K1(K[37]));
        H_Function h19(.i(19), .M(key), .K0(K[38]), .K1(K[39]));
        
    input_whitening w0(.plain_text(plain_text), .key(Key1), .whitened_text(in_whiten));
    
    
    assign {t00,t01,t02,t03} = plain_text;

               assign {t00,t01,t02,t03} = plain_text;

            FuncF_out funcf_inst0(
                .R0(t00), 
                .R1(t01),
                .R2(t02), 
                .R3(t03), 
                .K0(K[8]), 
                .K1(K[9]),
                .c2(t10), 
                .c3(t11),
                .r0(t12), 
                .r1(t13), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst1(
                .R0(t10), 
                .R1(t11),
                .R2(t12), 
                .R3(t13), 
                .K0(K[10]), 
                .K1(K[11]),
                .c2(t20), 
                .c3(t21),
                .r0(t22), 
                .r1(t23), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst2(
                .R0(t20), 
                .R1(t21),
                .R2(t22), 
                .R3(t23), 
                .K0(K[12]), 
                .K1(K[13]),
                .c2(t30), 
                .c3(t31),
                .r0(t32), 
                .r1(t33), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst3(
                .R0(t30), 
                .R1(t31),
                .R2(t32), 
                .R3(t33), 
                .K0(K[14]), 
                .K1(K[15]),
                .c2(t40), 
                .c3(t41),
                .r0(t42), 
                .r1(t43), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst4(
                .R0(t40), 
                .R1(t41),
                .R2(t42), 
                .R3(t43), 
                .K0(K[16]), 
                .K1(K[17]),
                .c2(t50), 
                .c3(t51),
                .r0(t52), 
                .r1(t53), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst5(
                .R0(t50), 
                .R1(t51),
                .R2(t52), 
                .R3(t53), 
                .K0(K[18]), 
                .K1(K[19]),
                .c2(t60), 
                .c3(t61),
                .r0(t62), 
                .r1(t63), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst6(
                .R0(t60), 
                .R1(t61),
                .R2(t62), 
                .R3(t63), 
                .K0(K[20]), 
                .K1(K[21]),
                .c2(t70), 
                .c3(t71),
                .r0(t72), 
                .r1(t73), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst7(
                .R0(t70), 
                .R1(t71),
                .R2(t72), 
                .R3(t73), 
                .K0(K[22]), 
                .K1(K[23]),
                .c2(t80), 
                .c3(t81),
                .r0(t82), 
                .r1(t83), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst8(
                .R0(t80), 
                .R1(t81),
                .R2(t82), 
                .R3(t83), 
                .K0(K[24]), 
                .K1(K[25]),
                .c2(t90), 
                .c3(t91),
                .r0(t92), 
                .r1(t93), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst9(
                .R0(t90), 
                .R1(t91),
                .R2(t92), 
                .R3(t93), 
                .K0(K[26]), 
                .K1(K[27]),
                .c2(t100), 
                .c3(t101),
                .r0(t102), 
                .r1(t103), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst10(
                .R0(t100), 
                .R1(t101),
                .R2(t102), 
                .R3(t103), 
                .K0(K[28]), 
                .K1(K[29]),
                .c2(t110), 
                .c3(t111),
                .r0(t112), 
                .r1(t113), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst11(
                .R0(t110), 
                .R1(t111),
                .R2(t112), 
                .R3(t113), 
                .K0(K[30]), 
                .K1(K[31]),
                .c2(t120), 
                .c3(t121),
                .r0(t122), 
                .r1(t123), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst12(
                .R0(t120), 
                .R1(t121),
                .R2(t122), 
                .R3(t123), 
                .K0(K[32]), 
                .K1(K[33]),
                .c2(t130), 
                .c3(t131),
                .r0(t132), 
                .r1(t133), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst13(
                .R0(t130), 
                .R1(t131),
                .R2(t132), 
                .R3(t133), 
                .K0(K[34]), 
                .K1(K[35]),
                .c2(t140), 
                .c3(t141),
                .r0(t142), 
                .r1(t143), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst14(
                .R0(t140), 
                .R1(t141),
                .R2(t142), 
                .R3(t143), 
                .K0(K[36]), 
                .K1(K[37]),
                .c2(t150), 
                .c3(t151),
                .r0(t152), 
                .r1(t153), 
                .S0(S0), 
                .S1(S1)
            );
    

            FuncF_out funcf_inst15(
                .R0(t150), 
                .R1(t151),
                .R2(t152), 
                .R3(t153), 
                .K0(K[38]), 
                .K1(K[39]),
                .c2(t160), 
                .c3(t161),
                .r0(t162), 
                .r1(t163), 
                .S0(S0), 
                .S1(S1)
            );
    assign out={t160,t161,t162,t163};
    
    
    input_whitening w1(.plain_text(out), .key(Key2), .whitened_text(encrypt));
    
    
    
    
endmodule