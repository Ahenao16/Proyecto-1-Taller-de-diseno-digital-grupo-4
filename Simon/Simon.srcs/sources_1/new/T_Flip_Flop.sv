`timescale 1ns / 1ps

module T_FF #(
    parameter INIT = 1'b0   // Initial state of Q
)(
    input  logic clk,       // Clock
    input  logic rst,       // Synchronous reset
    input  logic T,         // T input (toggle)
    input  logic en,        // Optional enable
    output logic Q          // Output
);

    always_ff @(posedge clk) begin
        if (rst) begin
            Q <= INIT;
        end else if (en) begin
            if (T)
                Q <= ~Q;    // Toggle output
            else
                Q <= Q;     // Hold state
        end
    end

endmodule