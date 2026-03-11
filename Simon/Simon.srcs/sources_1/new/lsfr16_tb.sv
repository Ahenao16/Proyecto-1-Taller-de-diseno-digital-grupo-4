`timescale 1ns/1ps

module LFSR_16bit_tb;

    reg clk;
    reg rst;
    reg [15:0] sw;
    wire [15:0] op;

    
    LFSR_16bit dut (
        .clk(clk),
        .rst(rst),
        .sw(sw),
        .op(op)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 0;
        sw  = 16'hACE1;  // semilla ejemplo (no cero)

        
        #10;
        rst = 1;
        #10;
        rst = 0;

        
        #200;

        // Cambiar semilla
        sw = 16'h1234;
        #10;
        rst = 1;   // volver a cargar nueva semilla
        #10;
        rst = 0;

        #200;

        // Probar semilla 0 (debe cargar 1)
        sw = 16'h0000;
        #10;
        rst = 1;
        #10;
        rst = 0;

        #100;

        $finish;
    end



endmodule