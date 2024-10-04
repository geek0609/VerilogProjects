module tb_counter;

    reg clk;
    reg reset;
    reg md;    
    wire [3:0] Q;

    udcounter uut (
        .clk(clk),
        .reset(reset),
        .up_down(md),
        .count(Q)
    );
    
   

    always #5 clk = ~clk; 
    initial begin
        md = 0;
        clk = 0;
        reset = 1;

        #10 reset = 0;

        #300 
        
        #10 reset = 0; md = 1;
        
        #300
        
        $finish;
    end

    initial begin
        $monitor("Time = %0dns, Reset = %b, Q = %b", $time, reset, Q);
    end

endmodule
