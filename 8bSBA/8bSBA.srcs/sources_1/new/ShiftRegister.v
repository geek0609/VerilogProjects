module ShiftReg #(parameter N = 8)(
    input clk, rst, load,
    input ShiftIn, Shift,
    input [N-1:0] In,
    output reg [N-1:0] Out
    );

    always @(posedge clk) begin
        if (rst) begin
            Out <= 0;
        end else if (load) begin
            Out <= In;
        end else if (Shift) begin
            Out <= {ShiftIn, Out[N-1:1]};
        end
    end

endmodule
    