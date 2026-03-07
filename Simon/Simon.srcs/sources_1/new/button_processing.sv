`timescale 1ns / 1ps


module button_processing#(
    parameter int CLK_FREQ          = 100_000_000,
    parameter int DEBOUNCE_TIME_MS  = 20,
    parameter int PULSE_TIME_MS     = 1000
)(
    input logic clk,
    input logic rst,
    input logic raw_button,
    
    output logic processed_button

    );
    
    logic button_clean; //Botón después del debouncer
    
    //Instancia del debouncer 
    
    debouncer #(
        .CLK_FREQ(CLK_FREQ),
        .DEBOUNCE_TIME_MS(DEBOUNCE_TIME_MS)   
    )
    
    u_debouncer (
        .clk(clk),
        .rst(rst),
        .button_in(raw_button),
        .button_out(button_clean)    
    );
    
    //Instancia del one shot
    
    oneshot #(
        .CLK_FREQ(CLK_FREQ),
        .PULSE_TIME(PULSE_TIME_MS)    
    ) u_oneshot (
        .clk(clk),
        .rst(rst),
        .trigger(button_clean),
        .pulse_out(processed_button)    
    );
    
endmodule
