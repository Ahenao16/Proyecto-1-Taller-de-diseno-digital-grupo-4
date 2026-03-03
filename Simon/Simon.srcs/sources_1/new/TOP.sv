`timescale 1ns / 1ps

module TOP (
    input  logic clk_100MHz,
    input  logic reset,
    output logic [0:6] seg,
    output logic [3:0] digit
);

    logic pulse_1hz;
    logic [6:0] count;
    logic [3:0] tens;
    logic [3:0] ones;

    frec_divider_param #(
        .N(100_000_000)
    ) div_1hz (
        .main_clk(clk_100MHz),
        .rst(reset),
        .pulse(pulse_1hz)
    );

    UpCounter #(
        .Width(7)
    ) counter_inst (
        .clk(clk_100MHz),
        .rst(reset),
        .en(pulse_1hz),
        .count(count)
    );

    digit_separator separator_inst (
        .number(count),
        .tents(tens),
        .units(ones)
    );

    BCD display_driver (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .lsb_counter_1(ones),
        .msb_counter_1(tens),
        .lsb_counter_2(ones),
        .msb_counter_2(tens),
        .seg(seg),
        .digit(digit)
    );

endmodule