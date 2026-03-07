`timescale 1ns / 1ps

module button_processing_tb;

    parameter CLK_FREQ         = 1_000_000;
    parameter DEBOUNCE_TIME_MS = 1;   
    parameter PULSE_TIME_MS    = 1000;

    logic clk;
    logic rst;
    logic raw_button;
    logic processed_button;

    button_processing #(
        .CLK_FREQ(CLK_FREQ),
        .DEBOUNCE_TIME_MS(DEBOUNCE_TIME_MS),
        .PULSE_TIME_MS(PULSE_TIME_MS)
    ) DUT (
        .clk(clk),
        .rst(rst),
        .raw_button(raw_button),
        .processed_button(processed_button)
    );

    initial clk = 0;
    always #500 clk = ~clk;  // 500 ns → 1 us total

    initial begin
        

        rst = 1;
        raw_button = 0;

        #2000;   // 2 us
        rst = 0;

//BOUNCING
        #2000;
        raw_button = 1;
        #200;
        raw_button = 0;
        #200;
        raw_button = 1;
        #200;
        raw_button = 0;
        #200;
        raw_button = 1;  


        #2_000_000;  // 2 ms

        // Soltar botón
        raw_button = 0;

        #2_000_000;

        $finish;
    end

endmodule