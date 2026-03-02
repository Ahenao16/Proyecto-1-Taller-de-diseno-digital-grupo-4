`timescale 1ns/1ps



module decoparam_tb;

    // Parámetro a probar
    parameter N = 3;

    // Señales
    logic [N-1:0] deco_in;
    logic [(N**2)-1:0] deco_out;

    // Instancia del DUT
    decoparam #(.N(N)) DUT (
        .deco_in(deco_in),
        .deco_out(deco_out)
    );

    // Generación de estímulos
    initial begin
        // Dump para GTKWave
        $dumpfile("decoparam_tb.vcd");
        $dumpvars(0, decoparam_tb);

        // Probar todos los valores posibles
        for (int i = 0; i < 2**N; i++) begin
            deco_in = i;
            #10;
        end

        #10;
        $finish;
    end

endmodule