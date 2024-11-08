module SerialAdder #(parameter N = 8)(
    input clk, rst, start,
    input [N-1:0] A_in,
    input [N-1:0] B_in,
    output reg [N-1:0] Sum_out,
    output done
    );

    wire load, shift;
    wire Cout;
    reg Cin;
    wire Sum_bit;
    wire [N-1:0] ShiftRegA, ShiftRegB;

    Controller #(N) controller_inst(
        .clk(clk),
        .rst(rst),
        .start(start),
        .load(load),
        .shift(shift),
        .done(done)
    );

    // Shift registers for A and B, shifting right
    ShiftReg #(N) ShiftRegA_inst(
        .clk(clk),
        .rst(rst),
        .load(load),
        .ShiftIn(1'b0),
        .Shift(shift),
        .In(A_in),
        .Out(ShiftRegA)
    );

    ShiftReg #(N) ShiftRegB_inst(
        .clk(clk),
        .rst(rst),
        .load(load),
        .ShiftIn(1'b0),
        .Shift(shift),
        .In(B_in),
        .Out(ShiftRegB)
    );

    // Full Adder processing bits from LSB
    FullAdder FA(
        .A(ShiftRegA[0]),
        .B(ShiftRegB[0]),
        .Cin(Cin),
        .Sum(Sum_bit),
        .Cout(Cout)
    );

    reg [$clog2(N):0] bit_count; // Counter for bit position

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Cin <= 0;
            Sum_out <= 0;
            bit_count <= 0;
        end else if (load) begin
            Cin <= 0;
            Sum_out <= 0;
            bit_count <= 0;
        end else if (shift) begin
            Sum_out[bit_count] <= Sum_bit; // Store sum bit at correct position
            Cin <= Cout;
            bit_count <= bit_count + 1;
        end
    end

    // Debugging statements
    always @(posedge clk) begin
        if (shift) begin
            $display("Time %0t: Bit %0d: A_bit=%b, B_bit=%b, Cin=%b, Sum_bit=%b, Cout=%b, Sum_out=%b",
                      $time, bit_count, ShiftRegA[0], ShiftRegB[0], Cin, Sum_bit, Cout, Sum_out);
        end
    end

endmodule
