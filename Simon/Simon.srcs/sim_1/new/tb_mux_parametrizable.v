`timescale 1ns/1ps

module tb_mux_parametrizable;
    parameter Width = 4;
    parameter N = 2;

    logic [N-1:0] sel;
    logic [(2**N)*Width-1:0] data_flat;
    logic en;
    logic [Width-1:0] y;

    // Instancia del DUT
    mux_parametrizable #(
        .Width(Width),
        .N(N)
    ) dut (
        .sel(sel),
        .data_flat(data_flat),
        .en(en),
        .y(y)
    );

    initial begin

        // Construimos las 4 entradas de 4 bits
        // Orden: {data3, data2, data1, data0}
        data_flat = {
            4'b1000,  // data[3]
            4'b0100,  // data[2]
            4'b0010,  // data[1]
            4'b0001   // data[0]
        };

        en = 0;
        sel = 0;
        #10;

        en = 1;

        for (int i = 0; i < 2**N; i++) begin
            sel = i;
            #10;
        end

        en = 0;
        #10;

        $finish;
    end

endmodule