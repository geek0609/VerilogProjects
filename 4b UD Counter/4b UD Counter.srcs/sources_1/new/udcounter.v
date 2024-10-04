`timescale 1ns / 1ps

module udcounter(
    input clk,
    input reset,
    input up_down, 
    output [3:0] count
);

    wire [3:0] j, k;
    wire [3:0] q_int;

    assign j[0] = 1'b1;
    assign k[0] = 1'b1;

    assign j[1] = up_down ? q_int[0] : ~q_int[0];
    assign k[1] = up_down ? q_int[0] : ~q_int[0];

    assign j[2] = up_down ? (q_int[1] & q_int[0]) : (~q_int[1] & ~q_int[0]);
    assign k[2] = up_down ? (q_int[1] & q_int[0]) : (~q_int[1] & ~q_int[0]);

    assign j[3] = up_down ? (q_int[2] & q_int[1] & q_int[0]) : (~q_int[2] & ~q_int[1] & ~q_int[0]);
    assign k[3] = up_down ? (q_int[2] & q_int[1] & q_int[0]) : (~q_int[2] & ~q_int[1] & ~q_int[0]);

    jk jk0 (.j(j[0]), .k(k[0]), .clk(clk), .reset(reset), .preset(1'b0), .Q(q_int[0]));
    jk jk1 (.j(j[1]), .k(k[1]), .clk(clk), .reset(reset), .preset(1'b0), .Q(q_int[1]));
    jk jk2 (.j(j[2]), .k(k[2]), .clk(clk), .reset(reset), .preset(1'b0), .Q(q_int[2]));
    jk jk3 (.j(j[3]), .k(k[3]), .clk(clk), .reset(reset), .preset(1'b0), .Q(q_int[3]));

    assign count = q_int;

endmodule