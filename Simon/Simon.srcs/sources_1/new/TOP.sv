`timescale 1ns / 1ps

module TOP(
  input clk,
  input btnC,
  output pin_out,
  output buzzer_pin
);
  logic pulse;

  tone_generator #(
      .N(25_000)
  ) dut (
      .main_clk(clk),
      .rst(btnC),
      .square_wave(pulse)
  );

  assign pin_out   = pulse;
  assign buzzer_pin = pulse;

endmodule