`timescale 1ns / 1ps

module power_on_reset #(
    parameter integer CLK_FREQ_HZ = 100_000_000,  
    parameter integer RESET_TIME_MS = 100         
)(
    input  logic clk,
    output logic rst   
);

    localparam integer RESET_CYCLES = (CLK_FREQ_HZ / 1000) * RESET_TIME_MS;
    localparam integer COUNTER_WIDTH = $clog2(RESET_CYCLES);

    logic [COUNTER_WIDTH-1:0] counter = 0;
    logic rst_reg = 1'b1;  

    always_ff @(posedge clk) begin
        if(counter < RESET_CYCLES-1) begin
            counter <= counter + 1;
            rst_reg <= 1'b1;  
        end
        else begin
            rst_reg <= 1'b0;  
        end
    end

    assign rst = rst_reg;

endmodule