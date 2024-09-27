module testbench;
    reg clk;
    reg reset;
    reg dir;
    reg serial_in;
    wire serial_out;

    SISOBDR uut (
        clk,
        reset,
        dir,
        serial_in,
        serial_out
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; dir = 0; serial_in = 0;
        #10; 
        reset = 0;
        dir = 0;
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #60;

//        dir = 1;
//        serial_in = 0; #10;
//        serial_in = 1; #10;
//        serial_in = 1; #10;
//        serial_in = 0; #10;

        $stop; // End simulation
    end
endmodule
