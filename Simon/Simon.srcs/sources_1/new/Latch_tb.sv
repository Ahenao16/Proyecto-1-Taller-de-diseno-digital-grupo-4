`timescale 1ns / 1ps

module Latch_tb;

logic clk;
logic rst;
logic event_in;
logic consume;
logic event_out;

event_latch dut(
    .clk(clk),
    .rst(rst),
    .event_in(event_in),
    .consume(consume),
    .event_out(event_out)
);


always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    event_in = 0;
    consume = 0;
    #20;
    rst = 0;
    #20;
    event_in = 1;
    #10;
    event_in = 0;
    #50;
    consume = 1;
    #10;
    consume = 0;
    #40;
    event_in = 1;
    #10;
    event_in = 0;
    #30;
    consume = 1;
    #10;
    consume = 0;
    #50;
    $finish;

end
endmodule
