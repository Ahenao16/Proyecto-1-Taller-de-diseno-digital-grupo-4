`timescale 1ns/1ps

module UpCounter_tb;

  parameter Width = 3;
  

  logic clk;
  logic rst;
  logic en;
  logic [Width-1:0] count;

  UpCounter #(
    .Width(Width)
  ) dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .count(count)
  );

  always #5 clk = ~clk;

  initial begin

    clk = 0;
    rst = 1;
    en  = 0;

    #20 rst = 0;
    en = 1;

    #200 en = 0;

    #50 rst = 1;

    #20 rst = 0;
    en  = 1;

    #100 $stop;

  end

endmodule