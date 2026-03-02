`timescale 1ns/1ps

module decoparam #(
    parameter N = 2
) (
    input logic [N-1:0] deco_in,
    
    output logic [(N**2)-1:0] deco_out
);

always_comb 
begin 
    deco_out = '0;
    deco_out[deco_in]=1'b1;
end
    
endmodule 

// N: número de entrada (binario)
// Out inicialmente es 0. Toma el in y lo convierte a decimal.
// Activa el bit en out que el index le indique, el index es el valor del in.
// Ejemplo si in es 110 (6), activa el bit 6 en la salida de derecha a izquierda.
