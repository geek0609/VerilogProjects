`timescale 1ns / 1ps

module async_updown_counter(
    input clk,
    input reset,
    input up_down, 
    output [3:0] count
);

    wire [2:0] c;

    wire down, up;    
    assign down = ~up_down;
    assign up = up_down;
    
    assign c[0] = ~(~(up& count[0])& ~(down& ~count[0]));
    assign c[1] = ~(~(up& count[1])& ~(down & ~count[1]));
    assign c[2] = ~(~ (up& count[2])& ~(down & ~count[2]));
    
    jk jk0 (.j(1), .k(1), .clk(clk), .reset(reset), .preset(1'b0), .Q(count[0]));
    jk jk1 (.j(1), .k(1), .clk(c[0]), .reset(reset), .preset(1'b0), .Q(count[1]));
    jk jk2 (.j(1), .k(1), .clk(c[1]), .reset(reset), .preset(1'b0), .Q(count[2]));
    jk jk3 (.j(1), .k(1), .clk(c[2]), .reset(reset), .preset(1'b0), .Q(count[3]));


endmodule