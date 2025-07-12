`timescale 1ns / 1ps

module tb_Top8085;

    reg clk;
    reg rst;

    // Instantiate the top module
    MP85 uut (
        .clk(clk),
        .rst(rst)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    integer cycle;

    initial begin
        $display("==== Starting 8085 Simulation ====");
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_Top8085);

        // Initial conditions
        clk = 0;
        rst = 1;
        #20;
        rst = 0;

        // Simulate 200 cycles
        for (cycle = 0; cycle < 200; cycle = cycle + 1) begin
            @(posedge clk);
            $display("Cycle %0d:", cycle);
            $display("A: %h", uut.regfile.debug_regs_flat[63:56]);
            $display("M: %h", uut.regfile.debug_regs_flat[55:48]);
            $display("L: %h", uut.regfile.debug_regs_flat[47:40]);
            $display("H: %h", uut.regfile.debug_regs_flat[39:32]);
            $display("E: %h", uut.regfile.debug_regs_flat[31:24]);
            $display("D: %h", uut.regfile.debug_regs_flat[23:16]);
            $display("C: %h", uut.regfile.debug_regs_flat[15:8]);
            $display("B: %h", uut.regfile.debug_regs_flat[7:0]);
            $display("-------------------------------");
        end

        $display("==== Simulation Completed ====");
        $finish;
    end

endmodule
