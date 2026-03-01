`timescale 1ns/1ps

module Sumador_tb;

    parameter N = 4;
    logic [N-1:0] A;
    logic [N-1:0] B;
    logic cin;

    logic [N-1:0] S;
    logic cout;

    // Instancia del DUT (Device Under Test)
    Sumador_1 #(.N(N)) DUT (
        .A(A),
        .B(B),
        .cin(cin),
        .S(S),
        .cout(cout)
    );

    // Bloque de prueba
    initial begin

        $display("Inicio de simulación");
        $display(" A    B   cin  | cout  S");

        // total 0
        A = 4'b0000; B = 4'b0000; cin = 0;
        #10;
        $display("%b  %b   %b   |  %b   %b", A,B,cin,cout,S);

        // total 8
        A = 4'b0101; B = 4'b0011; cin = 0;
        #10;
        $display("%b  %b   %b   |  %b   %b", A,B,cin,cout,S);

        // total 16
        A = 4'b1111; B = 4'b0001; cin = 0;
        #10;
        $display("%b  %b   %b   |  %b   %b", A,B,cin,cout,S);

        // total 15
        A = 4'b1010; B = 4'b0101; cin = 0;
        #10;
        $display("%b  %b   %b   |  %b   %b", A,B,cin,cout,S);

        // total 6 con carry in
        A = 4'b0011; B = 4'b0010; cin = 1;
        #10;
        $display("%b  %b   %b   |  %b   %b", A,B,cin,cout,S);

        // total 22
        A = 4'b1100; B = 4'b1010; cin = 0;
        #10;
        $display("%b  %b   %b   |  %b   %b", A,B,cin,cout,S);

        $display("Fin de simulación");

        $stop;

    end

endmodule