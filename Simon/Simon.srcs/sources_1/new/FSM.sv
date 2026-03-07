`timescale 1ns / 1ps

module FSM(
input i, //input boton de start
input c, //input para el estado de contador de ronda
input f, //input/flag de estado terminado
input e, 
input m, 
input k, //input para la comparacion jugador computadora
input rst, // rst de la FSM
input clk,
output logic en_comp_reg,
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
output logic en_rc,
output logic rst_indx,
output logic rst_med_counter,
output logic plyr_flag, //señal para controlar el mux de la señal de control k
output logic [3:0] state //Esta salida no es propia de la maquina era para hacer pruebas
    );
    
logic [3:0] curr_state, next_state;
assign state = curr_state;

//logica de memoria
always_ff @(posedge clk) begin
 if (rst)
        curr_state <= 4'b0000;
    else
    curr_state <= next_state;
end

//logica de cambio de estados 
always_comb begin 
next_state = curr_state;
    case (curr_state) 
        4'b0000:  if (i)  next_state = 4'b0001; else next_state = 4'b0000;
        4'b0001:  next_state = 4'b0010;
        4'b0010:  if (c)  next_state = 4'b0110; else next_state = 4'b0011;
        4'b0011:  if (f)  next_state = 4'b1000; else next_state = 4'b0011;
        4'b0100: begin
            if (k && e)
                next_state = 4'b0111;
            else if (k && !e)
                next_state = 4'b0100;
            else
                next_state = 4'b0101;
end
       4'b0101: if (m) next_state = 4'b0000; else next_state = 4'b0101;
       4'b0110: if (m) next_state = 4'b0000; else next_state = 4'b0110;
       4'b0111: next_state = 4'b0010;
       4'b1000: next_state = 4'b0100; 
    endcase
end

//logica de salidas
always_comb begin
    case (curr_state)
    4'b0000:
        begin
        en_rc <= 0;
        rst_indx <= 1;
        rst_med_counter <= 1;
        en_comp_reg<= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
        
    4'b0001:
        begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg<= 1;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
        
    4'b0010:
        begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
        
    4'b0011:
        begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg<= 0;
        en_index <= 1;
        en_sonido <= 1;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 1;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 1;
        end
        
     4'b0100:
        begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg <= 0;
        en_index <= 0;
        en_sonido <= 1;
        en_fail_counter <= 0;
        rst_round_counter <= 0;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=1;
        plyr_flag <= 1; 
        en_mux_comp <= 0;
        end
        
    4'b0101:
        begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg<= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 1;
        rst_round_counter <= 1;
        en_lose_music <=1;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
        
    4'b0110:
        begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <=1 ;
        en_lose_music <=0;
        en_win_music <= 1;
        rst_lose_counter <= 1;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
        
       4'b0111:
        begin
        en_rc <= 1;
        rst_indx <= 1;
        rst_med_counter <= 0;
        en_comp_reg <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <=0 ;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
        
         4'b1000:
        begin
        en_rc <= 0;
        rst_indx <= 1;
        rst_med_counter <= 0;
        en_comp_reg <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <=0 ;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        end
       default : begin
        en_rc <= 0;
        rst_indx <= 0;
        rst_med_counter <= 0;
        en_comp_reg <= 0;
        en_index <= 0;
        en_sonido <= 0;
        en_fail_counter <= 0;
        rst_round_counter <=0 ;
        en_lose_music <=0;
        en_win_music <= 0;
        rst_lose_counter <= 0;
        en_decoder_luz <= 0;
        en_encoder_jugador <=0;
        plyr_flag <= 0; 
        en_mux_comp <= 0;
        
       end
    endcase
 end
endmodule
