module testbench;
    reg clk, reset;

    // Clock generation with a period of 10 time units
    initial
        clk = 0;
    always
        #5 clk = ~clk;

    // Reset generation: assert reset for the first 20 time units
    initial
    begin
        reset = 1;
        #20 reset = 0; // De-assert reset after 20 time units
    end

    // Instantiate the processor_top module
    processor_top proc_top1(clk, reset);

    // Monitor key signals to observe processor behavior
    initial
    begin
        $monitor("Time=%0t | PC=%d | Instr=%h | op1=%h | op2=%h | Result=%h | RegWrite=%b",
            $time,
            proc_top1.proc1.prog_ctr,
            proc_top1.mem1.instr_mem_out,
            proc_top1.proc1.op1_data_reg,
            proc_top1.proc1.op2_data_reg,
            proc_top1.proc1.operation_result,
            proc_top1.reg_wr_en
        );
    end

    // Finish simulation after a specified time
    initial
    begin
        #1000 $finish;
    end
endmodule
