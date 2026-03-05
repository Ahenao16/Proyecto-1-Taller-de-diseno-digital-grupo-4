`timescale 1ns / 1ps

module tone_generator #(
    parameter N = 50000
)(
    input  logic main_clk,
    input  logic rst,
    output logic square_wave
);
    logic [$clog2(N)-1:0] counter;

    always_ff @(posedge main_clk) begin
        if (rst) begin
            counter <= 0;
            square_wave <= 0;
        end
        else begin
            if (counter == N-1) begin
                counter <= 0;
                square_wave <= ~square_wave;  
            end
            else begin
                counter <= counter + 1;
            end
        end
    end

endmodule