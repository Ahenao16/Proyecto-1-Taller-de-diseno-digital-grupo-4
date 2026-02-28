`timescale 1ns / 1ps
`include "encparam.sv"

module encoder_param_tb;

    // Parámetro
    parameter N = 4;

    // Señales
    logic [N-1:0] encoder_in;
    logic enable;
    logic [$clog2(N)-1:0] binary_out;

    // Instancia del DUT (Device Under Test)
    encoder_param #(.N(N)) dut (
        .encoder_in(encoder_in),
        .enable(enable),
        .binary_out(binary_out)
    );

    
    initial begin
        
        // Archivo para GTKWave (cambiar en Vivado (: )
        $dumpfile("encoder_param_tb.vcd");
        $dumpvars(0, encoder_param_tb);

        // Inicialización
        enable = 0;
        encoder_in = 0;

        #10;
        enable = 1;

        // Probar cada entrada individual
        #10 encoder_in = 4'b0001;  // Esperado: 0
        #10 encoder_in = 4'b0010;  // Esperado: 1
        #10 encoder_in = 4'b0100;  // Esperado: 2
        #10 encoder_in = 4'b1000;  // Esperado: 3

        // Caso con múltiples bits activos (prioridad al mayor índice)
        #10 encoder_in = 4'b1010;  // Resultado esperado: 3

        // Deshabilitar
        #10 enable = 0;
        #10 encoder_in = 4'b0100;

        #20;
        $finish;
    end

endmodule