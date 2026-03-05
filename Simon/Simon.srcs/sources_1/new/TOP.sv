`timescale 1ns / 1ps

module TOP(
  input main_clk,
  
  //inputs para los botones y switches de la FPGA
  input btnC_start,
  input btnL_blue,
  input btnU_green,
  input btnR_red,
  input btnD_yellow,
  input [0:15] SW,
  
  //Estos son pines de prueba de momento
  output pin_out_red,
  output pin_out_green,
  output pin_out_blue,
  output pin_out_yellow,
  output buzzer_pin
);

logic high = 1'b1;
logic low = 1'b0;


// ############################Procesamiento de botones#################################
logic processed_red_button;
button_processing processing_red_btn(
.clk(main_clk),
.rst(low),
.raw_button(btnR_red),
.processed_button(processed_red_button)
);
assign pin_out_red = processed_red_button;

logic processed_green_button;
button_processing processing_green_btn(
.clk(main_clk),
.rst(low),
.raw_button(btnU_green),
.processed_button(processed_green_button)
);
assign pin_out_green = processed_green_button;

logic processed_blue_button;
button_processing processing_blue_btn(
.clk(main_clk),
.rst(low),
.raw_button(btnL_blue),
.processed_button(processed_blue_button)
);
assign pin_out_blue = processed_blue_button;

logic processed_yellow_button;
button_processing processing_yellow_btn(
.clk(main_clk),
.rst(low),
.raw_button(btnD_yellow),
.processed_button(processed_yellow_button)
);
assign pin_out_yellow = processed_yellow_button;

logic processed_start_button; 
button_processing processing_start_btn(
.clk(main_clk),
.rst(low),
.raw_button(btnC_start),
.processed_button(processed_start_button)
);

//señal para enables cuando el jugador presiona un boton
logic plyr_en_signal = processed_red_button^processed_green_button^processed_blue_button^processed_yellow_button;

//####################################Instancia de la MEF (Ahora si) ####################################
logic c_mef; 
logic f_mef; 
logic k_mef; 
logic rst_mef; 
logic en_comp_reg_mef;
logic en_indx_mef;
logic en_sonido_mef;
logic en_fail_counter_mef;
logic rst_round_counter_mef;
logic en_lose_music_mef;
logic en_win_music_mef;
logic rst_lose_counter_mef;
logic en_decoder_luz_mef;
logic en_encoder_jugador_mef;
logic flag_k_mef;
logic state_mef;

assign rst_mef = low; //de momento el rst va a ser cero, luego vemos si hay que cambiarlo
    FSM dut(
    .i(processed_start_button),
    .c(c_mef),
    .f(f_mef),
    .k(k_mef),
    .rst(rst_mef),
    .clk(main_clk),
    .en_comp_reg(en_comp_reg_mef),
    .en_index(en_indx_mef),
    .en_sonido(en_sonido_mef),
    .en_fail_counter(en_fail_counter_mef),
    .rst_round_counter(rst_round_counter_mef),
    .en_lose_music(en_lose_music_mef),
    .en_win_music(en_win_music_mef),
    .rst_lose_counter(rst_lose_counter_mef),
    .en_decoder_luz(en_decoder_luz_mef),
    .en_encoder_jugador(en_encoder_jugador_mef),
    .flag_k(flag_k_mef),
    .state(state_mef)
);


// ###########################Intancia del LSFR y clk 1Hz ##################################
logic clk_out_1hz;
frec_divider_param #(
        .N(100_000_000)
    ) clk_1hz (
        .main_clk(main_clk),
        .rst(low),
        .pulse(clk_out_1hz)
    );
    
logic outputs_lsfr;
LFSR_16bit LSFR (
        .clk(clk_out_1hz),
        .rst(rst_round_counter_mef),
        .sw(SW),
        .op(outputs_lsfr)
    );
    
//############################Register################################################
logic player_moves_bits;
Registro_param computer_moves_reg (
        .clk(main_clk),
        .rst(rst_round_counter_mef),
        .en(en_comp_reg_mef),
        .data_in(outputs_lsfr),
        .data_out(player_moves_bits) //player_moves_bits guarda el bus de bits del lsfr esto hay que dividirlo a los muxes despues 
    );

//############################Index control logic################################################
logic data_mux_en_indx [2];  
logic mux_en_indx_output;
assign data_mux_en_indx[0]= en_indx_mef;
assign data_mux_en_indx[1]= plyr_en_signal;

 mux_param #(
        .Width(1),
        .N(1)
    ) mux_en_indx (
        .sel(flag_k_mef),
        .data(data_mux_en_indx),
        .en(high),
        .y(mux_en_indx_output)
    );
  
  logic indx_count;
  UpCounter #(
    .Width(4),
    .max_value(8)
  ) indx_counter (
    .clk(clk_out_1hz),
    .rst(low),
    .en(mux_en_indx_output),
    .count(indx_count)
  );
   
endmodule