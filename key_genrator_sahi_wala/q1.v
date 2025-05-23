`timescale 1ns / 1ps
module Q1(X,X1);
    input[7:0] X;
    output reg [7:0] X1;
    
    always@(*)
    begin
    case(X)        
        8'h0 : X1<=8'h75;
        8'h1 : X1<=8'hF3;
        8'h2 : X1<=8'hC6;
        8'h3 : X1<=8'hF4;
        8'h4 : X1<=8'hDB;
        8'h5 : X1<=8'h7B;
        8'h6 : X1<=8'hFB;
        8'h7 : X1<=8'hC8;
        8'h8 : X1<=8'h4A;
        8'h9 : X1<=8'hD3;
        8'ha : X1<=8'hE6;
        8'hb : X1<=8'h6B;
        8'hc : X1<=8'h45;
        8'hd : X1<=8'h7D;
        8'he : X1<=8'hE8;
        8'hf : X1<=8'h4B;
        8'h10 : X1<=8'hD6;
        8'h11 : X1<=8'h32;
        8'h12 : X1<=8'hD8;
        8'h13 : X1<=8'hFD;
        8'h14 : X1<=8'h37;
        8'h15 : X1<=8'h71;
        8'h16 : X1<=8'hF1;
        8'h17 : X1<=8'hE1;
        8'h18 : X1<=8'h30;
        8'h19 : X1<=8'h0F;
        8'h1a : X1<=8'hF8;
        8'h1b : X1<=8'h1B;
        8'h1c : X1<=8'h87;
        8'h1d : X1<=8'hFA;
        8'h1e : X1<=8'h06;
        8'h1f : X1<=8'h3F;
        8'h20 : X1<=8'h5E;
        8'h21 : X1<=8'hBA;
        8'h22 : X1<=8'hAE;
        8'h23 : X1<=8'h5B;
        8'h24 : X1<=8'h8A;
        8'h25 : X1<=8'h00;
        8'h26 : X1<=8'hBC;
        8'h27 : X1<=8'h9D;
        8'h28 : X1<=8'h6D;
        8'h29 : X1<=8'hC1;
        8'h2a : X1<=8'hB1;
        8'h2b : X1<=8'h0E;
        8'h2c : X1<=8'h80;
        8'h2d : X1<=8'h5D;
        8'h2e : X1<=8'hD2;
        8'h2f : X1<=8'hD5;
        8'h30 : X1<=8'hA0;
        8'h31 : X1<=8'h84;
        8'h32 : X1<=8'h07;
        8'h33 : X1<=8'h14;
        8'h34 : X1<=8'hB5;
        8'h35 : X1<=8'h90;
        8'h36 : X1<=8'h2C;
        8'h37 : X1<=8'hA3;
        8'h38 : X1<=8'hB2;
        8'h39 : X1<=8'h73;
        8'h3a : X1<=8'h4C;
        8'h3b : X1<=8'h54;
        8'h3c : X1<=8'h92;
        8'h3d : X1<=8'h74;
        8'h3e : X1<=8'h36;
        8'h3f : X1<=8'h51;
        8'h40 : X1<=8'h38;
        8'h41 : X1<=8'hB0;
        8'h42 : X1<=8'hBD;
        8'h43 : X1<=8'h5A;
        8'h44 : X1<=8'hFC;
        8'h45 : X1<=8'h60;
        8'h46 : X1<=8'h62;
        8'h47 : X1<=8'h96;
        8'h48 : X1<=8'h6C;
        8'h49 : X1<=8'h42;
        8'h4a : X1<=8'hF7;
        8'h4b : X1<=8'h10;
        8'h4c : X1<=8'h7C;
        8'h4d : X1<=8'h28;
        8'h4e : X1<=8'h27;
        8'h4f : X1<=8'h8C;
        8'h50 : X1<=8'h13;
        8'h51 : X1<=8'h95;
        8'h52 : X1<=8'h9C;
        8'h53 : X1<=8'hC7;
        8'h54 : X1<=8'h24;
        8'h55 : X1<=8'h46;
        8'h56 : X1<=8'h3B;
        8'h57 : X1<=8'h70;
        8'h58 : X1<=8'hCA;
        8'h59 : X1<=8'hE3;
        8'h5a : X1<=8'h85;
        8'h5b : X1<=8'hCB;
        8'h5c : X1<=8'h11;
        8'h5d : X1<=8'hD0;
        8'h5e : X1<=8'h93;
        8'h5f : X1<=8'hB8;
        8'h60 : X1<=8'hA6;
        8'h61 : X1<=8'h83;
        8'h62 : X1<=8'h20;
        8'h63 : X1<=8'hFF;
        8'h64 : X1<=8'h9F;
        8'h65 : X1<=8'h77;
        8'h66 : X1<=8'hC3;
        8'h67 : X1<=8'hCC;
        8'h68 : X1<=8'h03;
        8'h69 : X1<=8'h6F;
        8'h6a : X1<=8'h08;
        8'h6b : X1<=8'hBF;
        8'h6c : X1<=8'h40;
        8'h6d : X1<=8'hE7;
        8'h6e : X1<=8'h2B;
        8'h6f : X1<=8'hE2;
        8'h70 : X1<=8'h79;
        8'h71 : X1<=8'h0C;
        8'h72 : X1<=8'hAA;
        8'h73 : X1<=8'h82;
        8'h74 : X1<=8'h41;
        8'h75 : X1<=8'h3A;
        8'h76 : X1<=8'hEA;
        8'h77 : X1<=8'hB9;
        8'h78 : X1<=8'hE4;
        8'h79 : X1<=8'h9A;
        8'h7a : X1<=8'hA4;
        8'h7b : X1<=8'h97;
        8'h7c : X1<=8'h7E;
        8'h7d : X1<=8'hDA;
        8'h7e : X1<=8'h7A;
        8'h7f : X1<=8'h17;
        8'h80 : X1<=8'h66;
        8'h81 : X1<=8'h94;
        8'h82 : X1<=8'hA1;
        8'h83 : X1<=8'h1D;
        8'h84 : X1<=8'h3D;
        8'h85 : X1<=8'hF0;
        8'h86 : X1<=8'hDE;
        8'h87 : X1<=8'hB3;
        8'h88 : X1<=8'h0B;
        8'h89 : X1<=8'h72;
        8'h8a : X1<=8'hA7;
        8'h8b : X1<=8'h1C;
        8'h8c : X1<=8'hEF;
        8'h8d : X1<=8'hD1;
        8'h8e : X1<=8'h53;
        8'h8f : X1<=8'h3E;
        8'h90 : X1<=8'h8F;
        8'h91 : X1<=8'h33;
        8'h92 : X1<=8'h26;
        8'h93 : X1<=8'h5F;
        8'h94 : X1<=8'hEC;
        8'h95 : X1<=8'h76;
        8'h96 : X1<=8'h2A;
        8'h97 : X1<=8'h49;
        8'h98 : X1<=8'h81;
        8'h99 : X1<=8'h88;
        8'h9a : X1<=8'hEE;
        8'h9b : X1<=8'h21;
        8'h9c : X1<=8'hC4;
        8'h9d : X1<=8'h1A;
        8'h9e : X1<=8'hEB;
        8'h9f : X1<=8'hD9;
        8'ha0 : X1<=8'hC5;
        8'ha1 : X1<=8'h39;
        8'ha2 : X1<=8'h99;
        8'ha3 : X1<=8'hCD;
        8'ha4 : X1<=8'hAD;
        8'ha5 : X1<=8'h31;
        8'ha6 : X1<=8'h8B;
        8'ha7 : X1<=8'h01;
        8'ha8 : X1<=8'h18;
        8'ha9 : X1<=8'h23;
        8'haa : X1<=8'hDD;
        8'hab : X1<=8'h1F;
        8'hac : X1<=8'h4E;
        8'had : X1<=8'h2D;
        8'hae : X1<=8'hF9;
        8'haf : X1<=8'h48;
        8'hb0 : X1<=8'h4F;
        8'hb1 : X1<=8'hF2;
        8'hb2 : X1<=8'h65;
        8'hb3 : X1<=8'h8E;
        8'hb4 : X1<=8'h78;
        8'hb5 : X1<=8'h5C;
        8'hb6 : X1<=8'h58;
        8'hb7 : X1<=8'h19;
        8'hb8 : X1<=8'h8D;
        8'hb9 : X1<=8'hE5;
        8'hba : X1<=8'h98;
        8'hbb : X1<=8'h57;
        8'hbc : X1<=8'h67;
        8'hbd : X1<=8'h7F;
        8'hbe : X1<=8'h05;
        8'hbf : X1<=8'h64;
        8'hc0 : X1<=8'hAF;
        8'hc1 : X1<=8'h63;
        8'hc2 : X1<=8'hB6;
        8'hc3 : X1<=8'hFE;
        8'hc4 : X1<=8'hF5;
        8'hc5 : X1<=8'hB7;
        8'hc6 : X1<=8'h3C;
        8'hc7 : X1<=8'hA5;
        8'hc8 : X1<=8'hCE;
        8'hc9 : X1<=8'hE9;
        8'hca : X1<=8'h68;
        8'hcb : X1<=8'h44;
        8'hcc : X1<=8'hE0;
        8'hcd : X1<=8'h4D;
        8'hce : X1<=8'h43;
        8'hcf : X1<=8'h69;
        8'hd0 : X1<=8'h29;
        8'hd1 : X1<=8'h2E;
        8'hd2 : X1<=8'hAC;
        8'hd3 : X1<=8'h15;
        8'hd4 : X1<=8'h59;
        8'hd5 : X1<=8'hA8;
        8'hd6 : X1<=8'h0A;
        8'hd7 : X1<=8'h9E;
        8'hd8 : X1<=8'h6E;
        8'hd9 : X1<=8'h47;
        8'hda : X1<=8'hDF;
        8'hdb : X1<=8'h34;
        8'hdc : X1<=8'h35;
        8'hdd : X1<=8'h6A;
        8'hde : X1<=8'hCF;
        8'hdf : X1<=8'hDC;
        8'he0 : X1<=8'h22;
        8'he1 : X1<=8'hC9;
        8'he2 : X1<=8'hC0;
        8'he3 : X1<=8'h9B;
        8'he4 : X1<=8'h89;
        8'he5 : X1<=8'hD4;
        8'he6 : X1<=8'hED;
        8'he7 : X1<=8'hAB;
        8'he8 : X1<=8'h12;
        8'he9 : X1<=8'hA2;
        8'hea : X1<=8'h0D;
        8'heb : X1<=8'h52;
        8'hec : X1<=8'hBB;
        8'hed : X1<=8'h02;
        8'hee : X1<=8'h2F;
        8'hef : X1<=8'hA9;
        8'hf0 : X1<=8'hD7;
        8'hf1 : X1<=8'h61;
        8'hf2 : X1<=8'h1E;
        8'hf3 : X1<=8'hB4;
        8'hf4 : X1<=8'h50;
        8'hf5 : X1<=8'h04;
        8'hf6 : X1<=8'hF6;
        8'hf7 : X1<=8'hC2;
        8'hf8 : X1<=8'h16;
        8'hf9 : X1<=8'h25;
        8'hfa : X1<=8'h86;
        8'hfb : X1<=8'h56;
        8'hfc : X1<=8'h55;
        8'hfd : X1<=8'h09;
        8'hfe : X1<=8'hBE;
        8'hff : X1<=8'h91;

    endcase
    end




endmodule