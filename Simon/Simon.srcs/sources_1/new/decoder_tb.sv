`timescale 1ns/1ps

module decoparam_tb;

    
    parameter N = 3;

    
    logic [N-1:0] deco_in;
    logic         enable;        
    logic [(2**N)-1:0] deco_out;

    
    decoparam #(.N(N)) DUT (
        .deco_in(deco_in),
        .enable(enable),         
        .deco_out(deco_out)
    );

    
    initial begin

        
        // Caso 1: enable = 0
        
        enable = 0;
        for (int i = 0; i < 2**N; i++) begin
            deco_in = i;
            #10;
        end

        
        // Caso 2: enable = 1
        
        enable = 1;
        for (int i = 0; i < 2**N; i++) begin
            deco_in = i;
            #10;
        end

        #10;
        $finish;
    end

endmodule