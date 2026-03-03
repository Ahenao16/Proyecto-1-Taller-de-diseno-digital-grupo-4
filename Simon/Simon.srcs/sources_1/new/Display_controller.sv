`timescale 1ns / 1ps

module Display_controller(
    input logic en, //Enable
    input logic [6:0] number, // Número de 7 bits para representar hasta 99
    output logic [0:6] segment_tents, 
    output logic [0:6] segment_units,
    output logic [3:0] tents, // Decenas
    output logic [3:0] units // Unidades
);

    // Instancia del separador de dígitos
    digit_separator sep (
        .number(number),
        .tents(tents),
        .units(units)
    );

    // Instancia del decodificador BCD a 7 segmentos para las unidades
    // señales intermedias para evitar múltiples controladores sobre los
    // mismos `segment_*` y permitir aplicar el "enable" correctamente.
    logic [0:6] seg_tents_int;
    logic [0:6] seg_units_int;

    BCD bcd_tents (
        .binary_number(tents),
        .segment(seg_tents_int)
    );

    BCD bcd_units (
        .binary_number(units),
        .segment(seg_units_int)
    );

    // Control de habilitación del display
    always_comb begin
        if (en) begin
            // Si el enable está activo, pasar los segmentos calculados por
            // el BCD a las salidas externas.
            segment_tents = seg_tents_int;
            segment_units = seg_units_int;
        end else begin
            // Si el enable no está activo, apagar el display
            segment_tents = 7'b1111111; // Apagar todos los segmentos
            segment_units = 7'b1111111; // Apagar todos los segmentos
        end
    end

endmodule