`timescale 1ns / 1ps

module power_on_reset_tb;
    parameter CLK_FREQ_HZ   = 1_000_000;  
    parameter RESET_TIME_MS = 1;          

    logic clk;
    logic rst;

    power_on_reset #(
        .CLK_FREQ_HZ(CLK_FREQ_HZ),
        .RESET_TIME_MS(RESET_TIME_MS)
    ) dut (
        .clk(clk),
        .rst(rst)
    );

    initial clk = 0;
    always #0.5 clk = ~clk; 

    initial begin
        #5000;  

        $finish;
    end

endmodule