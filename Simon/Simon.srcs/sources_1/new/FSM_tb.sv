`timescale 1ns / 1ps


module FSM_tb;
logic i; //input boton de start
logic c; //input para el estado de contador de ronda
logic f; //input/flag de estado terminado
logic k; //input para la comparacion jugador computadora
logic rst; // rst de la FSM
logic clk;

logic en_comp_reg;
logic en_index;
logic en_sonido;
logic en_fail_counter;
logic rst_round_counter;
logic en_lose_music;
logic en_win_music;
logic rst_lose_counter;
logic mux_luz;
logic en_encoder_jugador;
logic flag_k; //señal para controlar el mux de la señal de control k
logic [2:0] state; //Esta salida no es propia de la maquina era para hacer pruebas
    
    FSM dut(
    .i(i),
    .c(c),
    .f(f),
    .k(k),
    .rst(rst),
    .clk(clk),
    .en_comp_reg(en_comp_reg),
    .en_index(en_index),
    .en_sonido(en_sonido),
    .en_fail_counter(en_fail_counter),
    .rst_round_counter(rst_round_counter),
    .en_lose_music(en_lose_music),
    .en_win_music(en_win_music),
    .rst_lose_counter(rst_lose_counter),
    .mux_luz(mux_luz),
    .en_encoder_jugador(en_encoder_jugador),
    .flag_k(flag_k),
    .state(state)
);

initial clk = 0;
always #5 clk = ~clk;
    
initial begin
 rst = 1; #10;
 rst = 0;
    
 i = 0; #10;
 f = 0; #10;
 k = 0; #10;
 c = 0; #10;
 
 i = 1; #10;
 f = 0; #10;
 k = 0; #10;
 c = 0; #10;
 
 i = 0; #10;
 f = 1; #10;
 k = 0; #10;
 c = 1; #10;
 
 i = 1; #10;
 f = 0; #10;
 k = 0; #10;
 c = 0; #10;
 
 i = 1; #10;
 f = 0; #10;
 k = 0; #10;
 c = 0; #10;
 
 i = 1; #10;
 f = 1; #10;
 k = 0; #10;
 c = 0; #10;
 
 i = 0; #10;
 f = 0; #10;
 k = 1; #10;
 c = 0; #10;
 
 i = 0; #10;
 f = 1; #10;
 k = 1; #10;
 c = 0; #10;
 
 i = 0; #5;
 f = 1; #5;
 k = 0; #5;
 c = 0; #5;
 
 i = 0; #5;
 f = 0; #5;
 k = 0; #5;
 c = 0; #5;
 
 i = 0; #5;
 f = 1; #5;
 k = 0; #5;
 c = 0; #20;


$finish;
end
endmodule
