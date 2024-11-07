`timescale 1ns / 1ps

module async_updown_counter_tb;

    reg clk;
    reg reset;
    reg up_down;

    wire [3:0] count;

    async_updown_counter uut (
        .clk(clk), 
        .reset(reset), 
        .up_down(up_down), 
        .count(count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        reset = 1;
        up_down = 1;

        #100;
        reset = 0;

        #320; 

        up_down = 0;
        #320;  

        reset = 1;
        #20;
        reset = 0;

        up_down = 1;
        #200;

        $finish;
    end

    // Monitor
    initial begin
        $monitor("Time = %0t, Reset = %b, Up/Down = %b, Count = %b", 
                 $time, reset, up_down, count);
    end

endmodule