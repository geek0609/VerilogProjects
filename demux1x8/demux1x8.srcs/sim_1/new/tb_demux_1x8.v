`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 08:04:44 AM
// Design Name: 
// Module Name: tb_demux_1x8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_demux_1x8;

reg in;
reg [2:0] sel;
wire [7:0] out;

demux_1x8 uut (
    .in(in),
    .sel(sel),
    .out(out)
);

initial begin
    in = 1; sel = 3'b000; #10;

    in = 1; sel = 3'b001; #10;

    in = 1; sel = 3'b010; #10;

    in = 1; sel = 3'b011; #10;
    
    in = 1; sel = 3'b100; #10;

    in = 1; sel = 3'b101; #10;

    in = 1; sel = 3'b110; #10;

    in = 0; sel = 3'b111; #10;
    $monitor("sel=%b, in=%b, out=%b", sel, in, out);

    $finish;
end

endmodule

