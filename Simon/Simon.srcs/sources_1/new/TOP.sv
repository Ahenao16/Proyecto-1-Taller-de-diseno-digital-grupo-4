`timescale 1ns / 1ps

module TOP(
  input main_clk,
  
  //inputs para los botones y switches de la FPGA
  input btnC_start,
  input btnL_blue,
  input btnU_green,
  input btnR_red,
  input btnD_yellow,
  input [15:0] SW,
  output [0:6] seg,       
  output [3:0] digit,    
  output pin_out_red,
  output pin_out_green,
  output pin_out_blue,
  output pin_out_yellow,
  output pin_out_sound_select,
  output pin_out_en_sound
);

logic high = 1'b1;
logic low = 1'b0;

//######################################################################################
logic power_on_rst;
  power_on_reset  power_rst (
        .clk(main_clk),
        .rst(power_on_rst)
    );
    
  
logic square_wave_2hz_output;
square_wave_generator #(
    .N(50_000_000)
)square_wave_2hz(
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(square_wave_2hz_output)
);
    
// ############################Procesamiento de botones#################################
logic processed_red_button;
button_processing processing_red_btn(
.clk(main_clk),
.rst(power_on_rst),
.raw_button(btnR_red),
.processed_button(processed_red_button)
);


logic processed_green_button;
button_processing processing_green_btn(
.clk(main_clk),
.rst(power_on_rst),
.raw_button(btnU_green),
.processed_button(processed_green_button)
);


logic processed_blue_button;
button_processing processing_blue_btn(
.clk(main_clk),
.rst(power_on_rst),
.raw_button(btnL_blue),
.processed_button(processed_blue_button)
);


logic processed_yellow_button;
button_processing processing_yellow_btn(
.clk(main_clk),
.rst(power_on_rst),
.raw_button(btnD_yellow),
.processed_button(processed_yellow_button)
);


logic processed_start_button; 
button_processing processing_start_btn(
.clk(main_clk),
.rst(power_on_rst),
.raw_button(btnC_start),
.processed_button(processed_start_button)
);


logic plyr_en_signal = processed_red_button||processed_green_button||processed_blue_button||processed_yellow_button;

//####################################Instancia de la MEF (Ahora si) ####################################
logic c_mef; 
logic f_mef; 
logic k_mef; 
logic m_mef;
logic e_mef;
logic en_comp_reg_mef;
logic en_indx_mef;
logic en_sonido_mef;
logic en_fail_counter_mef;
logic rst_round_counter_mef;
logic en_lose_music_mef;
logic en_win_music_mef;
logic rst_lose_counter_mef;
logic en_decoder_luz_mef;
logic plyr_flag_mef;
logic en_mux_comp_mef;
logic en_rc_mef;
logic rst_indx_mef;
logic rst_med_counter_mef;
logic [3:0] state_mef;

    FSM Simon_controller(
    .i(processed_start_button),
    .c(c_mef),
    .f(f_mef),
    .k(k_mef),
    .e(e_mef),
    .m (m_mef),
    .rst(power_on_rst),
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
    .plyr_flag(plyr_flag_mef),
    .en_mux_comp(en_mux_comp_mef),
    .state(state_mef),
    .en_rc(en_rc_mef),
    .rst_indx(rst_indx_mef),
    .rst_med_counter(rst_med_counter_mef)
    
);


// ###########################Intancia del LSFR y clk 1Hz y clk3hz##################################
logic clk_out_1hz;
frec_divider_param #(
        .N(100_000_000)
    ) clk_1hz (
        .main_clk(main_clk),
        .rst(power_on_rst),
        .pulse(clk_out_1hz)
    );
    
    
logic [15:0] outputs_lsfr;
LFSR_16bit LSFR (
        .clk(main_clk),
        .rst(rst_round_counter_mef || power_on_rst),
        .sw(SW),
        .op(outputs_lsfr)
    );
    
//############################Register################################################
logic [15:0] player_moves_bits;
Registro_param computer_moves_reg (
        .clk(main_clk),
        .rst(rst_round_counter_mef || power_on_rst),
        .en(en_comp_reg_mef),
        .data_in(outputs_lsfr),
        .data_out(player_moves_bits) //player_moves_bits guarda el bus de bits del lsfr esto hay que dividirlo a los muxes despues 
    );

//############################Index control logic, Round counter and definition of c################################################
logic data_mux_en_indx [2];  
logic mux_en_indx_output;
assign data_mux_en_indx[0]= en_indx_mef;
assign data_mux_en_indx[1]= plyr_en_signal;

 mux_param #(
        .Width(1),
        .N(1)
    ) mux_en_indx (
        .sel(plyr_flag_mef),
        .data(data_mux_en_indx),
        .en(high),
        .y(mux_en_indx_output)
    );
  
  logic [3:0] indx_count;
  UpCounter #(
    .Width(4),
    .max_value(9)
  ) indx_counter (
    .clk(main_clk),
    .rst(power_on_rst || rst_indx_mef),
    .en(clk_out_1hz && mux_en_indx_output),
    .count(indx_count)
  );
  
  logic [3:0] round_count;
  UpCounter #(
    .Width(4),
    .max_value(8)
  ) round_counter (
    .clk(main_clk),
    .rst(rst_round_counter_mef || power_on_rst),
    .en(en_rc_mef),
    .count(round_count)
  );
   
   logic rc_gt_index;
   logic rc_lt_index;
   logic rc_eq_index;
   
   comparador_param #(
   .Width(4)
   ) round_counter_comparator (
   .a(round_count),
   .b(4'b1000),
   .gt(rc_gt_index),
   .eq(rc_eq_index),
   .lt(rc_lt_index)
   );
   
assign c_mef = rc_eq_index; 

logic indx_gt_rc; // (rc = round_counter)
logic indx_eq_rc;
logic indx_lt_rc;

  comparador_param #(
   .Width(4)
   ) indx_comparator (
   .a(indx_count),
   .b(round_count),
   .gt(indx_gt_rc),
   .eq(indx_eq_rc),
   .lt(indx_lt_rc)
   );
  
 //##########################Muxes computadora#########################
 
logic [2:0] indx_count_3lsb;
assign indx_count_3lsb = indx_count [2:0];
logic data_computer_msb_mux [8];  
 
assign data_computer_msb_mux[0]= player_moves_bits [15];
assign data_computer_msb_mux[1]= player_moves_bits [13];
assign data_computer_msb_mux[2]= player_moves_bits [11];
assign data_computer_msb_mux[3]= player_moves_bits [9];
assign data_computer_msb_mux[4]= player_moves_bits [7];
assign data_computer_msb_mux[5]= player_moves_bits [5];
assign data_computer_msb_mux[6]= player_moves_bits [3];
assign data_computer_msb_mux[7]= player_moves_bits [1];


 logic comp_msb;
  mux_param #(
        .Width(1),
        .N(3)
    ) computer_msb_mux (
        .sel(indx_count_3lsb),
        .data(data_computer_msb_mux),
        .en(high),
        .y(comp_msb) // comp=computador
    );
    
    
logic data_computer_lsb_mux [8];  
assign data_computer_lsb_mux[0]= player_moves_bits [14];
assign data_computer_lsb_mux[1]= player_moves_bits [12];
assign data_computer_lsb_mux[2]= player_moves_bits [10];
assign data_computer_lsb_mux[3]= player_moves_bits [8];
assign data_computer_lsb_mux[4]= player_moves_bits [6];
assign data_computer_lsb_mux[5]= player_moves_bits [4];
assign data_computer_lsb_mux[6]= player_moves_bits [2];
assign data_computer_lsb_mux[7]= player_moves_bits [0];
 
logic comp_lsb;
      mux_param #(
        .Width(1),
        .N(3)
    ) computer_lsb_mux (
        .sel(indx_count_3lsb),
        .data(data_computer_lsb_mux),
        .en(high),
        .y(comp_lsb) // comp=computador
    );
    
    
 //###########################Encoder del jugador########################################
 // Creo que funciona asi
logic [3:0] player_encoder_inputs; 
assign player_encoder_inputs[0]= processed_green_button;
assign player_encoder_inputs[1]= processed_red_button;
assign player_encoder_inputs[2]= processed_blue_button;
assign player_encoder_inputs[3]= processed_yellow_button;
 
 logic [1:0] bus_plyr_bits;
  
 encoder_param #(.N(4)) player_inputs_encoder (
        .encoder_in(player_encoder_inputs),
        .enable(plyr_en_signal),
        .binary_out(bus_plyr_bits)
    );
 
  //####################################Decoder de botones #################################################
logic plyr_msb = bus_plyr_bits[1];
logic plyr_lsb = bus_plyr_bits[0];

//comp_msb y comp_lsb
logic decoder_msb;
logic msb_selector_mux_data [2];
assign msb_selector_mux_data [0]=comp_msb;
assign msb_selector_mux_data [1]=bus_plyr_bits[1];
mux_param #(
        .Width(1),
        .N(1)
    ) deco_msb_selector (
        .sel(plyr_flag_mef),
        .data(msb_selector_mux_data),
        .en(high),
        .y(decoder_msb)
    );
    
logic decoder_lsb;
logic lsb_selector_mux_data [2];
assign lsb_selector_mux_data [0]=comp_lsb;
assign lsb_selector_mux_data [1]=bus_plyr_bits[0];
mux_param #(
        .Width(1),
        .N(1)
    ) deco_lsb_selector (
        .sel(plyr_flag_mef),
        .data(lsb_selector_mux_data),
        .en(high),
        .y(decoder_lsb)
    );

 logic data_mux_en_color_decoder [2];
 assign data_mux_en_color_decoder[0] = en_decoder_luz_mef && square_wave_2hz_output;
 assign data_mux_en_color_decoder[1] = plyr_en_signal;
 logic mux_en_color_decoder_output;
 
 mux_param #(
        .Width(1),
        .N(1)
    ) mux_en_color_decoder (
        .sel(plyr_flag_mef),
        .data(data_mux_en_color_decoder),
        .en(high),
        .y(mux_en_color_decoder_output)
    );
    
 logic [1:0]color_decoder_input_bus ={decoder_msb, decoder_lsb};
 logic [3:0] color_decoder_output_bus;
 
 decoparam #(.N(2)) color_decoder (
        .deco_in(color_decoder_input_bus),
        .enable(mux_en_color_decoder_output),         
        .deco_out(color_decoder_output_bus)
    );
  
 logic green_deco_output = color_decoder_output_bus [0] ;//(00)
 logic red_deco_output = color_decoder_output_bus [1]; //(01)
 logic blue_deco_output = color_decoder_output_bus [2]; //(10)
 logic yellow_deco_output = color_decoder_output_bus [3]; //(11)
 
 
 assign pin_out_red = red_deco_output;
 assign pin_out_green = green_deco_output;
 assign pin_out_blue = blue_deco_output;
 assign pin_out_yellow = yellow_deco_output;
 
 
//#####################Sistema de audio de botones##############################
  
logic data_mux_en_color_sound [2];  
logic mux_en_color_sound_output;
assign data_mux_en_color_sound[0]= en_sonido_mef && square_wave_2hz_output;
assign data_mux_en_color_sound[1]= plyr_en_signal;

 mux_param #(
        .Width(1),
        .N(1)
    ) mux_en_color_sound (
        .sel(plyr_flag_mef),
        .data(data_mux_en_color_sound),
        .en(high),
        .y(mux_en_color_sound_output)
    );
  
  // Azul - E7
logic square_blue_tone;
square_wave_generator #(
    .N(18960)
) tone_blue (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(square_blue_tone)
);

// Amarillo - C#7
logic square_yellow_tone;
square_wave_generator #(
    .N(22550)
) tone_yellow (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(square_yellow_tone)
);

// Rojo - A7
logic square_red_tone;
square_wave_generator #(
    .N(14205)
) tone_red (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(square_red_tone)
);

// Verde - E6 (una octava menor que azul)
logic square_green_tone;
square_wave_generator #(
    .N(37920)
) tone_green (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(square_green_tone)
);

logic color_sound_data [4];
assign color_sound_data [0] = square_green_tone;
assign color_sound_data [1] = square_red_tone;
assign color_sound_data [2] = square_blue_tone;
assign color_sound_data [3] = square_yellow_tone;
logic color_sound;
 
 mux_param #(
        .Width(1),
        .N(2)
    ) color_sound_mux (
        .sel(color_decoder_input_bus),
        .data(color_sound_data),
        .en(mux_en_color_sound_output),
        .y(color_sound)
    );

//#####################Sistema de melodias y definicion de f ##############################
logic en_medley_counter = en_win_music_mef || en_lose_music_mef;
logic [1:0] medley_count;

UpCounter #(
    .Width(2)
  ) medley_counter (
    .clk(main_clk),
    .rst(rst_med_counter_mef || power_on_rst),
    .en(clk_out_1hz && en_medley_counter),
    .count(medley_count)
  );

logic tone_C7;
logic tone_E7;
logic tone_G7;

// C7 - 2093 Hz
square_wave_generator #(
    .N(23900)
) tone_win_1 (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(tone_C7)
);

// E7 - 2637 Hz
square_wave_generator #(
    .N(18960)
) tone_win_2 (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(tone_E7)
);

// G7 - 3136 Hz
square_wave_generator #(
    .N(15940)
) tone_win_3 (
    .main_clk(main_clk),
    .rst(power_on_rst),
    .square_wave(tone_G7)
);

logic win_medley_data [4];
assign win_medley_data [0] = tone_C7;
assign win_medley_data [1] = tone_E7;
assign win_medley_data [2] = tone_G7;
assign win_medley_data [3] = low;
logic win_sound;
mux_param #(
        .Width(1),
        .N(2)
    ) mux_win_medley (
        .sel(medley_count),
        .data(win_medley_data),
        .en(en_win_music_mef),
        .y(win_sound)
    );
    
   
logic lose_medley_data [4];
assign lose_medley_data [0] = tone_G7;
assign lose_medley_data [1] = tone_E7;
assign lose_medley_data [2] = tone_C7;
assign lose_medley_data [3] = low;
logic lose_sound;

mux_param #(
        .Width(1),
        .N(2)
    ) mux_lose_medley (
        .sel(medley_count),
        .data(lose_medley_data),
        .en(en_lose_music_mef),
        .y(lose_sound)
    );

   logic mc_gt_three;
   logic mc_eq_three;
   logic mc_lt_three;
   
   comparador_param #(
   .Width(2)
   ) medleey_ending_comparator (
   .a(medley_count),
   .b(2'b11),
   .gt(mc_gt_three), //(mc=medley_count)
   .eq(mc_eq_three),
   .lt(mc_lt_three)
   );
 
assign f_mef = indx_gt_rc;
assign m_mef= mc_eq_three;
assign e_mef = indx_gt_rc && plyr_flag_mef;

//#####################logica k##########################
logic k_value_mux_data [2];
assign k_value_mux_data[0] = high;
assign comparation_result = ((comp_msb == plyr_msb) && (comp_lsb == plyr_lsb));
logic mux_k_value_output;

latch_comparation latch_plyr_comparison(
    .clk(plyr_en_signal),   
    .set(en_rc_mef || rst_round_counter_mef),   
    .D(comparation_result),     
    .Q(k_value_mux_data[1]),
    .en(plyr_flag_mef)
);

mux_param #(
        .Width(1),
        .N(1)
    ) mux_k_value (
        .sel(plyr_flag_mef),
        .data(k_value_mux_data),
        .en(high),
        .y(mux_k_value_output)
    );
   
assign k_mef = mux_k_value_output;
//########################Display 7 segmentos y fail_couter#################################

logic [3:0] round_counter_msb;
logic [3:0] round_counter_lsb;
digit_separator #(
.width(4)) round_counter_digit_separator
(
.number(round_count),
.tents(round_counter_msb),
.units(round_counter_lsb)
);

logic en_fail_counter_prev;
always_ff @(posedge main_clk) begin
    en_fail_counter_prev <= en_fail_counter_mef;
end

logic [6:0] fail_count;
UpCounter #(
    .Width(7),
    .max_value(99)
  ) fail_counter (
    .clk(main_clk),
    .rst(power_on_rst || rst_lose_counter_mef),
    .en(en_fail_counter_mef && !en_fail_counter_prev),
    .count(fail_count)
  );
  
  
logic [3:0] fail_msb;
logic [3:0] fail_lsb;
digit_separator #(
.width(4)) fail_digit_separator
(
.number(fail_count),
.tents(fail_msb),
.units(fail_lsb)
);


BCD (
.clk_100MHz(main_clk),
.reset(power_on_rst),
.lsb_counter_1(fail_lsb),
.msb_counter_1(fail_msb),
.lsb_counter_2(round_counter_lsb),
.msb_counter_2(round_counter_msb),
.seg(seg),
.digit(digit)


);
// ###########################Asignacion pines buzzer ############################
assign pin_out_en_sound= en_win_music_mef||en_lose_music_mef||mux_en_color_sound_output ;
assign pin_out_sound_select= win_sound||lose_sound ||color_sound;

  
  
endmodule