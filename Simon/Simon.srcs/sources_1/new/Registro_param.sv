

`timescale 1ns / 1ps


module Registro_param #(
    parameter Width = 16
)(

    input logic clk,
    input logic rst,
    input logic en,
    input logic [Width-1:0] data_in,
    output logic [Width-1:0] data_out
    );

    always_ff @(posedge clk) begin
        if (rst) begin
            data_out <= '0; // Resetea el registro a 0
        end else if (en) begin
            data_out <= data_in; // Carga el nuevo valor en el registro
        end
    end

endmodule
