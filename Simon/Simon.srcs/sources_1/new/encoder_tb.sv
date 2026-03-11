`timescale 1ns / 1ps


module encoder_param_tb;

    
    parameter N = 4;

    
    logic [N-1:0] encoder_in;
    logic enable;
    logic [$clog2(N)-1:0] binary_out;

    
    encoder_param #(.N(N)) dut (
        .encoder_in(encoder_in),
        .enable(enable),
        .binary_out(binary_out)
    );

    
    initial begin
        
        
        
        enable = 0;
        encoder_in = 0;

        #10;
        enable = 1;

        
        #10 encoder_in = 4'b0001;  // Esperado: 0
        #10 encoder_in = 4'b0010;  // Esperado: 1
        #10 encoder_in = 4'b0100;  // Esperado: 2
        #10 encoder_in = 4'b1000;  // Esperado: 3

        
        #10 encoder_in = 4'b1010;  // Resultado esperado: 3

        // Deshabilitar
        #10 enable = 0;
        #10 encoder_in = 4'b0100;

        #20;
        $finish;
    end

endmodule