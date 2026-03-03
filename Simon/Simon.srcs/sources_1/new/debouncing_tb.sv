`timescale 1ns/1ps

module debouncer_tb;

    // Ajustado para simulación rápida
    parameter int CLK_FREQ = 100_000;      
    parameter int DEBOUNCE_TIME_MS = 1;    

    logic clk;
    logic rst_n;
    logic button_in;
    logic button_out;

    debouncer #(
        .CLK_FREQ(CLK_FREQ),
        .DEBOUNCE_TIME_MS(DEBOUNCE_TIME_MS)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .button_in(button_in),
        .button_out(button_out)
    );

    // Clock 100 MHz (10 ns periodo)
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        button_in = 0;

        // Reset
        #20;
        rst_n = 1;

        // Rebote al presionar
        #20  button_in = 1;
        #10  button_in = 0;
        #10  button_in = 1;
        #10  button_in = 0;
        #10  button_in = 1;  // estable

        #5000;  // esperar estabilización (~1us)

        // Rebote al soltar
        button_in = 0;
        #10 button_in = 1;
        #10 button_in = 0;

        #5000;

        $finish;
    end

endmodule