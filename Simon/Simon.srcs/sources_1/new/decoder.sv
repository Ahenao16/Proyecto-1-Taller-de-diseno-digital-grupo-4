`timescale 1ns/1ps

module decoparam #(
    parameter N = 2
) (
    input  logic [N-1:0] deco_in,
    input  logic         enable,      // <-- Nuevo enable
    output logic [(2**N)-1:0] deco_out
);

always_comb begin 
    deco_out = '0;          // valor por defecto
    
    if (enable) begin
        deco_out[deco_in] = 1'b1;
    end
end
    
endmodule