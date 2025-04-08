`timescale 1ns / 1ps

module gf_multi (
    input [7:0] U,   
    input [7:0] V,   
    output reg [7:0] W 
);
    integer i;
    reg [8:0] temp; 
    parameter [8:0] P = 9'b101101001;
    always @(*) begin
        temp = 0;  
        for (i = 1; i <= 8; i = i + 1) begin
            temp = temp << 1; 
            if (temp[8]) 
                temp = temp ^ P;

            if (U[8 - i])
                temp = temp ^ V;
        end  
        W = temp[7:0]; 
    end

endmodule