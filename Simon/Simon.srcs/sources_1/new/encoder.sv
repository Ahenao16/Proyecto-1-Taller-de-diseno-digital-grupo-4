`timescale 1ns / 1ps

module encoder_param #(
    parameter N = 4  //4 entradas --> 2 salidas
)(
    input  logic [N-1:0] encoder_in,
    input  logic         enable,
    output logic [$clog2(N)-1:0] binary_out //clog2 devuelve el número de bits necesarios para representar N valores distintos
);

    integer i;

    always_comb begin
        binary_out = 0;

        if (enable) begin
            for (i = 0; i < N; i++) begin
                if (encoder_in[i])
                    binary_out = i; //él mismo lo coniverte a binario
            end
        end
    end

endmodule


// N: número de entradas
// binary_out: número en binario que da la salida
// Revisa cada posición de N y verifica cuál es uno para sacar ese número en la salida.