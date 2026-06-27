module demux_1x2(
    input D,
    input S,
    output Y0,
    output Y1
);

assign Y0 = ~S & D;
assign Y1 = S & D;

endmodule