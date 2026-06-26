`timescale 1ns/1ps

module or_gate_tb;

    reg a;
    reg b;
    wire y;

    // Instantiate the Design Under Test (DUT)
    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        // Generate waveform file
        $dumpfile("or_gate.vcd");
        $dumpvars(0, or_gate_tb);

        // Display header
        $display("Time\tA\tB\tY");
        $monitor("%0t\t%b\t%b\t%b", $time, a, b, y);

        // Test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
