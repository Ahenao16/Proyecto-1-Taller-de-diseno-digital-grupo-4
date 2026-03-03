`timescale 1ns / 1ps

module frec_divider_param_tb;

    parameter N = 100000;

    logic main_clk;
    logic rst;
    logic pulse;

    frec_divider_param #(
        .N(N)
    ) dut (
        .main_clk(main_clk),
        .rst(rst),
        .pulse(pulse)
    );

    initial main_clk = 0;
    always #5 main_clk = ~main_clk;

    initial begin
        rst = 1;
        #20;          
        rst = 0;
        #5_000_000;
        $finish;
    end

endmodule