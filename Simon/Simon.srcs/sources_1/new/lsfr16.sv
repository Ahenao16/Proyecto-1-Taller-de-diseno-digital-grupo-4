module LFSR_16bit (
    input  wire        clk,        // reloj de la FPGA (100 MHz)
    input  wire        rst,        // botón reset
    input  wire [15:0] sw,         // switches como semilla
    output reg  [15:0] op          // salida del LFSR
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Evitar semilla 0 (estado prohibido)
        if (sw == 16'b0)
            op <= 16'h1;       
        else
            op <= sw;           //Reset se encarga de cargar semilla desde switches
    end
    else begin
        // Polinomio: x^16 + x^14 + x^13 + x^11 + 1
        op <= {op[14:0], op[15] ^ op[13] ^ op[12] ^ op[10]};
    end
end

endmodule