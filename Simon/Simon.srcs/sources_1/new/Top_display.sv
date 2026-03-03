`timescale 1ns / 1ps

module top(
    input  logic clk_100MHz,
    input  logic reset,
    input  logic en,
    input  logic [6:0] number,
    output logic [0:6] seg,
    output logic [3:0] digit
);

    //---------------------------------------
    // Señales internas
    //---------------------------------------
    logic [0:6] seg_tents;
    logic [0:6] seg_units;
    logic [3:0] tents;
    logic [3:0] units;

    //---------------------------------------
    // Instancia de tu controlador
    //---------------------------------------
    Display_controller controller(
        .en(en),
        .number(number),
        .segment_tents(seg_tents),
        .segment_units(seg_units),
        .tents(tents),
        .units(units)
    );

    //---------------------------------------
    // Divisor de frecuencia para multiplexado
    //---------------------------------------
    logic [19:0] counter;
    logic sel;

    always_ff @(posedge clk_100MHz or posedge reset) begin
        if (reset)
            counter <= 0;
        else
            counter <= counter + 1;
    end

    assign sel = counter[18];  
    // ~190 Hz → suficiente para que no parpadee

    //---------------------------------------
    // Multiplexado de displays
    //---------------------------------------
    always_comb begin
        case(sel)
            1'b0: begin
                seg   = seg_units;   // AN0 → unidades
                digit = 4'b1110;     // activar display 0
            end
            
            1'b1: begin
                seg   = seg_tents;   // AN1 → decenas
                digit = 4'b1101;     // activar display 1
            end
        endcase
    end

endmodule