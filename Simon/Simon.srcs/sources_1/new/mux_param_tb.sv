`timescale 1ns/1ps

module mux_param_tb;
    parameter Width = 4;
    parameter N = 2;

    logic [N-1:0] sel;
    logic [Width-1:0] data [2**N];
    logic en;
    logic [Width-1:0] y;

    mux_param #(
        .Width(Width),
        .N(N)
    ) dut (
        .sel(sel),
        .data(data),
        .en(en),
        .y(y)
    );


    initial begin
        data[0] = 4'b0001;
        data[1] = 4'b0010;
        data[2] = 4'b0100;
        data[3] = 4'b1000;

        en  = 0;
        sel = 0;
        #10;

        en = 1;

        sel = 0; #10;
        sel = 1; #10;
        sel = 2; #10;
        sel = 3; #10;

        en = 0;
        #10;

        $finish;
    end

endmodule