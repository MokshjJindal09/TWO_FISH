`timescale 1ns / 1ps

module mds(

    input [7:0] y0, y1, y2, y3,
    output [31:0] out
);
    // Define a 4x4 array
    reg [7:0] array [3:0][3:0];

    // Wires to store multiplication results
    wire [7:0] mult_result [3:0][3:0];
    wire [7:0] xor_results[3:0];

    // Initializing the array
    always @(*) begin
            array[0][0] <= 8'h01; array[0][1] <= 8'hEF; array[0][2] <= 8'h5B; array[0][3] <= 8'h5B;
            array[1][0] <= 8'h5B; array[1][1] <= 8'hEF; array[1][2] <= 8'hEF; array[1][3] <= 8'h01;
            array[2][0] <= 8'hEF; array[2][1] <= 8'h5B; array[2][2] <= 8'h01; array[2][3] <= 8'hEF;
            array[3][0] <= 8'hEF; array[3][1] <= 8'h01; array[3][2] <= 8'hEF; array[3][3] <= 8'h5B;
    end

    genvar i, j;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                gf_multi mult_unit (
                    .U(array[i][j]), 
                    .V((j == 0) ? y0 : (j == 1) ? y1 : (j == 2) ? y2 : y3), 
                    .W(mult_result[i][j])
                );
            end
        end
    endgenerate

    assign xor_results[0] = mult_result[0][0] ^ mult_result[0][1] ^ mult_result[0][2] ^ mult_result[0][3];
    assign xor_results[1] = mult_result[1][0] ^ mult_result[1][1] ^ mult_result[1][2] ^ mult_result[1][3];
    assign xor_results[2] = mult_result[2][0] ^ mult_result[2][1] ^ mult_result[2][2] ^ mult_result[2][3];
    assign xor_results[3] = mult_result[3][0] ^ mult_result[3][1] ^ mult_result[3][2] ^ mult_result[3][3];

    assign out = {xor_results[0], xor_results[1], xor_results[2], xor_results[3]};
    
endmodule
