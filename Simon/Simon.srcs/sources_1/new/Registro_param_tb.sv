


`timescale 1ns / 1ps


module Registro_param_tb;

    parameter Width = 16;

    logic clk = 0;
    logic rst = 0;
    logic en = 0;
    logic [Width-1:0] data_in;
    logic [Width-1:0] data_out = '0;

    Registro_param #(
        .Width(Width)
    ) dut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .data_in(data_in),
        .data_out(data_out)
    );

    initial begin
        // Prueba de reset
        clk = 0; rst = 1; en = 0; data_in = 16'hABCD; #10; // Resetea el registro
        clk = 1; #10 clk = 0; // Genera un pulso de reloj para aplicar el reset
        $display("Después del reset: data_out = %h", data_out);

        // Prueba de carga de datos
        rst = 0; en = 1; data_in = 16'h1234; #10; // Carga un nuevo valor
        clk = 1; #10 clk = 0; 
        $display("Después de cargar datos: data_out = %h", data_out);

        // Prueba de mantener el valor sin enable
        en = 0; data_in = 16'hFFFF; #10; // Sin enable, el valor no debería cambiar
        clk = 1; #10 clk = 0; 
        $display("Sin enable: data_out = %h", data_out);

        en = 1 ; data_in = 16'hFFFF; #10; // Con enable, el valor debería cambiar
        clk = 1; #10 clk = 0; 
        $display("Con enable: data_out = %h", data_out);

        $finish;
    end
endmodule
