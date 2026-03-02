`timescale 1ns / 1ps

module digit_separator(
input logic [6:0] number, //7 bits para poder representar hasta un 99 (valor max display)
output logic [3:0] tents,
output logic [3:0] units //salidas para separar las decenas y centenas del numero
    );
    
    always_comb  begin
    tents = number/10;
    units = number%10;
    end
endmodule

