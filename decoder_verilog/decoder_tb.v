`timescale 1ns/1ps

module decoder_2x4_tb;

reg A,B;
wire Y0,Y1,Y2,Y3;

decoder_2x4 uut(
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $dumpfile("decoder_2x4.vcd");
    $dumpvars(0,decoder_2x4_tb);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule