`timescale 1ns / 1ps

module digit_separator #(
parameter width = 7)(
input logic [width-1:0] number, //Esta logica solo funciona para maximo numeros con 2 digitos
output logic [3:0] tents,
output logic [3:0] units 
    );
    
    always_comb  begin
    tents = number/10;
    units = number%10;
    end
endmodule

