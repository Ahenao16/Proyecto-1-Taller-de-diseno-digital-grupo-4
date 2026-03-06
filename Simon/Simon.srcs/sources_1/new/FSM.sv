`timescale 1ns / 1ps

module FSM(
input i, //input boton de start
input c, //input para el estado de contador de ronda
input f, //input/flag de estado terminado
input k, //input para la comparacion jugador computadora
input rst, // rst de la FSM
input clk,
output logic en_comp_reg_and_rst_med_counter,
output logic en_index,
output logic en_sonido,
output logic en_fail_counter,
output logic rst_round_counter,
output logic en_lose_music,
output logic en_win_music,
output logic rst_lose_counter,
output logic en_decoder_luz,
output logic en_encoder_jugador,
output logic en_mux_comp,
output logic flag_k, //señal para controlar el mux de la señal de control k
output logic [2:0] state //Esta salida no es propia de la maquina era para hacer pruebas
    );
    
logic [2:0] curr_state, next_state;
assign state = curr_state;

//logica de memoria
always_ff @(posedge clk) begin
 if (rst)
        curr_state <= 3'b000;
    else
    curr_state <= next_state;
end

//logica de cambio de estados 
always_comb begin 
next_state = curr_state;
    case (curr_state) 
        3'b000:  if (i)  next_state = 3'b001; else next_state = 3'b000;
        3'b001:  next_state = 3'b010;
        3'b010:  if (c)  next_state = 3'b110; else next_state = 3'b011;
        3'b011:  if (f)  next_state = 3'b100; else next_state = 3'b011;
        3'b100: begin
            if (k && f)
                next_state = 3'b010;
            else if (k && !f)
                next_state = 3'b100;
            else
                next_state = 3'b101;
end
       3'b101: if (f) next_state = 3'b000; else next_state = 3'b101;
       3'b110: if (f) next_state = 3'b000; else next_state = 3'b110;
    endcase
end

//logica de salidas
always_comb begin
    case (curr_state)
    3'b000:
        begin
        en_comp_reg_and_rst_med_counter <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        flag_k <= 0; 
        en_mux_comp <= 0;
        end
        
    3'b001:
        begin
        en_comp_reg_and_rst_med_counter <= 1;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        flag_k <= 0; 
        en_mux_comp <= 0;
        end
        
    3'b010:
        begin
        en_comp_reg_and_rst_med_counter <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        flag_k <= 0; 
        en_mux_comp <= 0;
        end
        
    3'b011:
        begin
        en_comp_reg_and_rst_med_counter <= 0;
        en_index <= 1;
        en_sonido <= 1;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 1;
        en_encoder_jugador <=0;
        flag_k <= 0; 
        en_mux_comp <= 1;
        end
        
     3'b100:
        begin
        en_comp_reg_and_rst_med_counter <= 0;
        en_index <= 1;
        en_sonido <= 1;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=1;
        flag_k <= 1; 
        en_mux_comp <= 0;
        end
        
    3'b101:
        begin
        en_comp_reg_and_rst_med_counter <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 1;
        rst_round_counter <= 1;
        en_lose_music <=1;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        flag_k <= 0; 
        en_mux_comp <= 0;
        end
        
    3'b110:
        begin
        en_comp_reg_and_rst_med_counter <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <=1 ;
        en_lose_music <=0;
        en_win_music <= 1;
        rst_lose_counter <= 1;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        flag_k <= 0; 
        en_mux_comp <= 0;
        end
       default : begin
       en_comp_reg_and_rst_med_counter = 0;
            en_index = 0;
            en_sonido = 0;
            en_fail_counter = 0;
            rst_round_counter = 0;
            en_lose_music = 0;
            en_win_music = 0;
            rst_lose_counter = 0;
            en_decoder_luz = 0;
            en_encoder_jugador = 0;
            flag_k = 0; 
            en_mux_comp = 0;
       end
    endcase
 end
endmodule
