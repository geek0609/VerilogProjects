`timescale 1ns / 1ps

module Top_Module_tb;

    parameter N = 8;

    reg clk;
    reg rst;
    reg [N-1:0] Multiplicand;
    reg [N-1:0] Multiplier;

    wire [2*N-1:0] Product;
    wire done;

    Top_Module #(N) dut (
        .clk(clk),
        .rst(rst),
        .Multiplicand(Multiplicand),
        .Multiplier(Multiplier),
        .Product(Product),
        .done(done)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    initial begin
        rst = 0;
        Multiplicand = 0;
        Multiplier = 0;

        #20;
        Multiplicand = 8'd25;
        Multiplier = 8'd11;
        rst = 1; 
        #20;
        rst = 0; 

        wait (done == 1);
        #20;
        $display("Test Case 1:");
        $display("Multiplicand: %d, Multiplier: %d, Product: %d", Multiplicand, Multiplier, Product);

        #20;
        Multiplicand = 8'd35;
        Multiplier = 8'd3;
        rst = 1;
        #20;
        rst = 0; 

        wait (done == 1);
        $display("Test Case 2:");
        $display("Multiplicand: %d, Multiplier: %d, Product: %d", Multiplicand, Multiplier, Product);

        #20;
        Multiplicand = 8'd100;
        Multiplier = 8'd6;
        rst = 1; 
        #20;
        rst = 0;

        wait (done == 1);
        #20;
        $display("Test Case 3:");
        $display("Multiplicand: %d, Multiplier: %d, Product: %d", Multiplicand, Multiplier, Product);

        #20;
        $finish;
    end

endmodule
