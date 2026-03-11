`timescale 1ns / 1ps

module latch_comparation_tb;

    logic clk;
    logic set;
    logic en;
    logic D;
    logic Q;

    latch_comparation dut (
        .clk(clk),
        .set(set),
        .en(en),
        .D(D),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        set = 0;
        en  = 0;
        D   = 0;

        #10;

        set = 1;
        #10;
        set = 0;

        en = 1;
        D  = 0;
        #10;

        D = 1;
        #10;

        en = 0;
        D  = 0;
        #10;

        en = 1;
        #10;

        set = 1;
        #10;
        set = 0;

        #20;
        $finish;
    end

endmodule