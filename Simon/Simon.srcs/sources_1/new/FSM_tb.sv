`timescale 1ns / 1ps


module FSM_tb;
logic i; //input boton de start
logic c; //input para el estado de contador de ronda
logic f; //input/flag de estado terminado
logic k; //input para la comparacion jugador computadora
logic rst; // rst de la FSM
logic clk;


    
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
    .en_decoder_luz(en_decoder_luz),
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
