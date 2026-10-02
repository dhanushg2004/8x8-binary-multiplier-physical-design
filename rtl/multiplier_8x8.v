`timescale 1ns/1ps

module multiplier_8x8 (
    input  [7:0] A,
    input  [7:0] B,
    output [15:0] P
);

    assign P = B * A;

endmodule
