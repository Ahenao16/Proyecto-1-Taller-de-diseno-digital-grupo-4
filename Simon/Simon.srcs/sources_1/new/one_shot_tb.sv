`timescale 1ns/1ps

module oneshot_tb;

    logic clk;
    logic rst;
    logic trigger;
    logic pulse_out;

    // Parámetros
    localparam CLK_FREQ   = 10000;   // 10 kHz (solo para simu)
    localparam PULSE_TIME = 1;  // 1 ms

    // Instancia del DUT (Device Under Test)
    oneshot #(
        .CLK_FREQ(CLK_FREQ),
        .PULSE_TIME(PULSE_TIME)
    ) dut (
        .clk(clk),
        .rst(rst),
        .trigger(trigger),
        .pulse_out(pulse_out)
    );

    // Generador de clock (periodo = 10ns)
    always #5 clk = ~clk;

    initial begin
        
        // Inicialización
        clk     = 0;
        rst     = 1;
        trigger = 0;

        // Esperar un poco
        #20;
        rst = 0;

        // Caso 1: Pulso normal
 
        #20;
        trigger = 1;
        #10;
        trigger = 0;

        // Esperar que termine el pulso
        #500;

       
        // Caso 2: Intento retrigger
  
        trigger = 1;
        #10;
        trigger = 0;

        // Intento activarlo mientras está activo
        #50;
        trigger = 1;
        #10;
        trigger = 0;

        #500;
        
        $stop;

    end

endmodule