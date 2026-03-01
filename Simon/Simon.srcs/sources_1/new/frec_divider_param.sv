`timescale 1ns / 1ps

module frec_divider_param #(
    parameter  N = 100000   //Recordar que f_pulse = main_clk/N
)(
    input  logic main_clk,
    input  logic rst,
    output logic pulse    
);
    logic [$clog2(N)-1:0] counter;

    always_ff @(posedge main_clk) begin
        if (rst) begin
            counter <= 0;
            pulse <= 1'b0;
        end
        else begin
            if (counter == N-1) begin
                counter <= 0;
                pulse <= 1'b1;   
            end
            else begin
                counter <= counter + 1;
                pulse <= 1'b0;
            end
        end
    end

endmodule