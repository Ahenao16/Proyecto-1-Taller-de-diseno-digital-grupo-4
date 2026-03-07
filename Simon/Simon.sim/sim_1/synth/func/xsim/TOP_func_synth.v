// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Mar  5 00:36:38 2026
// Host        : LAPTOP-NA5R47FL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/henao/Desktop/Proyecto 1
//               Digitales/Proyecto-1-Taller-de-diseno-digital-grupo-4/Simon/Simon.sim/sim_1/synth/func/xsim/TOP_func_synth.v}
// Design      : TOP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FSM
   (E,
    en_lose_music_mef,
    rst_round_counter_mef,
    en_win_music_mef,
    en_mux_comp_mef,
    flag_k_mef,
    pulse_out_reg,
    pulse_out_reg_0,
    pulse_out_reg_1,
    pulse_out_reg_2,
    \FSM_sequential_curr_state_reg[0]_0 ,
    processed_red_button,
    processed_yellow_button,
    processed_green_button,
    processed_blue_button,
    \FSM_sequential_curr_state_reg[2]_0 ,
    \FSM_sequential_curr_state_reg[2]_1 ,
    \FSM_sequential_curr_state_reg[2]_2 ,
    processed_start_button,
    rst_global,
    CLK);
  output [0:0]E;
  output en_lose_music_mef;
  output rst_round_counter_mef;
  output en_win_music_mef;
  output en_mux_comp_mef;
  output flag_k_mef;
  output [0:0]pulse_out_reg;
  output pulse_out_reg_0;
  output pulse_out_reg_1;
  output pulse_out_reg_2;
  output [0:0]\FSM_sequential_curr_state_reg[0]_0 ;
  input processed_red_button;
  input processed_yellow_button;
  input processed_green_button;
  input processed_blue_button;
  input \FSM_sequential_curr_state_reg[2]_0 ;
  input \FSM_sequential_curr_state_reg[2]_1 ;
  input \FSM_sequential_curr_state_reg[2]_2 ;
  input processed_start_button;
  input rst_global;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_curr_state[0]_i_1_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_1_n_0 ;
  wire [0:0]\FSM_sequential_curr_state_reg[0]_0 ;
  wire \FSM_sequential_curr_state_reg[2]_0 ;
  wire \FSM_sequential_curr_state_reg[2]_1 ;
  wire \FSM_sequential_curr_state_reg[2]_2 ;
  wire [2:1]curr_state;
  wire en_comp_reg_reg_i_1_n_0;
  wire en_comp_reg_reg_i_2_n_0;
  wire en_decoder_luz_reg_i_1_n_0;
  wire en_encoder_jugador_reg_i_1_n_0;
  wire en_fail_counter_reg_i_1_n_0;
  wire en_index_reg_i_1_n_0;
  wire en_lose_music_mef;
  wire en_mux_comp_mef;
  wire en_sonido_mef;
  wire en_win_music_mef;
  wire en_win_music_reg_i_1_n_0;
  wire flag_k_mef;
  wire processed_blue_button;
  wire processed_green_button;
  wire processed_red_button;
  wire processed_start_button;
  wire processed_yellow_button;
  wire [0:0]pulse_out_reg;
  wire pulse_out_reg_0;
  wire pulse_out_reg_1;
  wire pulse_out_reg_2;
  wire rst_global;
  wire rst_round_counter_mef;
  wire rst_round_counter_reg_i_1_n_0;

  LUT6 #(
    .INIT(64'hF055F005F00C0F0C)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(\FSM_sequential_curr_state_reg[2]_1 ),
        .I1(processed_start_button),
        .I2(\FSM_sequential_curr_state_reg[0]_0 ),
        .I3(curr_state[2]),
        .I4(\FSM_sequential_curr_state_reg[2]_2 ),
        .I5(curr_state[1]),
        .O(\FSM_sequential_curr_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF5C10CCC)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(\FSM_sequential_curr_state_reg[2]_1 ),
        .I1(\FSM_sequential_curr_state_reg[0]_0 ),
        .I2(curr_state[2]),
        .I3(\FSM_sequential_curr_state_reg[2]_2 ),
        .I4(curr_state[1]),
        .O(\FSM_sequential_curr_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0CCFF00AF00)) 
    \FSM_sequential_curr_state[2]_i_1 
       (.I0(\FSM_sequential_curr_state_reg[2]_0 ),
        .I1(\FSM_sequential_curr_state_reg[2]_1 ),
        .I2(\FSM_sequential_curr_state_reg[0]_0 ),
        .I3(curr_state[2]),
        .I4(\FSM_sequential_curr_state_reg[2]_2 ),
        .I5(curr_state[1]),
        .O(\FSM_sequential_curr_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_curr_state[2]_i_6 
       (.I0(flag_k_mef),
        .I1(processed_blue_button),
        .I2(processed_yellow_button),
        .O(pulse_out_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \FSM_sequential_curr_state[2]_i_7 
       (.I0(flag_k_mef),
        .I1(processed_yellow_button),
        .I2(processed_blue_button),
        .I3(processed_red_button),
        .O(pulse_out_reg_2));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:100,iSTATE1:101,iSTATE2:010,iSTATE3:110,iSTATE4:011,iSTATE5:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_curr_state_reg[0]_0 ),
        .R(rst_global));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:100,iSTATE1:101,iSTATE2:010,iSTATE3:110,iSTATE4:011,iSTATE5:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1_n_0 ),
        .Q(curr_state[1]),
        .R(rst_global));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:100,iSTATE1:101,iSTATE2:010,iSTATE3:110,iSTATE4:011,iSTATE5:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[2]_i_1_n_0 ),
        .Q(curr_state[2]),
        .R(rst_global));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \count[3]_i_2 
       (.I0(processed_red_button),
        .I1(processed_yellow_button),
        .I2(processed_green_button),
        .I3(processed_blue_button),
        .I4(flag_k_mef),
        .I5(en_sonido_mef),
        .O(pulse_out_reg));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_comp_reg_reg
       (.CLR(1'b0),
        .D(en_comp_reg_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    en_comp_reg_reg_i_1
       (.I0(curr_state[1]),
        .I1(\FSM_sequential_curr_state_reg[0]_0 ),
        .I2(curr_state[2]),
        .O(en_comp_reg_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    en_comp_reg_reg_i_2
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(curr_state[2]),
        .I2(curr_state[1]),
        .O(en_comp_reg_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_decoder_luz_reg
       (.CLR(1'b0),
        .D(en_decoder_luz_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(en_mux_comp_mef));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    en_decoder_luz_reg_i_1
       (.I0(curr_state[1]),
        .I1(curr_state[2]),
        .I2(\FSM_sequential_curr_state_reg[0]_0 ),
        .O(en_decoder_luz_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_encoder_jugador_reg
       (.CLR(1'b0),
        .D(en_encoder_jugador_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(flag_k_mef));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    en_encoder_jugador_reg_i_1
       (.I0(curr_state[1]),
        .I1(curr_state[2]),
        .I2(\FSM_sequential_curr_state_reg[0]_0 ),
        .O(en_encoder_jugador_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_fail_counter_reg
       (.CLR(1'b0),
        .D(en_fail_counter_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(en_lose_music_mef));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    en_fail_counter_reg_i_1
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(curr_state[2]),
        .I2(curr_state[1]),
        .O(en_fail_counter_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_index_reg
       (.CLR(1'b0),
        .D(en_index_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(en_sonido_mef));
  LUT2 #(
    .INIT(4'h2)) 
    en_index_reg_i_1
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .O(en_index_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_win_music_reg
       (.CLR(1'b0),
        .D(en_win_music_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(en_win_music_mef));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    en_win_music_reg_i_1
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .I2(\FSM_sequential_curr_state_reg[0]_0 ),
        .O(en_win_music_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hD11D1DD11DD1D11D)) 
    pin_out_red_OBUF_inst_i_4
       (.I0(en_mux_comp_mef),
        .I1(flag_k_mef),
        .I2(processed_red_button),
        .I3(processed_yellow_button),
        .I4(processed_green_button),
        .I5(processed_blue_button),
        .O(pulse_out_reg_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    rst_round_counter_reg
       (.CLR(1'b0),
        .D(rst_round_counter_reg_i_1_n_0),
        .G(en_comp_reg_reg_i_2_n_0),
        .GE(1'b1),
        .Q(rst_round_counter_mef));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h48)) 
    rst_round_counter_reg_i_1
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(curr_state[1]),
        .I2(curr_state[2]),
        .O(rst_round_counter_reg_i_1_n_0));
endmodule

module LFSR_16bit
   (op,
    \SW[12] ,
    \SW[2] ,
    \SW[3] ,
    \op_reg[15]_P_0 ,
    \op_reg[15]_C_0 ,
    CLK,
    \op_reg[14]_P_0 ,
    \op_reg[14]_C_0 ,
    \op_reg[13]_P_0 ,
    \op_reg[13]_C_0 ,
    \op_reg[12]_P_0 ,
    \op_reg[12]_C_0 ,
    \op_reg[11]_P_0 ,
    \op_reg[11]_C_0 ,
    \op_reg[10]_P_0 ,
    \op_reg[10]_C_0 ,
    \op_reg[9]_P_0 ,
    \op_reg[9]_C_0 ,
    \op_reg[8]_P_0 ,
    \op_reg[8]_C_0 ,
    \op_reg[7]_P_0 ,
    \op_reg[7]_C_0 ,
    \op_reg[6]_P_0 ,
    \op_reg[6]_C_0 ,
    \op_reg[5]_P_0 ,
    \op_reg[5]_C_0 ,
    \op_reg[4]_P_0 ,
    \op_reg[4]_C_0 ,
    \op_reg[3]_P_0 ,
    \op_reg[3]_C_0 ,
    \op_reg[2]_P_0 ,
    \op_reg[2]_C_0 ,
    \op_reg[1]_P_0 ,
    \op_reg[1]_C_0 ,
    \op_reg[0]_P_0 ,
    \op_reg[0]_C_0 ,
    SW_IBUF);
  output [15:0]op;
  output \SW[12] ;
  output \SW[2] ;
  output \SW[3] ;
  input \op_reg[15]_P_0 ;
  input \op_reg[15]_C_0 ;
  input CLK;
  input \op_reg[14]_P_0 ;
  input \op_reg[14]_C_0 ;
  input \op_reg[13]_P_0 ;
  input \op_reg[13]_C_0 ;
  input \op_reg[12]_P_0 ;
  input \op_reg[12]_C_0 ;
  input \op_reg[11]_P_0 ;
  input \op_reg[11]_C_0 ;
  input \op_reg[10]_P_0 ;
  input \op_reg[10]_C_0 ;
  input \op_reg[9]_P_0 ;
  input \op_reg[9]_C_0 ;
  input \op_reg[8]_P_0 ;
  input \op_reg[8]_C_0 ;
  input \op_reg[7]_P_0 ;
  input \op_reg[7]_C_0 ;
  input \op_reg[6]_P_0 ;
  input \op_reg[6]_C_0 ;
  input \op_reg[5]_P_0 ;
  input \op_reg[5]_C_0 ;
  input \op_reg[4]_P_0 ;
  input \op_reg[4]_C_0 ;
  input \op_reg[3]_P_0 ;
  input \op_reg[3]_C_0 ;
  input \op_reg[2]_P_0 ;
  input \op_reg[2]_C_0 ;
  input \op_reg[1]_P_0 ;
  input \op_reg[1]_C_0 ;
  input \op_reg[0]_P_0 ;
  input \op_reg[0]_C_0 ;
  input [14:0]SW_IBUF;

  wire CLK;
  wire \SW[12] ;
  wire \SW[2] ;
  wire \SW[3] ;
  wire [14:0]SW_IBUF;
  wire [15:0]op;
  wire \op_reg[0]_C_0 ;
  wire \op_reg[0]_C_n_0 ;
  wire \op_reg[0]_LDC_n_0 ;
  wire \op_reg[0]_P_0 ;
  wire \op_reg[0]_P_n_0 ;
  wire \op_reg[10]_C_0 ;
  wire \op_reg[10]_C_n_0 ;
  wire \op_reg[10]_LDC_n_0 ;
  wire \op_reg[10]_P_0 ;
  wire \op_reg[10]_P_n_0 ;
  wire \op_reg[11]_C_0 ;
  wire \op_reg[11]_C_n_0 ;
  wire \op_reg[11]_LDC_n_0 ;
  wire \op_reg[11]_P_0 ;
  wire \op_reg[11]_P_n_0 ;
  wire \op_reg[12]_C_0 ;
  wire \op_reg[12]_C_n_0 ;
  wire \op_reg[12]_LDC_n_0 ;
  wire \op_reg[12]_P_0 ;
  wire \op_reg[12]_P_n_0 ;
  wire \op_reg[13]_C_0 ;
  wire \op_reg[13]_C_n_0 ;
  wire \op_reg[13]_LDC_n_0 ;
  wire \op_reg[13]_P_0 ;
  wire \op_reg[13]_P_n_0 ;
  wire \op_reg[14]_C_0 ;
  wire \op_reg[14]_C_n_0 ;
  wire \op_reg[14]_LDC_n_0 ;
  wire \op_reg[14]_P_0 ;
  wire \op_reg[14]_P_n_0 ;
  wire \op_reg[15]_C_0 ;
  wire \op_reg[15]_C_n_0 ;
  wire \op_reg[15]_LDC_n_0 ;
  wire \op_reg[15]_P_0 ;
  wire \op_reg[15]_P_n_0 ;
  wire \op_reg[1]_C_0 ;
  wire \op_reg[1]_C_n_0 ;
  wire \op_reg[1]_LDC_n_0 ;
  wire \op_reg[1]_P_0 ;
  wire \op_reg[1]_P_n_0 ;
  wire \op_reg[2]_C_0 ;
  wire \op_reg[2]_C_n_0 ;
  wire \op_reg[2]_LDC_n_0 ;
  wire \op_reg[2]_P_0 ;
  wire \op_reg[2]_P_n_0 ;
  wire \op_reg[3]_C_0 ;
  wire \op_reg[3]_C_n_0 ;
  wire \op_reg[3]_LDC_n_0 ;
  wire \op_reg[3]_P_0 ;
  wire \op_reg[3]_P_n_0 ;
  wire \op_reg[4]_C_0 ;
  wire \op_reg[4]_C_n_0 ;
  wire \op_reg[4]_LDC_n_0 ;
  wire \op_reg[4]_P_0 ;
  wire \op_reg[4]_P_n_0 ;
  wire \op_reg[5]_C_0 ;
  wire \op_reg[5]_C_n_0 ;
  wire \op_reg[5]_LDC_n_0 ;
  wire \op_reg[5]_P_0 ;
  wire \op_reg[5]_P_n_0 ;
  wire \op_reg[6]_C_0 ;
  wire \op_reg[6]_C_n_0 ;
  wire \op_reg[6]_LDC_n_0 ;
  wire \op_reg[6]_P_0 ;
  wire \op_reg[6]_P_n_0 ;
  wire \op_reg[7]_C_0 ;
  wire \op_reg[7]_C_n_0 ;
  wire \op_reg[7]_LDC_n_0 ;
  wire \op_reg[7]_P_0 ;
  wire \op_reg[7]_P_n_0 ;
  wire \op_reg[8]_C_0 ;
  wire \op_reg[8]_C_n_0 ;
  wire \op_reg[8]_LDC_n_0 ;
  wire \op_reg[8]_P_0 ;
  wire \op_reg[8]_P_n_0 ;
  wire \op_reg[9]_C_0 ;
  wire \op_reg[9]_C_n_0 ;
  wire \op_reg[9]_LDC_n_0 ;
  wire \op_reg[9]_P_0 ;
  wire \op_reg[9]_P_n_0 ;
  wire [0:0]p_0_out__0;

  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_1 
       (.I0(\op_reg[0]_P_n_0 ),
        .I1(\op_reg[0]_LDC_n_0 ),
        .I2(\op_reg[0]_C_n_0 ),
        .O(op[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[11]_i_1 
       (.I0(\op_reg[11]_P_n_0 ),
        .I1(\op_reg[11]_LDC_n_0 ),
        .I2(\op_reg[11]_C_n_0 ),
        .O(op[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[14]_i_1 
       (.I0(\op_reg[14]_P_n_0 ),
        .I1(\op_reg[14]_LDC_n_0 ),
        .I2(\op_reg[14]_C_n_0 ),
        .O(op[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[15]_i_1 
       (.I0(\op_reg[15]_P_n_0 ),
        .I1(\op_reg[15]_LDC_n_0 ),
        .I2(\op_reg[15]_C_n_0 ),
        .O(op[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_1 
       (.I0(\op_reg[1]_P_n_0 ),
        .I1(\op_reg[1]_LDC_n_0 ),
        .I2(\op_reg[1]_C_n_0 ),
        .O(op[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_1 
       (.I0(\op_reg[2]_P_n_0 ),
        .I1(\op_reg[2]_LDC_n_0 ),
        .I2(\op_reg[2]_C_n_0 ),
        .O(op[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_1 
       (.I0(\op_reg[3]_P_n_0 ),
        .I1(\op_reg[3]_LDC_n_0 ),
        .I2(\op_reg[3]_C_n_0 ),
        .O(op[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_1 
       (.I0(\op_reg[4]_P_n_0 ),
        .I1(\op_reg[4]_LDC_n_0 ),
        .I2(\op_reg[4]_C_n_0 ),
        .O(op[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_1 
       (.I0(\op_reg[5]_P_n_0 ),
        .I1(\op_reg[5]_LDC_n_0 ),
        .I2(\op_reg[5]_C_n_0 ),
        .O(op[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[6]_i_1 
       (.I0(\op_reg[6]_P_n_0 ),
        .I1(\op_reg[6]_LDC_n_0 ),
        .I2(\op_reg[6]_C_n_0 ),
        .O(op[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[7]_i_1 
       (.I0(\op_reg[7]_P_n_0 ),
        .I1(\op_reg[7]_LDC_n_0 ),
        .I2(\op_reg[7]_C_n_0 ),
        .O(op[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[8]_i_1 
       (.I0(\op_reg[8]_P_n_0 ),
        .I1(\op_reg[8]_LDC_n_0 ),
        .I2(\op_reg[8]_C_n_0 ),
        .O(op[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[9]_i_1 
       (.I0(\op_reg[9]_P_n_0 ),
        .I1(\op_reg[9]_LDC_n_0 ),
        .I2(\op_reg[9]_C_n_0 ),
        .O(op[9]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[0]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[0]_C_0 ),
        .D(p_0_out__0),
        .Q(\op_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[0]_LDC 
       (.CLR(\op_reg[0]_C_0 ),
        .D(1'b1),
        .G(\op_reg[0]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[0]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \op_reg[0]_LDC_i_3 
       (.I0(SW_IBUF[2]),
        .I1(SW_IBUF[14]),
        .I2(SW_IBUF[9]),
        .I3(SW_IBUF[10]),
        .I4(SW_IBUF[8]),
        .O(\SW[12] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \op_reg[0]_LDC_i_4 
       (.I0(SW_IBUF[11]),
        .I1(SW_IBUF[3]),
        .I2(SW_IBUF[5]),
        .I3(SW_IBUF[7]),
        .O(\SW[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \op_reg[0]_LDC_i_5 
       (.I0(SW_IBUF[12]),
        .I1(SW_IBUF[0]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[13]),
        .I4(SW_IBUF[4]),
        .I5(SW_IBUF[6]),
        .O(\SW[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[0]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0),
        .PRE(\op_reg[0]_P_0 ),
        .Q(\op_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[10]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[10]_C_0 ),
        .D(op[9]),
        .Q(\op_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[10]_LDC 
       (.CLR(\op_reg[10]_C_0 ),
        .D(1'b1),
        .G(\op_reg[10]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[10]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[10]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[9]),
        .PRE(\op_reg[10]_P_0 ),
        .Q(\op_reg[10]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[11]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[11]_C_0 ),
        .D(op[10]),
        .Q(\op_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[11]_LDC 
       (.CLR(\op_reg[11]_C_0 ),
        .D(1'b1),
        .G(\op_reg[11]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[11]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[11]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[10]),
        .PRE(\op_reg[11]_P_0 ),
        .Q(\op_reg[11]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[12]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[12]_C_0 ),
        .D(op[11]),
        .Q(\op_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[12]_LDC 
       (.CLR(\op_reg[12]_C_0 ),
        .D(1'b1),
        .G(\op_reg[12]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[12]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[12]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[11]),
        .PRE(\op_reg[12]_P_0 ),
        .Q(\op_reg[12]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[13]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[13]_C_0 ),
        .D(op[12]),
        .Q(\op_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[13]_LDC 
       (.CLR(\op_reg[13]_C_0 ),
        .D(1'b1),
        .G(\op_reg[13]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[13]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[13]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[12]),
        .PRE(\op_reg[13]_P_0 ),
        .Q(\op_reg[13]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[14]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[14]_C_0 ),
        .D(op[13]),
        .Q(\op_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[14]_LDC 
       (.CLR(\op_reg[14]_C_0 ),
        .D(1'b1),
        .G(\op_reg[14]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[14]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[14]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[13]),
        .PRE(\op_reg[14]_P_0 ),
        .Q(\op_reg[14]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[15]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[15]_C_0 ),
        .D(op[14]),
        .Q(\op_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[15]_LDC 
       (.CLR(\op_reg[15]_C_0 ),
        .D(1'b1),
        .G(\op_reg[15]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[15]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[15]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[14]),
        .PRE(\op_reg[15]_P_0 ),
        .Q(\op_reg[15]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[1]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[1]_C_0 ),
        .D(op[0]),
        .Q(\op_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[1]_LDC 
       (.CLR(\op_reg[1]_C_0 ),
        .D(1'b1),
        .G(\op_reg[1]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[1]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[1]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[0]),
        .PRE(\op_reg[1]_P_0 ),
        .Q(\op_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[2]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[2]_C_0 ),
        .D(op[1]),
        .Q(\op_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[2]_LDC 
       (.CLR(\op_reg[2]_C_0 ),
        .D(1'b1),
        .G(\op_reg[2]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[2]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[2]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[1]),
        .PRE(\op_reg[2]_P_0 ),
        .Q(\op_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[3]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[3]_C_0 ),
        .D(op[2]),
        .Q(\op_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[3]_LDC 
       (.CLR(\op_reg[3]_C_0 ),
        .D(1'b1),
        .G(\op_reg[3]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[3]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[3]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[2]),
        .PRE(\op_reg[3]_P_0 ),
        .Q(\op_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[4]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[4]_C_0 ),
        .D(op[3]),
        .Q(\op_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[4]_LDC 
       (.CLR(\op_reg[4]_C_0 ),
        .D(1'b1),
        .G(\op_reg[4]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[4]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[4]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[3]),
        .PRE(\op_reg[4]_P_0 ),
        .Q(\op_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[5]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[5]_C_0 ),
        .D(op[4]),
        .Q(\op_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[5]_LDC 
       (.CLR(\op_reg[5]_C_0 ),
        .D(1'b1),
        .G(\op_reg[5]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[5]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[5]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[4]),
        .PRE(\op_reg[5]_P_0 ),
        .Q(\op_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[6]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[6]_C_0 ),
        .D(op[5]),
        .Q(\op_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[6]_LDC 
       (.CLR(\op_reg[6]_C_0 ),
        .D(1'b1),
        .G(\op_reg[6]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[6]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[6]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[5]),
        .PRE(\op_reg[6]_P_0 ),
        .Q(\op_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[7]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[7]_C_0 ),
        .D(op[6]),
        .Q(\op_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[7]_LDC 
       (.CLR(\op_reg[7]_C_0 ),
        .D(1'b1),
        .G(\op_reg[7]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[7]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[7]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[6]),
        .PRE(\op_reg[7]_P_0 ),
        .Q(\op_reg[7]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[8]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[8]_C_0 ),
        .D(op[7]),
        .Q(\op_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[8]_LDC 
       (.CLR(\op_reg[8]_C_0 ),
        .D(1'b1),
        .G(\op_reg[8]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[8]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[8]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[7]),
        .PRE(\op_reg[8]_P_0 ),
        .Q(\op_reg[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[9]_C 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\op_reg[9]_C_0 ),
        .D(op[8]),
        .Q(\op_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \op_reg[9]_LDC 
       (.CLR(\op_reg[9]_C_0 ),
        .D(1'b1),
        .G(\op_reg[9]_P_0 ),
        .GE(1'b1),
        .Q(\op_reg[9]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \op_reg[9]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(op[8]),
        .PRE(\op_reg[9]_P_0 ),
        .Q(\op_reg[9]_P_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    p_0_out
       (.I0(op[12]),
        .I1(op[13]),
        .I2(\op_reg[15]_P_n_0 ),
        .I3(\op_reg[15]_LDC_n_0 ),
        .I4(\op_reg[15]_C_n_0 ),
        .I5(op[10]),
        .O(p_0_out__0));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_i_1
       (.I0(\op_reg[12]_P_n_0 ),
        .I1(\op_reg[12]_LDC_n_0 ),
        .I2(\op_reg[12]_C_n_0 ),
        .O(op[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_i_2
       (.I0(\op_reg[13]_P_n_0 ),
        .I1(\op_reg[13]_LDC_n_0 ),
        .I2(\op_reg[13]_C_n_0 ),
        .O(op[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_i_3
       (.I0(\op_reg[10]_P_n_0 ),
        .I1(\op_reg[10]_LDC_n_0 ),
        .I2(\op_reg[10]_C_n_0 ),
        .O(op[10]));
endmodule

module Registro_param
   (pulse_out_reg,
    pin_out_blue_OBUF,
    pin_out_yellow_OBUF,
    pin_out_green_OBUF,
    pin_out_red_OBUF,
    \count_reg[3] ,
    \count_reg[3]_0 ,
    \count_reg[3]_1 ,
    en_mux_comp_mef,
    Q,
    processed_red_button,
    processed_blue_button,
    processed_yellow_button,
    flag_k_mef,
    pin_out_blue,
    rst_round_counter_mef,
    E,
    D,
    CLK);
  output pulse_out_reg;
  output pin_out_blue_OBUF;
  output pin_out_yellow_OBUF;
  output pin_out_green_OBUF;
  output pin_out_red_OBUF;
  input \count_reg[3] ;
  input \count_reg[3]_0 ;
  input \count_reg[3]_1 ;
  input en_mux_comp_mef;
  input [2:0]Q;
  input processed_red_button;
  input processed_blue_button;
  input processed_yellow_button;
  input flag_k_mef;
  input pin_out_blue;
  input rst_round_counter_mef;
  input [0:0]E;
  input [15:0]D;
  input CLK;

  wire CLK;
  wire [15:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \count_reg[3] ;
  wire \count_reg[3]_0 ;
  wire \count_reg[3]_1 ;
  wire [0:0]data0;
  wire [0:0]data1;
  wire [0:0]data2;
  wire [0:0]data3;
  wire [0:0]data4;
  wire [0:0]data5;
  wire [0:0]data6;
  wire [0:0]data7;
  wire \data_out_reg_n_0_[0] ;
  wire \data_out_reg_n_0_[10] ;
  wire \data_out_reg_n_0_[12] ;
  wire \data_out_reg_n_0_[14] ;
  wire \data_out_reg_n_0_[2] ;
  wire \data_out_reg_n_0_[4] ;
  wire \data_out_reg_n_0_[6] ;
  wire \data_out_reg_n_0_[8] ;
  wire en_mux_comp_mef;
  wire flag_k_mef;
  wire pin_out_blue;
  wire pin_out_blue_OBUF;
  wire pin_out_green_OBUF;
  wire pin_out_red_OBUF;
  wire pin_out_red_OBUF_inst_i_2_n_0;
  wire pin_out_red_OBUF_inst_i_3_n_0;
  wire pin_out_red_OBUF_inst_i_5_n_0;
  wire pin_out_red_OBUF_inst_i_6_n_0;
  wire pin_out_red_OBUF_inst_i_7_n_0;
  wire pin_out_red_OBUF_inst_i_8_n_0;
  wire pin_out_red_OBUF_inst_i_9_n_0;
  wire pin_out_yellow_OBUF;
  wire processed_blue_button;
  wire processed_red_button;
  wire processed_yellow_button;
  wire pulse_out_reg;
  wire rst_round_counter_mef;

  LUT5 #(
    .INIT(32'hAA2828AA)) 
    \FSM_sequential_curr_state[2]_i_2 
       (.I0(\count_reg[3] ),
        .I1(pin_out_red_OBUF_inst_i_2_n_0),
        .I2(\count_reg[3]_0 ),
        .I3(pin_out_red_OBUF_inst_i_7_n_0),
        .I4(\count_reg[3]_1 ),
        .O(pulse_out_reg));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\data_out_reg_n_0_[0] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(\data_out_reg_n_0_[10] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(data2),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .Q(\data_out_reg_n_0_[12] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .Q(data1),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .Q(\data_out_reg_n_0_[14] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .Q(data0),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(data7),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\data_out_reg_n_0_[2] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(data6),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(\data_out_reg_n_0_[4] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(data5),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(\data_out_reg_n_0_[6] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(data4),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(\data_out_reg_n_0_[8] ),
        .R(rst_round_counter_mef));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(data3),
        .R(rst_round_counter_mef));
  LUT6 #(
    .INIT(64'h00000000FEAA0000)) 
    pin_out_blue_OBUF_inst_i_1
       (.I0(pin_out_red_OBUF_inst_i_2_n_0),
        .I1(processed_yellow_button),
        .I2(processed_blue_button),
        .I3(flag_k_mef),
        .I4(pin_out_red_OBUF_inst_i_3_n_0),
        .I5(pin_out_blue),
        .O(pin_out_blue_OBUF));
  LUT6 #(
    .INIT(64'h0000000001550000)) 
    pin_out_green_OBUF_inst_i_1
       (.I0(pin_out_red_OBUF_inst_i_2_n_0),
        .I1(processed_yellow_button),
        .I2(processed_blue_button),
        .I3(flag_k_mef),
        .I4(pin_out_red_OBUF_inst_i_3_n_0),
        .I5(pin_out_blue),
        .O(pin_out_green_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000155)) 
    pin_out_red_OBUF_inst_i_1
       (.I0(pin_out_red_OBUF_inst_i_2_n_0),
        .I1(processed_yellow_button),
        .I2(processed_blue_button),
        .I3(flag_k_mef),
        .I4(pin_out_red_OBUF_inst_i_3_n_0),
        .I5(pin_out_blue),
        .O(pin_out_red_OBUF));
  LUT4 #(
    .INIT(16'hA808)) 
    pin_out_red_OBUF_inst_i_2
       (.I0(en_mux_comp_mef),
        .I1(pin_out_red_OBUF_inst_i_5_n_0),
        .I2(Q[2]),
        .I3(pin_out_red_OBUF_inst_i_6_n_0),
        .O(pin_out_red_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h00A2AAAA)) 
    pin_out_red_OBUF_inst_i_3
       (.I0(pin_out_red_OBUF_inst_i_7_n_0),
        .I1(processed_red_button),
        .I2(processed_blue_button),
        .I3(processed_yellow_button),
        .I4(flag_k_mef),
        .O(pin_out_red_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pin_out_red_OBUF_inst_i_5
       (.I0(data3),
        .I1(data2),
        .I2(Q[1]),
        .I3(data1),
        .I4(Q[0]),
        .I5(data0),
        .O(pin_out_red_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pin_out_red_OBUF_inst_i_6
       (.I0(data7),
        .I1(data6),
        .I2(Q[1]),
        .I3(data5),
        .I4(Q[0]),
        .I5(data4),
        .O(pin_out_red_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    pin_out_red_OBUF_inst_i_7
       (.I0(en_mux_comp_mef),
        .I1(pin_out_red_OBUF_inst_i_8_n_0),
        .I2(Q[2]),
        .I3(pin_out_red_OBUF_inst_i_9_n_0),
        .O(pin_out_red_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pin_out_red_OBUF_inst_i_8
       (.I0(\data_out_reg_n_0_[8] ),
        .I1(\data_out_reg_n_0_[10] ),
        .I2(Q[1]),
        .I3(\data_out_reg_n_0_[12] ),
        .I4(Q[0]),
        .I5(\data_out_reg_n_0_[14] ),
        .O(pin_out_red_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pin_out_red_OBUF_inst_i_9
       (.I0(\data_out_reg_n_0_[0] ),
        .I1(\data_out_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\data_out_reg_n_0_[4] ),
        .I4(Q[0]),
        .I5(\data_out_reg_n_0_[6] ),
        .O(pin_out_red_OBUF_inst_i_9_n_0));
  LUT6 #(
    .INIT(64'h000000000000FEAA)) 
    pin_out_yellow_OBUF_inst_i_1
       (.I0(pin_out_red_OBUF_inst_i_2_n_0),
        .I1(processed_yellow_button),
        .I2(processed_blue_button),
        .I3(flag_k_mef),
        .I4(pin_out_red_OBUF_inst_i_3_n_0),
        .I5(pin_out_blue),
        .O(pin_out_yellow_OBUF));
endmodule

(* NotValidForBitStream *)
module TOP
   (main_clk,
    btnC_start,
    btnL_blue,
    btnU_green,
    btnR_red,
    btnD_yellow,
    SW,
    pin_out_red,
    pin_out_green,
    pin_out_blue,
    pin_out_yellow);
  input main_clk;
  input btnC_start;
  input btnL_blue;
  input btnU_green;
  input btnR_red;
  input btnD_yellow;
  input [0:15]SW;
  output pin_out_red;
  output pin_out_green;
  output pin_out_blue;
  output pin_out_yellow;

  wire LSFR_n_16;
  wire LSFR_n_17;
  wire LSFR_n_18;
  wire [0:15]SW;
  wire [0:15]SW_IBUF;
  wire btnC_start;
  wire btnC_start_IBUF;
  wire btnD_yellow;
  wire btnD_yellow_IBUF;
  wire btnL_blue;
  wire btnL_blue_IBUF;
  wire btnR_red;
  wire btnR_red_IBUF;
  wire btnU_green;
  wire btnU_green_IBUF;
  wire clk;
  wire clk_BUFG;
  wire computer_moves_reg_n_0;
  wire [0:0]curr_state;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire en_comp_reg_mef;
  wire en_lose_music_mef;
  wire en_mux_comp_mef;
  wire en_win_music_mef;
  wire flag_k_mef;
  wire [3:0]indx_count;
  wire main_clk;
  wire main_clk_IBUF;
  wire main_clk_IBUF_BUFG;
  wire medley_counter_n_0;
  wire [15:0]op;
  wire pin_out_blue;
  wire pin_out_blue_OBUF;
  wire pin_out_green;
  wire pin_out_green_OBUF;
  wire pin_out_red;
  wire pin_out_red_OBUF;
  wire pin_out_yellow;
  wire pin_out_yellow_OBUF;
  wire por_inst_n_1;
  wire por_inst_n_10;
  wire por_inst_n_11;
  wire por_inst_n_12;
  wire por_inst_n_13;
  wire por_inst_n_14;
  wire por_inst_n_15;
  wire por_inst_n_16;
  wire por_inst_n_17;
  wire por_inst_n_18;
  wire por_inst_n_19;
  wire por_inst_n_2;
  wire por_inst_n_20;
  wire por_inst_n_21;
  wire por_inst_n_22;
  wire por_inst_n_23;
  wire por_inst_n_24;
  wire por_inst_n_25;
  wire por_inst_n_26;
  wire por_inst_n_27;
  wire por_inst_n_28;
  wire por_inst_n_29;
  wire por_inst_n_3;
  wire por_inst_n_30;
  wire por_inst_n_31;
  wire por_inst_n_32;
  wire por_inst_n_33;
  wire por_inst_n_4;
  wire por_inst_n_5;
  wire por_inst_n_6;
  wire por_inst_n_7;
  wire por_inst_n_8;
  wire por_inst_n_9;
  wire processed_blue_button;
  wire processed_green_button;
  wire processed_red_button;
  wire processed_start_button;
  wire processed_yellow_button;
  wire processing_blue_btn_n_1;
  wire pulse;
  wire round_counter_n_0;
  wire round_counter_n_1;
  wire rst_global;
  wire rst_round_counter_mef;

  LFSR_16bit LSFR
       (.CLK(clk_BUFG),
        .\SW[12] (LSFR_n_16),
        .\SW[2] (LSFR_n_17),
        .\SW[3] (LSFR_n_18),
        .SW_IBUF({SW_IBUF[0],SW_IBUF[1],SW_IBUF[2],SW_IBUF[3],SW_IBUF[4],SW_IBUF[5],SW_IBUF[6],SW_IBUF[7],SW_IBUF[8],SW_IBUF[9],SW_IBUF[10],SW_IBUF[11],SW_IBUF[12],SW_IBUF[13],SW_IBUF[14]}),
        .op(op),
        .\op_reg[0]_C_0 (por_inst_n_33),
        .\op_reg[0]_P_0 (por_inst_n_32),
        .\op_reg[10]_C_0 (por_inst_n_13),
        .\op_reg[10]_P_0 (por_inst_n_12),
        .\op_reg[11]_C_0 (por_inst_n_11),
        .\op_reg[11]_P_0 (por_inst_n_10),
        .\op_reg[12]_C_0 (por_inst_n_9),
        .\op_reg[12]_P_0 (por_inst_n_8),
        .\op_reg[13]_C_0 (por_inst_n_7),
        .\op_reg[13]_P_0 (por_inst_n_6),
        .\op_reg[14]_C_0 (por_inst_n_5),
        .\op_reg[14]_P_0 (por_inst_n_4),
        .\op_reg[15]_C_0 (por_inst_n_3),
        .\op_reg[15]_P_0 (por_inst_n_2),
        .\op_reg[1]_C_0 (por_inst_n_31),
        .\op_reg[1]_P_0 (por_inst_n_30),
        .\op_reg[2]_C_0 (por_inst_n_29),
        .\op_reg[2]_P_0 (por_inst_n_28),
        .\op_reg[3]_C_0 (por_inst_n_27),
        .\op_reg[3]_P_0 (por_inst_n_26),
        .\op_reg[4]_C_0 (por_inst_n_25),
        .\op_reg[4]_P_0 (por_inst_n_24),
        .\op_reg[5]_C_0 (por_inst_n_23),
        .\op_reg[5]_P_0 (por_inst_n_22),
        .\op_reg[6]_C_0 (por_inst_n_21),
        .\op_reg[6]_P_0 (por_inst_n_20),
        .\op_reg[7]_C_0 (por_inst_n_19),
        .\op_reg[7]_P_0 (por_inst_n_18),
        .\op_reg[8]_C_0 (por_inst_n_17),
        .\op_reg[8]_P_0 (por_inst_n_16),
        .\op_reg[9]_C_0 (por_inst_n_15),
        .\op_reg[9]_P_0 (por_inst_n_14));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[10]_inst 
       (.I(SW[10]),
        .O(SW_IBUF[10]));
  IBUF \SW_IBUF[11]_inst 
       (.I(SW[11]),
        .O(SW_IBUF[11]));
  IBUF \SW_IBUF[12]_inst 
       (.I(SW[12]),
        .O(SW_IBUF[12]));
  IBUF \SW_IBUF[13]_inst 
       (.I(SW[13]),
        .O(SW_IBUF[13]));
  IBUF \SW_IBUF[14]_inst 
       (.I(SW[14]),
        .O(SW_IBUF[14]));
  IBUF \SW_IBUF[15]_inst 
       (.I(SW[15]),
        .O(SW_IBUF[15]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  IBUF \SW_IBUF[8]_inst 
       (.I(SW[8]),
        .O(SW_IBUF[8]));
  IBUF \SW_IBUF[9]_inst 
       (.I(SW[9]),
        .O(SW_IBUF[9]));
  IBUF btnC_start_IBUF_inst
       (.I(btnC_start),
        .O(btnC_start_IBUF));
  IBUF btnD_yellow_IBUF_inst
       (.I(btnD_yellow),
        .O(btnD_yellow_IBUF));
  IBUF btnL_blue_IBUF_inst
       (.I(btnL_blue),
        .O(btnL_blue_IBUF));
  IBUF btnR_red_IBUF_inst
       (.I(btnR_red),
        .O(btnR_red_IBUF));
  IBUF btnU_green_IBUF_inst
       (.I(btnU_green),
        .O(btnU_green_IBUF));
  frec_divider_param clk_1hz
       (.CLK(main_clk_IBUF_BUFG),
        .clk(clk),
        .\counter_reg[0]_0 (por_inst_n_1),
        .pulse(pulse),
        .rst_global(rst_global));
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  Registro_param computer_moves_reg
       (.CLK(main_clk_IBUF_BUFG),
        .D(op),
        .E(en_comp_reg_mef),
        .Q(indx_count[2:0]),
        .\count_reg[3] (processing_blue_btn_n_1),
        .\count_reg[3]_0 (dut_n_8),
        .\count_reg[3]_1 (dut_n_9),
        .en_mux_comp_mef(en_mux_comp_mef),
        .flag_k_mef(flag_k_mef),
        .pin_out_blue(dut_n_7),
        .pin_out_blue_OBUF(pin_out_blue_OBUF),
        .pin_out_green_OBUF(pin_out_green_OBUF),
        .pin_out_red_OBUF(pin_out_red_OBUF),
        .pin_out_yellow_OBUF(pin_out_yellow_OBUF),
        .processed_blue_button(processed_blue_button),
        .processed_red_button(processed_red_button),
        .processed_yellow_button(processed_yellow_button),
        .pulse_out_reg(computer_moves_reg_n_0),
        .rst_round_counter_mef(rst_round_counter_mef));
  FSM dut
       (.CLK(main_clk_IBUF_BUFG),
        .E(en_comp_reg_mef),
        .\FSM_sequential_curr_state_reg[0]_0 (curr_state),
        .\FSM_sequential_curr_state_reg[2]_0 (computer_moves_reg_n_0),
        .\FSM_sequential_curr_state_reg[2]_1 (round_counter_n_1),
        .\FSM_sequential_curr_state_reg[2]_2 (round_counter_n_0),
        .en_lose_music_mef(en_lose_music_mef),
        .en_mux_comp_mef(en_mux_comp_mef),
        .en_win_music_mef(en_win_music_mef),
        .flag_k_mef(flag_k_mef),
        .processed_blue_button(processed_blue_button),
        .processed_green_button(processed_green_button),
        .processed_red_button(processed_red_button),
        .processed_start_button(processed_start_button),
        .processed_yellow_button(processed_yellow_button),
        .pulse_out_reg(dut_n_6),
        .pulse_out_reg_0(dut_n_7),
        .pulse_out_reg_1(dut_n_8),
        .pulse_out_reg_2(dut_n_9),
        .rst_global(rst_global),
        .rst_round_counter_mef(rst_round_counter_mef));
  UpCounter indx_counter
       (.CLK(clk_BUFG),
        .E(dut_n_6),
        .Q(indx_count),
        .rst_global(rst_global));
  BUFG main_clk_IBUF_BUFG_inst
       (.I(main_clk_IBUF),
        .O(main_clk_IBUF_BUFG));
  IBUF main_clk_IBUF_inst
       (.I(main_clk),
        .O(main_clk_IBUF));
  UpCounter__parameterized1 medley_counter
       (.CLK(clk_BUFG),
        .\count_reg[0]_0 (medley_counter_n_0),
        .en_lose_music_mef(en_lose_music_mef),
        .en_win_music_mef(en_win_music_mef),
        .rst_round_counter_mef(rst_round_counter_mef));
  OBUF pin_out_blue_OBUF_inst
       (.I(pin_out_blue_OBUF),
        .O(pin_out_blue));
  OBUF pin_out_green_OBUF_inst
       (.I(pin_out_green_OBUF),
        .O(pin_out_green));
  OBUF pin_out_red_OBUF_inst
       (.I(pin_out_red_OBUF),
        .O(pin_out_red));
  OBUF pin_out_yellow_OBUF_inst
       (.I(pin_out_yellow_OBUF),
        .O(pin_out_yellow));
  power_on_reset por_inst
       (.CLK(main_clk_IBUF_BUFG),
        .SW_IBUF(SW_IBUF),
        .\op_reg[0]_P (LSFR_n_16),
        .\op_reg[0]_P_0 (LSFR_n_18),
        .\op_reg[0]_P_1 (LSFR_n_17),
        .pulse(pulse),
        .rst_global(rst_global),
        .rst_reg_0(por_inst_n_1),
        .rst_reg_1(por_inst_n_2),
        .rst_reg_10(por_inst_n_11),
        .rst_reg_11(por_inst_n_12),
        .rst_reg_12(por_inst_n_13),
        .rst_reg_13(por_inst_n_14),
        .rst_reg_14(por_inst_n_15),
        .rst_reg_15(por_inst_n_16),
        .rst_reg_16(por_inst_n_17),
        .rst_reg_17(por_inst_n_18),
        .rst_reg_18(por_inst_n_19),
        .rst_reg_19(por_inst_n_20),
        .rst_reg_2(por_inst_n_3),
        .rst_reg_20(por_inst_n_21),
        .rst_reg_21(por_inst_n_22),
        .rst_reg_22(por_inst_n_23),
        .rst_reg_23(por_inst_n_24),
        .rst_reg_24(por_inst_n_25),
        .rst_reg_25(por_inst_n_26),
        .rst_reg_26(por_inst_n_27),
        .rst_reg_27(por_inst_n_28),
        .rst_reg_28(por_inst_n_29),
        .rst_reg_29(por_inst_n_30),
        .rst_reg_3(por_inst_n_4),
        .rst_reg_30(por_inst_n_31),
        .rst_reg_31(por_inst_n_32),
        .rst_reg_32(por_inst_n_33),
        .rst_reg_4(por_inst_n_5),
        .rst_reg_5(por_inst_n_6),
        .rst_reg_6(por_inst_n_7),
        .rst_reg_7(por_inst_n_8),
        .rst_reg_8(por_inst_n_9),
        .rst_reg_9(por_inst_n_10));
  button_processing processing_blue_btn
       (.CLK(main_clk_IBUF_BUFG),
        .btnL_blue_IBUF(btnL_blue_IBUF),
        .flag_k_mef(flag_k_mef),
        .processed_blue_button(processed_blue_button),
        .processed_green_button(processed_green_button),
        .processed_red_button(processed_red_button),
        .processed_yellow_button(processed_yellow_button),
        .pulse_out_reg(processing_blue_btn_n_1),
        .rst_global(rst_global));
  button_processing_0 processing_green_btn
       (.CLK(main_clk_IBUF_BUFG),
        .btnU_green_IBUF(btnU_green_IBUF),
        .processed_green_button(processed_green_button),
        .rst_global(rst_global));
  button_processing_1 processing_red_btn
       (.CLK(main_clk_IBUF_BUFG),
        .btnR_red_IBUF(btnR_red_IBUF),
        .processed_red_button(processed_red_button),
        .rst_global(rst_global));
  button_processing_2 processing_start_btn
       (.CLK(main_clk_IBUF_BUFG),
        .btnC_start_IBUF(btnC_start_IBUF),
        .processed_start_button(processed_start_button),
        .rst_global(rst_global));
  button_processing_3 processing_yellow_btn
       (.CLK(main_clk_IBUF_BUFG),
        .btnD_yellow_IBUF(btnD_yellow_IBUF),
        .processed_yellow_button(processed_yellow_button),
        .rst_global(rst_global));
  UpCounter__parameterized0 round_counter
       (.CLK(clk_BUFG),
        .\FSM_sequential_curr_state_reg[0] (round_counter_n_1),
        .\FSM_sequential_curr_state_reg[2] (curr_state),
        .Q(indx_count),
        .\count_reg[2]_0 (round_counter_n_0),
        .\count_reg[3]_0 (computer_moves_reg_n_0),
        .\count_reg[3]_1 (medley_counter_n_0),
        .rst_round_counter_mef(rst_round_counter_mef));
endmodule

module UpCounter
   (Q,
    rst_global,
    E,
    CLK);
  output [3:0]Q;
  input rst_global;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire \count[3]_i_1_n_0 ;
  wire [3:0]p_0_in;
  wire rst_global;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \count[3]_i_1 
       (.I0(rst_global),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(E),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(\count[3]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "UpCounter" *) 
module UpCounter__parameterized0
   (\count_reg[2]_0 ,
    \FSM_sequential_curr_state_reg[0] ,
    rst_round_counter_mef,
    \count_reg[3]_0 ,
    Q,
    \count_reg[3]_1 ,
    \FSM_sequential_curr_state_reg[2] ,
    CLK);
  output \count_reg[2]_0 ;
  output \FSM_sequential_curr_state_reg[0] ;
  input rst_round_counter_mef;
  input \count_reg[3]_0 ;
  input [3:0]Q;
  input \count_reg[3]_1 ;
  input [0:0]\FSM_sequential_curr_state_reg[2] ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state[2]_i_8_n_0 ;
  wire \FSM_sequential_curr_state_reg[0] ;
  wire [0:0]\FSM_sequential_curr_state_reg[2] ;
  wire [3:0]Q;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[3]_0 ;
  wire \count_reg[3]_1 ;
  wire en0;
  wire [3:1]p_0_in__0;
  wire [3:0]round_count;
  wire rst_round_counter_mef;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h55555545)) 
    \FSM_sequential_curr_state[2]_i_3 
       (.I0(\FSM_sequential_curr_state_reg[2] ),
        .I1(round_count[2]),
        .I2(round_count[3]),
        .I3(round_count[1]),
        .I4(round_count[0]),
        .O(\FSM_sequential_curr_state_reg[0] ));
  LUT6 #(
    .INIT(64'hB0FF00B0FFFFFFFF)) 
    \FSM_sequential_curr_state[2]_i_4 
       (.I0(round_count[2]),
        .I1(Q[2]),
        .I2(\FSM_sequential_curr_state[2]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(round_count[3]),
        .I5(\count_reg[3]_1 ),
        .O(\count_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hBF0BFFFFBF0BBF0B)) 
    \FSM_sequential_curr_state[2]_i_8 
       (.I0(round_count[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(round_count[1]),
        .I4(Q[2]),
        .I5(round_count[2]),
        .O(\FSM_sequential_curr_state[2]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(round_count[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(round_count[1]),
        .I1(round_count[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(round_count[2]),
        .I1(round_count[0]),
        .I2(round_count[1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'hABAA)) 
    \count[3]_i_1__0 
       (.I0(rst_round_counter_mef),
        .I1(\count_reg[2]_0 ),
        .I2(\count_reg[3]_0 ),
        .I3(round_count[3]),
        .O(\count[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[3]_i_2__0 
       (.I0(\count_reg[2]_0 ),
        .I1(\count_reg[3]_0 ),
        .O(en0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_3__0 
       (.I0(round_count[3]),
        .I1(round_count[1]),
        .I2(round_count[0]),
        .I3(round_count[2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(en0),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(round_count[0]),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(en0),
        .D(p_0_in__0[1]),
        .Q(round_count[1]),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(en0),
        .D(p_0_in__0[2]),
        .Q(round_count[2]),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(en0),
        .D(p_0_in__0[3]),
        .Q(round_count[3]),
        .R(\count[3]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "UpCounter" *) 
module UpCounter__parameterized1
   (\count_reg[0]_0 ,
    en_win_music_mef,
    en_lose_music_mef,
    rst_round_counter_mef,
    CLK);
  output \count_reg[0]_0 ;
  input en_win_music_mef;
  input en_lose_music_mef;
  input rst_round_counter_mef;
  input CLK;

  wire CLK;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count_reg[0]_0 ;
  wire en_lose_music_mef;
  wire en_win_music_mef;
  wire [1:0]medley_count;
  wire rst_round_counter_mef;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_curr_state[2]_i_9 
       (.I0(medley_count[0]),
        .I1(medley_count[1]),
        .O(\count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0056)) 
    \count[0]_i_1 
       (.I0(medley_count[0]),
        .I1(en_win_music_mef),
        .I2(en_lose_music_mef),
        .I3(rst_round_counter_mef),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000666A)) 
    \count[1]_i_1 
       (.I0(medley_count[1]),
        .I1(medley_count[0]),
        .I2(en_win_music_mef),
        .I3(en_lose_music_mef),
        .I4(rst_round_counter_mef),
        .O(\count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(medley_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(medley_count[1]),
        .R(1'b0));
endmodule

module button_processing
   (processed_blue_button,
    pulse_out_reg,
    rst_global,
    CLK,
    btnL_blue_IBUF,
    processed_green_button,
    processed_yellow_button,
    processed_red_button,
    flag_k_mef);
  output processed_blue_button;
  output pulse_out_reg;
  input rst_global;
  input CLK;
  input btnL_blue_IBUF;
  input processed_green_button;
  input processed_yellow_button;
  input processed_red_button;
  input flag_k_mef;

  wire CLK;
  wire btnL_blue_IBUF;
  wire button_clean;
  wire flag_k_mef;
  wire processed_blue_button;
  wire processed_green_button;
  wire processed_red_button;
  wire processed_yellow_button;
  wire pulse_out_reg;
  wire rst_global;

  debouncer_10 u_debouncer
       (.CLK(CLK),
        .btnL_blue_IBUF(btnL_blue_IBUF),
        .button_clean(button_clean),
        .rst_global(rst_global));
  oneshot_11 u_oneshot
       (.CLK(CLK),
        .button_clean(button_clean),
        .flag_k_mef(flag_k_mef),
        .processed_blue_button(processed_blue_button),
        .processed_green_button(processed_green_button),
        .processed_red_button(processed_red_button),
        .processed_yellow_button(processed_yellow_button),
        .pulse_out_reg_0(pulse_out_reg),
        .rst_global(rst_global));
endmodule

(* ORIG_REF_NAME = "button_processing" *) 
module button_processing_0
   (processed_green_button,
    rst_global,
    CLK,
    btnU_green_IBUF);
  output processed_green_button;
  input rst_global;
  input CLK;
  input btnU_green_IBUF;

  wire CLK;
  wire btnU_green_IBUF;
  wire button_clean;
  wire processed_green_button;
  wire rst_global;

  debouncer_8 u_debouncer
       (.CLK(CLK),
        .btnU_green_IBUF(btnU_green_IBUF),
        .button_clean(button_clean),
        .rst_global(rst_global));
  oneshot_9 u_oneshot
       (.CLK(CLK),
        .button_clean(button_clean),
        .processed_green_button(processed_green_button),
        .rst_global(rst_global));
endmodule

(* ORIG_REF_NAME = "button_processing" *) 
module button_processing_1
   (processed_red_button,
    btnR_red_IBUF,
    CLK,
    rst_global);
  output processed_red_button;
  input btnR_red_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnR_red_IBUF;
  wire button_clean;
  wire processed_red_button;
  wire rst_global;

  debouncer_6 u_debouncer
       (.CLK(CLK),
        .btnR_red_IBUF(btnR_red_IBUF),
        .button_clean(button_clean),
        .rst_global(rst_global));
  oneshot_7 u_oneshot
       (.CLK(CLK),
        .button_clean(button_clean),
        .processed_red_button(processed_red_button),
        .rst_global(rst_global));
endmodule

(* ORIG_REF_NAME = "button_processing" *) 
module button_processing_2
   (processed_start_button,
    btnC_start_IBUF,
    CLK,
    rst_global);
  output processed_start_button;
  input btnC_start_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnC_start_IBUF;
  wire button_clean;
  wire processed_start_button;
  wire rst_global;

  debouncer_4 u_debouncer
       (.CLK(CLK),
        .btnC_start_IBUF(btnC_start_IBUF),
        .button_clean(button_clean),
        .rst_global(rst_global));
  oneshot_5 u_oneshot
       (.CLK(CLK),
        .button_clean(button_clean),
        .processed_start_button(processed_start_button),
        .rst_global(rst_global));
endmodule

(* ORIG_REF_NAME = "button_processing" *) 
module button_processing_3
   (processed_yellow_button,
    rst_global,
    CLK,
    btnD_yellow_IBUF);
  output processed_yellow_button;
  input rst_global;
  input CLK;
  input btnD_yellow_IBUF;

  wire CLK;
  wire btnD_yellow_IBUF;
  wire button_clean;
  wire processed_yellow_button;
  wire rst_global;

  debouncer u_debouncer
       (.CLK(CLK),
        .btnD_yellow_IBUF(btnD_yellow_IBUF),
        .button_clean(button_clean),
        .rst_global(rst_global));
  oneshot u_oneshot
       (.CLK(CLK),
        .button_clean(button_clean),
        .processed_yellow_button(processed_yellow_button),
        .rst_global(rst_global));
endmodule

module debouncer
   (button_clean,
    btnD_yellow_IBUF,
    CLK,
    rst_global);
  output button_clean;
  input btnD_yellow_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnD_yellow_IBUF;
  wire button_clean;
  wire button_out_i_1__2_n_0;
  wire button_sync_0_reg_n_0;
  wire button_sync_1_reg_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[10]_i_1__2_n_0 ;
  wire \counter[11]_i_1__2_n_0 ;
  wire \counter[12]_i_1__2_n_0 ;
  wire \counter[13]_i_1__2_n_0 ;
  wire \counter[14]_i_1__2_n_0 ;
  wire \counter[15]_i_1__2_n_0 ;
  wire \counter[16]_i_1__2_n_0 ;
  wire \counter[17]_i_1__2_n_0 ;
  wire \counter[18]_i_1__2_n_0 ;
  wire \counter[19]_i_1__2_n_0 ;
  wire \counter[1]_i_1__2_n_0 ;
  wire \counter[20]_i_1__2_n_0 ;
  wire \counter[20]_i_2__2_n_0 ;
  wire \counter[20]_i_3__2_n_0 ;
  wire \counter[20]_i_4__2_n_0 ;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter[3]_i_1__2_n_0 ;
  wire \counter[4]_i_1__2_n_0 ;
  wire \counter[5]_i_1__2_n_0 ;
  wire \counter[6]_i_1__2_n_0 ;
  wire \counter[7]_i_1__2_n_0 ;
  wire \counter[8]_i_1__2_n_0 ;
  wire \counter[9]_i_1__2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire rst_global;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    button_out_i_1__2
       (.I0(\counter[20]_i_2__2_n_0 ),
        .I1(button_clean),
        .I2(button_sync_1_reg_n_0),
        .O(button_out_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_out_i_1__2_n_0),
        .Q(button_clean));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_0_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(btnD_yellow_IBUF),
        .Q(button_sync_0_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_sync_0_reg_n_0),
        .Q(button_sync_1_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \counter[0]_i_1__2 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(button_sync_1_reg_n_0),
        .I2(button_clean),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[10]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_6),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[11]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_5),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[12]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_4),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[13]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_7),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[14]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_6),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[14]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[15]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_5),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[16]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_4),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[16]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[17]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_7),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[17]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[18]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_6),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[18]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[19]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_5),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[19]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[1]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_7),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[20]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_4),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[20]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \counter[20]_i_2__2 
       (.I0(\counter[20]_i_3__2_n_0 ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter_reg_n_0_[18] ),
        .I5(\counter_reg_n_0_[17] ),
        .O(\counter[20]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \counter[20]_i_3__2 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter[20]_i_4__2_n_0 ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[20]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[20]_i_4__2 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[20]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[2]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_6),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[3]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_5),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[4]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_4),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[5]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_7),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[6]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_6),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[7]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_5),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[8]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_4),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[9]_i_1__2 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_7),
        .I3(\counter[20]_i_2__2_n_0 ),
        .O(\counter[9]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[10]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[11]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[12]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[13]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[14]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[15]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[16]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[17]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[18]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[19]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[20]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[3]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[4]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[5]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[6]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[7]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[8]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[9]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_10
   (button_clean,
    btnL_blue_IBUF,
    CLK,
    rst_global);
  output button_clean;
  input btnL_blue_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnL_blue_IBUF;
  wire button_clean;
  wire button_out_i_1__1_n_0;
  wire button_sync_0_reg_n_0;
  wire button_sync_1_reg_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[10]_i_1__1_n_0 ;
  wire \counter[11]_i_1__1_n_0 ;
  wire \counter[12]_i_1__1_n_0 ;
  wire \counter[13]_i_1__1_n_0 ;
  wire \counter[14]_i_1__1_n_0 ;
  wire \counter[15]_i_1__1_n_0 ;
  wire \counter[16]_i_1__1_n_0 ;
  wire \counter[17]_i_1__1_n_0 ;
  wire \counter[18]_i_1__1_n_0 ;
  wire \counter[19]_i_1__1_n_0 ;
  wire \counter[1]_i_1__1_n_0 ;
  wire \counter[20]_i_1__1_n_0 ;
  wire \counter[20]_i_2__1_n_0 ;
  wire \counter[20]_i_3__1_n_0 ;
  wire \counter[20]_i_4__1_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter[3]_i_1__1_n_0 ;
  wire \counter[4]_i_1__1_n_0 ;
  wire \counter[5]_i_1__1_n_0 ;
  wire \counter[6]_i_1__1_n_0 ;
  wire \counter[7]_i_1__1_n_0 ;
  wire \counter[8]_i_1__1_n_0 ;
  wire \counter[9]_i_1__1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire rst_global;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    button_out_i_1__1
       (.I0(\counter[20]_i_2__1_n_0 ),
        .I1(button_clean),
        .I2(button_sync_1_reg_n_0),
        .O(button_out_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_out_i_1__1_n_0),
        .Q(button_clean));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_0_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(btnL_blue_IBUF),
        .Q(button_sync_0_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_sync_0_reg_n_0),
        .Q(button_sync_1_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(button_sync_1_reg_n_0),
        .I2(button_clean),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[10]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_6),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[11]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_5),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[12]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_4),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[13]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_7),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[14]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_6),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[15]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_5),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[16]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_4),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[16]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[17]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_7),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[17]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[18]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_6),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[18]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[19]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_5),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[19]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[1]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_7),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[20]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_4),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[20]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \counter[20]_i_2__1 
       (.I0(\counter[20]_i_3__1_n_0 ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter_reg_n_0_[18] ),
        .I5(\counter_reg_n_0_[17] ),
        .O(\counter[20]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \counter[20]_i_3__1 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter[20]_i_4__1_n_0 ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[20]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[20]_i_4__1 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[20]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[2]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_6),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[3]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_5),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[4]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_4),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[5]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_7),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[6]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_6),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[7]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_5),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[8]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_4),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[9]_i_1__1 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_7),
        .I3(\counter[20]_i_2__1_n_0 ),
        .O(\counter[9]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[10]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[11]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[12]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[13]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[14]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[15]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[16]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[17]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[18]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[19]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[20]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[3]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[4]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[5]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[6]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[7]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[8]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[9]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_4
   (button_clean,
    btnC_start_IBUF,
    CLK,
    rst_global);
  output button_clean;
  input btnC_start_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnC_start_IBUF;
  wire button_clean;
  wire button_out_i_1__3_n_0;
  wire button_sync_0_reg_n_0;
  wire button_sync_1_reg_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__3_n_0 ;
  wire \counter[10]_i_1__3_n_0 ;
  wire \counter[11]_i_1__3_n_0 ;
  wire \counter[12]_i_1__3_n_0 ;
  wire \counter[13]_i_1__3_n_0 ;
  wire \counter[14]_i_1__3_n_0 ;
  wire \counter[15]_i_1__3_n_0 ;
  wire \counter[16]_i_1__3_n_0 ;
  wire \counter[17]_i_1__3_n_0 ;
  wire \counter[18]_i_1__3_n_0 ;
  wire \counter[19]_i_1__3_n_0 ;
  wire \counter[1]_i_1__3_n_0 ;
  wire \counter[20]_i_1__3_n_0 ;
  wire \counter[20]_i_2__3_n_0 ;
  wire \counter[20]_i_3__3_n_0 ;
  wire \counter[20]_i_4__3_n_0 ;
  wire \counter[2]_i_1__3_n_0 ;
  wire \counter[3]_i_1__3_n_0 ;
  wire \counter[4]_i_1__3_n_0 ;
  wire \counter[5]_i_1__3_n_0 ;
  wire \counter[6]_i_1__3_n_0 ;
  wire \counter[7]_i_1__3_n_0 ;
  wire \counter[8]_i_1__3_n_0 ;
  wire \counter[9]_i_1__3_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire rst_global;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    button_out_i_1__3
       (.I0(\counter[20]_i_2__3_n_0 ),
        .I1(button_clean),
        .I2(button_sync_1_reg_n_0),
        .O(button_out_i_1__3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_out_i_1__3_n_0),
        .Q(button_clean));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_0_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(btnC_start_IBUF),
        .Q(button_sync_0_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_sync_0_reg_n_0),
        .Q(button_sync_1_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \counter[0]_i_1__3 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(button_sync_1_reg_n_0),
        .I2(button_clean),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[10]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_6),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[10]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[11]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_5),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[11]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[12]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_4),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[12]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[13]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_7),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[13]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[14]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_6),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[14]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[15]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_5),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[15]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[16]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_4),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[16]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[17]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_7),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[17]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[18]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_6),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[18]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[19]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_5),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[19]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[1]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_7),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[20]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_4),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[20]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \counter[20]_i_2__3 
       (.I0(\counter[20]_i_3__3_n_0 ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter_reg_n_0_[18] ),
        .I5(\counter_reg_n_0_[17] ),
        .O(\counter[20]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \counter[20]_i_3__3 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter[20]_i_4__3_n_0 ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[20]_i_3__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[20]_i_4__3 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[20]_i_4__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[2]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_6),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[3]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_5),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[4]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_4),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[5]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_7),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[6]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_6),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[7]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_5),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[8]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_4),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[8]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[9]_i_1__3 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_7),
        .I3(\counter[20]_i_2__3_n_0 ),
        .O(\counter[9]_i_1__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[0]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[10]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[11]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[12]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[13]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[14]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[15]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[16]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[17]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[18]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[19]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[1]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[20]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[2]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[3]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[4]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[5]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[6]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[7]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[8]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[9]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_6
   (button_clean,
    btnR_red_IBUF,
    CLK,
    rst_global);
  output button_clean;
  input btnR_red_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnR_red_IBUF;
  wire button_clean;
  wire button_out_i_1_n_0;
  wire button_sync_0;
  wire button_sync_1;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[17]_i_1_n_0 ;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[19]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[20]_i_1_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire rst_global;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    button_out_i_1
       (.I0(\counter[20]_i_2_n_0 ),
        .I1(button_clean),
        .I2(button_sync_1),
        .O(button_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_out_i_1_n_0),
        .Q(button_clean));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_0_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(btnR_red_IBUF),
        .Q(button_sync_0));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_sync_0),
        .Q(button_sync_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(button_sync_1),
        .I2(button_clean),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[10]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__1_n_6),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[11]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__1_n_5),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[12]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__1_n_4),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[13]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__2_n_7),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[14]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__2_n_6),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[15]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__2_n_5),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[16]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__2_n_4),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[17]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__3_n_7),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[18]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__3_n_6),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[19]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__3_n_5),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[1]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry_n_7),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[20]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__3_n_4),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \counter[20]_i_2 
       (.I0(\counter[20]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter_reg_n_0_[18] ),
        .I5(\counter_reg_n_0_[17] ),
        .O(\counter[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \counter[20]_i_3 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter[20]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[20]_i_4 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[2]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry_n_6),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[3]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry_n_5),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[4]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry_n_4),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[5]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__0_n_7),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[6]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__0_n_6),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[7]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__0_n_5),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[8]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__0_n_4),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[9]_i_1 
       (.I0(button_sync_1),
        .I1(button_clean),
        .I2(counter0_carry__1_n_7),
        .I3(\counter[20]_i_2_n_0 ),
        .O(\counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[11]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[12]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[13]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[14]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[15]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[16]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[17]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[18]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[19]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[20]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_8
   (button_clean,
    btnU_green_IBUF,
    CLK,
    rst_global);
  output button_clean;
  input btnU_green_IBUF;
  input CLK;
  input rst_global;

  wire CLK;
  wire btnU_green_IBUF;
  wire button_clean;
  wire button_out_i_1__0_n_0;
  wire button_sync_0_reg_n_0;
  wire button_sync_1_reg_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[10]_i_1__0_n_0 ;
  wire \counter[11]_i_1__0_n_0 ;
  wire \counter[12]_i_1__0_n_0 ;
  wire \counter[13]_i_1__0_n_0 ;
  wire \counter[14]_i_1__0_n_0 ;
  wire \counter[15]_i_1__0_n_0 ;
  wire \counter[16]_i_1__0_n_0 ;
  wire \counter[17]_i_1__0_n_0 ;
  wire \counter[18]_i_1__0_n_0 ;
  wire \counter[19]_i_1__0_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[20]_i_1__0_n_0 ;
  wire \counter[20]_i_2__0_n_0 ;
  wire \counter[20]_i_3__0_n_0 ;
  wire \counter[20]_i_4__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1__0_n_0 ;
  wire \counter[5]_i_1__0_n_0 ;
  wire \counter[6]_i_1__0_n_0 ;
  wire \counter[7]_i_1__0_n_0 ;
  wire \counter[8]_i_1__0_n_0 ;
  wire \counter[9]_i_1__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire rst_global;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    button_out_i_1__0
       (.I0(\counter[20]_i_2__0_n_0 ),
        .I1(button_clean),
        .I2(button_sync_1_reg_n_0),
        .O(button_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_out_i_1__0_n_0),
        .Q(button_clean));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_0_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(btnU_green_IBUF),
        .Q(button_sync_0_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_sync_1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(button_sync_0_reg_n_0),
        .Q(button_sync_1_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(button_sync_1_reg_n_0),
        .I2(button_clean),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[10]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_6),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[11]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_5),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[12]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_4),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[13]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_7),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[14]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_6),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[15]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_5),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[16]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__2_n_4),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[17]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_7),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[18]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_6),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[19]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_5),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[1]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_7),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[20]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__3_n_4),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[20]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \counter[20]_i_2__0 
       (.I0(\counter[20]_i_3__0_n_0 ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[18] ),
        .I3(\counter_reg_n_0_[17] ),
        .I4(\counter_reg_n_0_[20] ),
        .I5(\counter_reg_n_0_[19] ),
        .O(\counter[20]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \counter[20]_i_3__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter[20]_i_4__0_n_0 ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[20]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[20]_i_4__0 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[20]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[2]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_6),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[3]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_5),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[4]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry_n_4),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[5]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_7),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[6]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_6),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[7]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_5),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[8]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__0_n_4),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \counter[9]_i_1__0 
       (.I0(button_sync_1_reg_n_0),
        .I1(button_clean),
        .I2(counter0_carry__1_n_7),
        .I3(\counter[20]_i_2__0_n_0 ),
        .O(\counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[16]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[17]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[18]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[19]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[20]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[4]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_global),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
endmodule

module frec_divider_param
   (clk,
    pulse,
    rst_global,
    CLK,
    \counter_reg[0]_0 );
  output clk;
  output pulse;
  input rst_global;
  input CLK;
  input \counter_reg[0]_0 ;

  wire CLK;
  wire clk;
  wire \counter[0]_i_3_n_0 ;
  wire [26:0]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire pulse;
  wire pulse_i_2_n_0;
  wire pulse_i_3_n_0;
  wire pulse_i_4_n_0;
  wire pulse_i_5_n_0;
  wire pulse_i_6_n_0;
  wire pulse_i_7_n_0;
  wire rst_global;
  wire [3:2]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3],\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,counter_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    pulse_i_1
       (.I0(pulse_i_2_n_0),
        .I1(counter_reg[4]),
        .I2(counter_reg[14]),
        .I3(counter_reg[2]),
        .I4(pulse_i_3_n_0),
        .I5(pulse_i_4_n_0),
        .O(pulse));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    pulse_i_2
       (.I0(counter_reg[15]),
        .I1(counter_reg[7]),
        .I2(counter_reg[19]),
        .I3(counter_reg[23]),
        .I4(pulse_i_5_n_0),
        .O(pulse_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    pulse_i_3
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(counter_reg[11]),
        .I3(counter_reg[26]),
        .I4(pulse_i_6_n_0),
        .O(pulse_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    pulse_i_4
       (.I0(counter_reg[0]),
        .I1(counter_reg[13]),
        .I2(counter_reg[10]),
        .I3(counter_reg[1]),
        .I4(pulse_i_7_n_0),
        .O(pulse_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    pulse_i_5
       (.I0(counter_reg[18]),
        .I1(counter_reg[9]),
        .I2(counter_reg[24]),
        .I3(counter_reg[12]),
        .O(pulse_i_5_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    pulse_i_6
       (.I0(counter_reg[22]),
        .I1(counter_reg[25]),
        .I2(counter_reg[5]),
        .I3(counter_reg[21]),
        .O(pulse_i_6_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    pulse_i_7
       (.I0(counter_reg[6]),
        .I1(counter_reg[8]),
        .I2(counter_reg[20]),
        .I3(counter_reg[3]),
        .O(pulse_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pulse_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pulse),
        .Q(clk),
        .R(rst_global));
endmodule

module oneshot
   (processed_yellow_button,
    rst_global,
    CLK,
    button_clean);
  output processed_yellow_button;
  input rst_global;
  input CLK;
  input button_clean;

  wire CLK;
  wire button_clean;
  wire [27:0]counter;
  wire counter0_carry__0_i_1__1_n_0;
  wire counter0_carry__0_i_2__1_n_0;
  wire counter0_carry__0_i_3__1_n_0;
  wire counter0_carry__0_i_4__1_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_i_1__1_n_0;
  wire counter0_carry__1_i_2__1_n_0;
  wire counter0_carry__1_i_3__1_n_0;
  wire counter0_carry__1_i_4__1_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_i_1__1_n_0;
  wire counter0_carry__2_i_2__1_n_0;
  wire counter0_carry__2_i_3__1_n_0;
  wire counter0_carry__2_i_4__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_i_1__1_n_0;
  wire counter0_carry__3_i_2__1_n_0;
  wire counter0_carry__3_i_3__1_n_0;
  wire counter0_carry__3_i_4__1_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_i_1__1_n_0;
  wire counter0_carry__4_i_2__1_n_0;
  wire counter0_carry__4_i_3__1_n_0;
  wire counter0_carry__4_i_4__1_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_i_1__1_n_0;
  wire counter0_carry__5_i_2__1_n_0;
  wire counter0_carry__5_i_3__1_n_0;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry_i_1__1_n_0;
  wire counter0_carry_i_2__1_n_0;
  wire counter0_carry_i_3__1_n_0;
  wire counter0_carry_i_4__1_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__7_n_0 ;
  wire \counter[13]_i_1__7_n_0 ;
  wire \counter[14]_i_1__7_n_0 ;
  wire \counter[15]_i_1__7_n_0 ;
  wire \counter[16]_i_1__7_n_0 ;
  wire \counter[18]_i_1__7_n_0 ;
  wire \counter[20]_i_1__7_n_0 ;
  wire \counter[21]_i_1__2_n_0 ;
  wire \counter[22]_i_1__2_n_0 ;
  wire \counter[23]_i_1__2_n_0 ;
  wire \counter[24]_i_1__2_n_0 ;
  wire \counter[26]_i_1__2_n_0 ;
  wire \counter[26]_i_2__2_n_0 ;
  wire \counter[27]_i_10__2_n_0 ;
  wire \counter[27]_i_11__2_n_0 ;
  wire \counter[27]_i_1__2_n_0 ;
  wire \counter[27]_i_2__2_n_0 ;
  wire \counter[27]_i_3__2_n_0 ;
  wire \counter[27]_i_4__2_n_0 ;
  wire \counter[27]_i_5__2_n_0 ;
  wire \counter[27]_i_6__2_n_0 ;
  wire \counter[27]_i_7__2_n_0 ;
  wire \counter[27]_i_8__2_n_0 ;
  wire \counter[27]_i_9__2_n_0 ;
  wire \counter[8]_i_1__7_n_0 ;
  wire processed_yellow_button;
  wire rst_global;
  wire trigger_d;
  wire [3:2]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({counter0_carry_i_1__1_n_0,counter0_carry_i_2__1_n_0,counter0_carry_i_3__1_n_0,counter0_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({counter0_carry__0_i_1__1_n_0,counter0_carry__0_i_2__1_n_0,counter0_carry__0_i_3__1_n_0,counter0_carry__0_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_1__1
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_2__1
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_3__1
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_4__1
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({counter0_carry__1_i_1__1_n_0,counter0_carry__1_i_2__1_n_0,counter0_carry__1_i_3__1_n_0,counter0_carry__1_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_1__1
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_2__1
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_3__1
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_4__1
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({counter0_carry__2_i_1__1_n_0,counter0_carry__2_i_2__1_n_0,counter0_carry__2_i_3__1_n_0,counter0_carry__2_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1__1
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2__1
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_3__1
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_4__1
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({counter0_carry__3_i_1__1_n_0,counter0_carry__3_i_2__1_n_0,counter0_carry__3_i_3__1_n_0,counter0_carry__3_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_1__1
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_2__1
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_3__1
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_4__1
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(counter[24:21]),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({counter0_carry__4_i_1__1_n_0,counter0_carry__4_i_2__1_n_0,counter0_carry__4_i_3__1_n_0,counter0_carry__4_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_1__1
       (.I0(counter[24]),
        .O(counter0_carry__4_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_2__1
       (.I0(counter[23]),
        .O(counter0_carry__4_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_3__1
       (.I0(counter[22]),
        .O(counter0_carry__4_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_4__1
       (.I0(counter[21]),
        .O(counter0_carry__4_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({NLW_counter0_carry__5_CO_UNCONNECTED[3:2],counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[26:25]}),
        .O({NLW_counter0_carry__5_O_UNCONNECTED[3],counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({1'b0,counter0_carry__5_i_1__1_n_0,counter0_carry__5_i_2__1_n_0,counter0_carry__5_i_3__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_1__1
       (.I0(counter[27]),
        .O(counter0_carry__5_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_2__1
       (.I0(counter[26]),
        .O(counter0_carry__5_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_3__1
       (.I0(counter[25]),
        .O(counter0_carry__5_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_1__1
       (.I0(counter[4]),
        .O(counter0_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_2__1
       (.I0(counter[3]),
        .O(counter0_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3__1
       (.I0(counter[2]),
        .O(counter0_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_4__1
       (.I0(counter[1]),
        .O(counter0_carry_i_4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__7 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[13]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_7),
        .O(\counter[13]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[14]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_6),
        .O(\counter[14]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[15]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_5),
        .O(\counter[15]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[16]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_4),
        .O(\counter[16]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[18]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__3_n_6),
        .O(\counter[18]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[20]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__3_n_4),
        .O(\counter[20]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[21]_i_1__2 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_7),
        .O(\counter[21]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[22]_i_1__2 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_6),
        .O(\counter[22]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[23]_i_1__2 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_5),
        .O(\counter[23]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[24]_i_1__2 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_4),
        .O(\counter[24]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \counter[26]_i_1__2 
       (.I0(trigger_d),
        .I1(button_clean),
        .I2(\counter[27]_i_3__2_n_0 ),
        .I3(\counter[27]_i_4__2_n_0 ),
        .I4(\counter[27]_i_5__2_n_0 ),
        .O(\counter[26]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[26]_i_2__2 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__5_n_6),
        .O(\counter[26]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_10__2 
       (.I0(counter[27]),
        .I1(counter[24]),
        .I2(counter[11]),
        .I3(counter[18]),
        .O(\counter[27]_i_10__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_11__2 
       (.I0(counter[2]),
        .I1(counter[25]),
        .I2(counter[1]),
        .I3(counter[26]),
        .O(\counter[27]_i_11__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[27]_i_1__2 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(rst_global),
        .O(\counter[27]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_2__2 
       (.I0(\counter[27]_i_6__2_n_0 ),
        .I1(counter[23]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(counter[7]),
        .I5(\counter[27]_i_7__2_n_0 ),
        .O(\counter[27]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_3__2 
       (.I0(counter[8]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[4]),
        .I4(\counter[27]_i_8__2_n_0 ),
        .O(\counter[27]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_4__2 
       (.I0(counter[22]),
        .I1(counter[15]),
        .I2(counter[21]),
        .I3(counter[5]),
        .I4(\counter[27]_i_9__2_n_0 ),
        .O(\counter[27]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[27]_i_5__2 
       (.I0(counter[23]),
        .I1(counter[16]),
        .I2(counter[17]),
        .I3(counter[7]),
        .I4(\counter[27]_i_10__2_n_0 ),
        .I5(\counter[27]_i_11__2_n_0 ),
        .O(\counter[27]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_6__2 
       (.I0(\counter[27]_i_8__2_n_0 ),
        .I1(counter[4]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[8]),
        .I5(\counter[27]_i_4__2_n_0 ),
        .O(\counter[27]_i_6__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_7__2 
       (.I0(counter[26]),
        .I1(counter[1]),
        .I2(counter[25]),
        .I3(counter[2]),
        .I4(\counter[27]_i_10__2_n_0 ),
        .O(\counter[27]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_8__2 
       (.I0(counter[12]),
        .I1(counter[13]),
        .I2(counter[14]),
        .I3(counter[19]),
        .O(\counter[27]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_9__2 
       (.I0(counter[6]),
        .I1(counter[10]),
        .I2(counter[9]),
        .I3(counter[20]),
        .O(\counter[27]_i_9__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[8]_i_1__7 
       (.I0(\counter[27]_i_3__2_n_0 ),
        .I1(\counter[27]_i_4__2_n_0 ),
        .I2(\counter[27]_i_5__2_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__0_n_4),
        .O(\counter[8]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(\counter[0]_i_1__7_n_0 ),
        .Q(counter[0]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__1_n_6),
        .Q(counter[10]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__1_n_5),
        .Q(counter[11]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__1_n_4),
        .Q(counter[12]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[13]_i_1__7_n_0 ),
        .Q(counter[13]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[14]_i_1__7_n_0 ),
        .Q(counter[14]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[15]_i_1__7_n_0 ),
        .Q(counter[15]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[16]_i_1__7_n_0 ),
        .Q(counter[16]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__3_n_7),
        .Q(counter[17]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[18]_i_1__7_n_0 ),
        .Q(counter[18]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__3_n_5),
        .Q(counter[19]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry_n_7),
        .Q(counter[1]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[20]_i_1__7_n_0 ),
        .Q(counter[20]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[21]_i_1__2_n_0 ),
        .Q(counter[21]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[22]_i_1__2_n_0 ),
        .Q(counter[22]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[23]_i_1__2_n_0 ),
        .Q(counter[23]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[24]_i_1__2_n_0 ),
        .Q(counter[24]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__5_n_7),
        .Q(counter[25]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[26]_i_2__2_n_0 ),
        .Q(counter[26]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__5_n_5),
        .Q(counter[27]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry_n_6),
        .Q(counter[2]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry_n_5),
        .Q(counter[3]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry_n_4),
        .Q(counter[4]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__0_n_7),
        .Q(counter[5]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__0_n_6),
        .Q(counter[6]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__0_n_5),
        .Q(counter[7]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\counter[26]_i_1__2_n_0 ),
        .D(\counter[8]_i_1__7_n_0 ),
        .Q(counter[8]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\counter[27]_i_2__2_n_0 ),
        .D(counter0_carry__1_n_7),
        .Q(counter[9]),
        .R(\counter[27]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    pulse_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[27]_i_2__2_n_0 ),
        .Q(processed_yellow_button),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    trigger_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_clean),
        .Q(trigger_d),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_11
   (processed_blue_button,
    pulse_out_reg_0,
    rst_global,
    CLK,
    button_clean,
    processed_green_button,
    processed_yellow_button,
    processed_red_button,
    flag_k_mef);
  output processed_blue_button;
  output pulse_out_reg_0;
  input rst_global;
  input CLK;
  input button_clean;
  input processed_green_button;
  input processed_yellow_button;
  input processed_red_button;
  input flag_k_mef;

  wire CLK;
  wire button_clean;
  wire [27:0]counter;
  wire counter0_carry__0_i_1__0_n_0;
  wire counter0_carry__0_i_2__0_n_0;
  wire counter0_carry__0_i_3__0_n_0;
  wire counter0_carry__0_i_4__0_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_i_1__0_n_0;
  wire counter0_carry__1_i_2__0_n_0;
  wire counter0_carry__1_i_3__0_n_0;
  wire counter0_carry__1_i_4__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_i_1__0_n_0;
  wire counter0_carry__2_i_2__0_n_0;
  wire counter0_carry__2_i_3__0_n_0;
  wire counter0_carry__2_i_4__0_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_i_1__0_n_0;
  wire counter0_carry__3_i_2__0_n_0;
  wire counter0_carry__3_i_3__0_n_0;
  wire counter0_carry__3_i_4__0_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_i_1__0_n_0;
  wire counter0_carry__4_i_2__0_n_0;
  wire counter0_carry__4_i_3__0_n_0;
  wire counter0_carry__4_i_4__0_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_i_1__0_n_0;
  wire counter0_carry__5_i_2__0_n_0;
  wire counter0_carry__5_i_3__0_n_0;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry_i_1__0_n_0;
  wire counter0_carry_i_2__0_n_0;
  wire counter0_carry_i_3__0_n_0;
  wire counter0_carry_i_4__0_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__6_n_0 ;
  wire \counter[13]_i_1__6_n_0 ;
  wire \counter[14]_i_1__6_n_0 ;
  wire \counter[15]_i_1__6_n_0 ;
  wire \counter[16]_i_1__6_n_0 ;
  wire \counter[18]_i_1__6_n_0 ;
  wire \counter[20]_i_1__6_n_0 ;
  wire \counter[21]_i_1__1_n_0 ;
  wire \counter[22]_i_1__1_n_0 ;
  wire \counter[23]_i_1__1_n_0 ;
  wire \counter[24]_i_1__1_n_0 ;
  wire \counter[26]_i_1__1_n_0 ;
  wire \counter[26]_i_2__1_n_0 ;
  wire \counter[27]_i_10__1_n_0 ;
  wire \counter[27]_i_11__1_n_0 ;
  wire \counter[27]_i_1__1_n_0 ;
  wire \counter[27]_i_2__1_n_0 ;
  wire \counter[27]_i_3__1_n_0 ;
  wire \counter[27]_i_4__1_n_0 ;
  wire \counter[27]_i_5__1_n_0 ;
  wire \counter[27]_i_6__1_n_0 ;
  wire \counter[27]_i_7__1_n_0 ;
  wire \counter[27]_i_8__1_n_0 ;
  wire \counter[27]_i_9__1_n_0 ;
  wire \counter[8]_i_1__6_n_0 ;
  wire flag_k_mef;
  wire processed_blue_button;
  wire processed_green_button;
  wire processed_red_button;
  wire processed_yellow_button;
  wire pulse_out_reg_0;
  wire rst_global;
  wire trigger_d;
  wire [3:2]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__5_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h69960000)) 
    \FSM_sequential_curr_state[2]_i_5 
       (.I0(processed_blue_button),
        .I1(processed_green_button),
        .I2(processed_yellow_button),
        .I3(processed_red_button),
        .I4(flag_k_mef),
        .O(pulse_out_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({counter0_carry_i_1__0_n_0,counter0_carry_i_2__0_n_0,counter0_carry_i_3__0_n_0,counter0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({counter0_carry__0_i_1__0_n_0,counter0_carry__0_i_2__0_n_0,counter0_carry__0_i_3__0_n_0,counter0_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_1__0
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_2__0
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_3__0
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_4__0
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({counter0_carry__1_i_1__0_n_0,counter0_carry__1_i_2__0_n_0,counter0_carry__1_i_3__0_n_0,counter0_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_1__0
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_2__0
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_3__0
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_4__0
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({counter0_carry__2_i_1__0_n_0,counter0_carry__2_i_2__0_n_0,counter0_carry__2_i_3__0_n_0,counter0_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1__0
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2__0
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_3__0
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_4__0
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({counter0_carry__3_i_1__0_n_0,counter0_carry__3_i_2__0_n_0,counter0_carry__3_i_3__0_n_0,counter0_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_1__0
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_2__0
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_3__0
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_4__0
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(counter[24:21]),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({counter0_carry__4_i_1__0_n_0,counter0_carry__4_i_2__0_n_0,counter0_carry__4_i_3__0_n_0,counter0_carry__4_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_1__0
       (.I0(counter[24]),
        .O(counter0_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_2__0
       (.I0(counter[23]),
        .O(counter0_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_3__0
       (.I0(counter[22]),
        .O(counter0_carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_4__0
       (.I0(counter[21]),
        .O(counter0_carry__4_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({NLW_counter0_carry__5_CO_UNCONNECTED[3:2],counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[26:25]}),
        .O({NLW_counter0_carry__5_O_UNCONNECTED[3],counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({1'b0,counter0_carry__5_i_1__0_n_0,counter0_carry__5_i_2__0_n_0,counter0_carry__5_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_1__0
       (.I0(counter[27]),
        .O(counter0_carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_2__0
       (.I0(counter[26]),
        .O(counter0_carry__5_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_3__0
       (.I0(counter[25]),
        .O(counter0_carry__5_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_1__0
       (.I0(counter[4]),
        .O(counter0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_2__0
       (.I0(counter[3]),
        .O(counter0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3__0
       (.I0(counter[2]),
        .O(counter0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_4__0
       (.I0(counter[1]),
        .O(counter0_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__6 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[13]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_7),
        .O(\counter[13]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[14]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_6),
        .O(\counter[14]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[15]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_5),
        .O(\counter[15]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[16]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_4),
        .O(\counter[16]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[18]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__3_n_6),
        .O(\counter[18]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[20]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__3_n_4),
        .O(\counter[20]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[21]_i_1__1 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_7),
        .O(\counter[21]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[22]_i_1__1 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_6),
        .O(\counter[22]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[23]_i_1__1 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_5),
        .O(\counter[23]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[24]_i_1__1 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_4),
        .O(\counter[24]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \counter[26]_i_1__1 
       (.I0(trigger_d),
        .I1(button_clean),
        .I2(\counter[27]_i_3__1_n_0 ),
        .I3(\counter[27]_i_4__1_n_0 ),
        .I4(\counter[27]_i_5__1_n_0 ),
        .O(\counter[26]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[26]_i_2__1 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__5_n_6),
        .O(\counter[26]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_10__1 
       (.I0(counter[1]),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[17]),
        .O(\counter[27]_i_10__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_11__1 
       (.I0(counter[10]),
        .I1(counter[0]),
        .I2(counter[13]),
        .I3(counter[19]),
        .O(\counter[27]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[27]_i_1__1 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(rst_global),
        .O(\counter[27]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_2__1 
       (.I0(\counter[27]_i_6__1_n_0 ),
        .I1(counter[18]),
        .I2(counter[14]),
        .I3(counter[26]),
        .I4(counter[25]),
        .I5(\counter[27]_i_7__1_n_0 ),
        .O(\counter[27]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_3__1 
       (.I0(counter[9]),
        .I1(counter[5]),
        .I2(counter[24]),
        .I3(counter[6]),
        .I4(\counter[27]_i_8__1_n_0 ),
        .O(\counter[27]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_4__1 
       (.I0(counter[16]),
        .I1(counter[3]),
        .I2(counter[8]),
        .I3(counter[7]),
        .I4(\counter[27]_i_9__1_n_0 ),
        .O(\counter[27]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[27]_i_5__1 
       (.I0(counter[18]),
        .I1(counter[14]),
        .I2(counter[26]),
        .I3(counter[25]),
        .I4(\counter[27]_i_10__1_n_0 ),
        .I5(\counter[27]_i_11__1_n_0 ),
        .O(\counter[27]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_6__1 
       (.I0(\counter[27]_i_8__1_n_0 ),
        .I1(counter[6]),
        .I2(counter[24]),
        .I3(counter[5]),
        .I4(counter[9]),
        .I5(\counter[27]_i_4__1_n_0 ),
        .O(\counter[27]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_7__1 
       (.I0(counter[19]),
        .I1(counter[13]),
        .I2(counter[0]),
        .I3(counter[10]),
        .I4(\counter[27]_i_10__1_n_0 ),
        .O(\counter[27]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_8__1 
       (.I0(counter[11]),
        .I1(counter[20]),
        .I2(counter[27]),
        .I3(counter[12]),
        .O(\counter[27]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_9__1 
       (.I0(counter[15]),
        .I1(counter[22]),
        .I2(counter[21]),
        .I3(counter[23]),
        .O(\counter[27]_i_9__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[8]_i_1__6 
       (.I0(\counter[27]_i_3__1_n_0 ),
        .I1(\counter[27]_i_4__1_n_0 ),
        .I2(\counter[27]_i_5__1_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__0_n_4),
        .O(\counter[8]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(\counter[0]_i_1__6_n_0 ),
        .Q(counter[0]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__1_n_6),
        .Q(counter[10]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__1_n_5),
        .Q(counter[11]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__1_n_4),
        .Q(counter[12]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[13]_i_1__6_n_0 ),
        .Q(counter[13]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[14]_i_1__6_n_0 ),
        .Q(counter[14]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[15]_i_1__6_n_0 ),
        .Q(counter[15]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[16]_i_1__6_n_0 ),
        .Q(counter[16]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__3_n_7),
        .Q(counter[17]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[18]_i_1__6_n_0 ),
        .Q(counter[18]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__3_n_5),
        .Q(counter[19]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry_n_7),
        .Q(counter[1]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[20]_i_1__6_n_0 ),
        .Q(counter[20]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[21]_i_1__1_n_0 ),
        .Q(counter[21]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[22]_i_1__1_n_0 ),
        .Q(counter[22]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[23]_i_1__1_n_0 ),
        .Q(counter[23]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[24]_i_1__1_n_0 ),
        .Q(counter[24]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__5_n_7),
        .Q(counter[25]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[26]_i_2__1_n_0 ),
        .Q(counter[26]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__5_n_5),
        .Q(counter[27]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry_n_6),
        .Q(counter[2]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry_n_5),
        .Q(counter[3]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry_n_4),
        .Q(counter[4]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__0_n_7),
        .Q(counter[5]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__0_n_6),
        .Q(counter[6]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__0_n_5),
        .Q(counter[7]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\counter[26]_i_1__1_n_0 ),
        .D(\counter[8]_i_1__6_n_0 ),
        .Q(counter[8]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\counter[27]_i_2__1_n_0 ),
        .D(counter0_carry__1_n_7),
        .Q(counter[9]),
        .R(\counter[27]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    pulse_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[27]_i_2__1_n_0 ),
        .Q(processed_blue_button),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    trigger_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_clean),
        .Q(trigger_d),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_5
   (processed_start_button,
    button_clean,
    CLK,
    rst_global);
  output processed_start_button;
  input button_clean;
  input CLK;
  input rst_global;

  wire CLK;
  wire button_clean;
  wire [27:0]counter;
  wire \counter0_inferred__0/i__carry__0_n_0 ;
  wire \counter0_inferred__0/i__carry__0_n_1 ;
  wire \counter0_inferred__0/i__carry__0_n_2 ;
  wire \counter0_inferred__0/i__carry__0_n_3 ;
  wire \counter0_inferred__0/i__carry__0_n_4 ;
  wire \counter0_inferred__0/i__carry__0_n_5 ;
  wire \counter0_inferred__0/i__carry__0_n_6 ;
  wire \counter0_inferred__0/i__carry__0_n_7 ;
  wire \counter0_inferred__0/i__carry__1_n_0 ;
  wire \counter0_inferred__0/i__carry__1_n_1 ;
  wire \counter0_inferred__0/i__carry__1_n_2 ;
  wire \counter0_inferred__0/i__carry__1_n_3 ;
  wire \counter0_inferred__0/i__carry__1_n_4 ;
  wire \counter0_inferred__0/i__carry__1_n_5 ;
  wire \counter0_inferred__0/i__carry__1_n_6 ;
  wire \counter0_inferred__0/i__carry__1_n_7 ;
  wire \counter0_inferred__0/i__carry__2_n_0 ;
  wire \counter0_inferred__0/i__carry__2_n_1 ;
  wire \counter0_inferred__0/i__carry__2_n_2 ;
  wire \counter0_inferred__0/i__carry__2_n_3 ;
  wire \counter0_inferred__0/i__carry__2_n_4 ;
  wire \counter0_inferred__0/i__carry__2_n_5 ;
  wire \counter0_inferred__0/i__carry__2_n_6 ;
  wire \counter0_inferred__0/i__carry__2_n_7 ;
  wire \counter0_inferred__0/i__carry__3_n_0 ;
  wire \counter0_inferred__0/i__carry__3_n_1 ;
  wire \counter0_inferred__0/i__carry__3_n_2 ;
  wire \counter0_inferred__0/i__carry__3_n_3 ;
  wire \counter0_inferred__0/i__carry__3_n_4 ;
  wire \counter0_inferred__0/i__carry__3_n_5 ;
  wire \counter0_inferred__0/i__carry__3_n_6 ;
  wire \counter0_inferred__0/i__carry__3_n_7 ;
  wire \counter0_inferred__0/i__carry__4_n_0 ;
  wire \counter0_inferred__0/i__carry__4_n_1 ;
  wire \counter0_inferred__0/i__carry__4_n_2 ;
  wire \counter0_inferred__0/i__carry__4_n_3 ;
  wire \counter0_inferred__0/i__carry__4_n_4 ;
  wire \counter0_inferred__0/i__carry__4_n_5 ;
  wire \counter0_inferred__0/i__carry__4_n_6 ;
  wire \counter0_inferred__0/i__carry__4_n_7 ;
  wire \counter0_inferred__0/i__carry__5_n_2 ;
  wire \counter0_inferred__0/i__carry__5_n_3 ;
  wire \counter0_inferred__0/i__carry__5_n_5 ;
  wire \counter0_inferred__0/i__carry__5_n_6 ;
  wire \counter0_inferred__0/i__carry__5_n_7 ;
  wire \counter0_inferred__0/i__carry_n_0 ;
  wire \counter0_inferred__0/i__carry_n_1 ;
  wire \counter0_inferred__0/i__carry_n_2 ;
  wire \counter0_inferred__0/i__carry_n_3 ;
  wire \counter0_inferred__0/i__carry_n_4 ;
  wire \counter0_inferred__0/i__carry_n_5 ;
  wire \counter0_inferred__0/i__carry_n_6 ;
  wire \counter0_inferred__0/i__carry_n_7 ;
  wire \counter[0]_i_1__8_n_0 ;
  wire \counter[13]_i_1__8_n_0 ;
  wire \counter[14]_i_1__8_n_0 ;
  wire \counter[15]_i_1__8_n_0 ;
  wire \counter[16]_i_1__8_n_0 ;
  wire \counter[18]_i_1__8_n_0 ;
  wire \counter[20]_i_1__8_n_0 ;
  wire \counter[21]_i_1__3_n_0 ;
  wire \counter[22]_i_1__3_n_0 ;
  wire \counter[23]_i_1__3_n_0 ;
  wire \counter[24]_i_1__3_n_0 ;
  wire \counter[26]_i_1__3_n_0 ;
  wire \counter[26]_i_2__3_n_0 ;
  wire \counter[27]_i_10__3_n_0 ;
  wire \counter[27]_i_11__3_n_0 ;
  wire \counter[27]_i_1__3_n_0 ;
  wire \counter[27]_i_2__3_n_0 ;
  wire \counter[27]_i_3__3_n_0 ;
  wire \counter[27]_i_4__3_n_0 ;
  wire \counter[27]_i_5__3_n_0 ;
  wire \counter[27]_i_6__3_n_0 ;
  wire \counter[27]_i_7__3_n_0 ;
  wire \counter[27]_i_8__3_n_0 ;
  wire \counter[27]_i_9__3_n_0 ;
  wire \counter[8]_i_1__8_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_3__0_n_0;
  wire i__carry__3_i_4__0_n_0;
  wire i__carry__4_i_1__0_n_0;
  wire i__carry__4_i_2__0_n_0;
  wire i__carry__4_i_3__0_n_0;
  wire i__carry__4_i_4__0_n_0;
  wire i__carry__5_i_1__0_n_0;
  wire i__carry__5_i_2__0_n_0;
  wire i__carry__5_i_3__0_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire processed_start_button;
  wire rst_global;
  wire trigger_d;
  wire [3:2]\NLW_counter0_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter0_inferred__0/i__carry__5_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counter0_inferred__0/i__carry_n_0 ,\counter0_inferred__0/i__carry_n_1 ,\counter0_inferred__0/i__carry_n_2 ,\counter0_inferred__0/i__carry_n_3 }),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O({\counter0_inferred__0/i__carry_n_4 ,\counter0_inferred__0/i__carry_n_5 ,\counter0_inferred__0/i__carry_n_6 ,\counter0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__0 
       (.CI(\counter0_inferred__0/i__carry_n_0 ),
        .CO({\counter0_inferred__0/i__carry__0_n_0 ,\counter0_inferred__0/i__carry__0_n_1 ,\counter0_inferred__0/i__carry__0_n_2 ,\counter0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O({\counter0_inferred__0/i__carry__0_n_4 ,\counter0_inferred__0/i__carry__0_n_5 ,\counter0_inferred__0/i__carry__0_n_6 ,\counter0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__1 
       (.CI(\counter0_inferred__0/i__carry__0_n_0 ),
        .CO({\counter0_inferred__0/i__carry__1_n_0 ,\counter0_inferred__0/i__carry__1_n_1 ,\counter0_inferred__0/i__carry__1_n_2 ,\counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O({\counter0_inferred__0/i__carry__1_n_4 ,\counter0_inferred__0/i__carry__1_n_5 ,\counter0_inferred__0/i__carry__1_n_6 ,\counter0_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__2 
       (.CI(\counter0_inferred__0/i__carry__1_n_0 ),
        .CO({\counter0_inferred__0/i__carry__2_n_0 ,\counter0_inferred__0/i__carry__2_n_1 ,\counter0_inferred__0/i__carry__2_n_2 ,\counter0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O({\counter0_inferred__0/i__carry__2_n_4 ,\counter0_inferred__0/i__carry__2_n_5 ,\counter0_inferred__0/i__carry__2_n_6 ,\counter0_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__3 
       (.CI(\counter0_inferred__0/i__carry__2_n_0 ),
        .CO({\counter0_inferred__0/i__carry__3_n_0 ,\counter0_inferred__0/i__carry__3_n_1 ,\counter0_inferred__0/i__carry__3_n_2 ,\counter0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O({\counter0_inferred__0/i__carry__3_n_4 ,\counter0_inferred__0/i__carry__3_n_5 ,\counter0_inferred__0/i__carry__3_n_6 ,\counter0_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1__0_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3__0_n_0,i__carry__3_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__4 
       (.CI(\counter0_inferred__0/i__carry__3_n_0 ),
        .CO({\counter0_inferred__0/i__carry__4_n_0 ,\counter0_inferred__0/i__carry__4_n_1 ,\counter0_inferred__0/i__carry__4_n_2 ,\counter0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[24:21]),
        .O({\counter0_inferred__0/i__carry__4_n_4 ,\counter0_inferred__0/i__carry__4_n_5 ,\counter0_inferred__0/i__carry__4_n_6 ,\counter0_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1__0_n_0,i__carry__4_i_2__0_n_0,i__carry__4_i_3__0_n_0,i__carry__4_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__5 
       (.CI(\counter0_inferred__0/i__carry__4_n_0 ),
        .CO({\NLW_counter0_inferred__0/i__carry__5_CO_UNCONNECTED [3:2],\counter0_inferred__0/i__carry__5_n_2 ,\counter0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[26:25]}),
        .O({\NLW_counter0_inferred__0/i__carry__5_O_UNCONNECTED [3],\counter0_inferred__0/i__carry__5_n_5 ,\counter0_inferred__0/i__carry__5_n_6 ,\counter0_inferred__0/i__carry__5_n_7 }),
        .S({1'b0,i__carry__5_i_1__0_n_0,i__carry__5_i_2__0_n_0,i__carry__5_i_3__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__8 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[13]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_7 ),
        .O(\counter[13]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[14]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_6 ),
        .O(\counter[14]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[15]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_5 ),
        .O(\counter[15]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[16]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_4 ),
        .O(\counter[16]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[18]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__3_n_6 ),
        .O(\counter[18]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[20]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__3_n_4 ),
        .O(\counter[20]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[21]_i_1__3 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_7 ),
        .O(\counter[21]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[22]_i_1__3 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_6 ),
        .O(\counter[22]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[23]_i_1__3 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_5 ),
        .O(\counter[23]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[24]_i_1__3 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_4 ),
        .O(\counter[24]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \counter[26]_i_1__3 
       (.I0(trigger_d),
        .I1(button_clean),
        .I2(\counter[27]_i_3__3_n_0 ),
        .I3(\counter[27]_i_4__3_n_0 ),
        .I4(\counter[27]_i_5__3_n_0 ),
        .O(\counter[26]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[26]_i_2__3 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__5_n_6 ),
        .O(\counter[26]_i_2__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_10__3 
       (.I0(counter[5]),
        .I1(counter[12]),
        .I2(counter[6]),
        .I3(counter[9]),
        .O(\counter[27]_i_10__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_11__3 
       (.I0(counter[1]),
        .I1(counter[14]),
        .I2(counter[27]),
        .I3(counter[15]),
        .O(\counter[27]_i_11__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[27]_i_1__3 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(rst_global),
        .O(\counter[27]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_2__3 
       (.I0(\counter[27]_i_6__3_n_0 ),
        .I1(counter[22]),
        .I2(counter[10]),
        .I3(counter[24]),
        .I4(counter[21]),
        .I5(\counter[27]_i_7__3_n_0 ),
        .O(\counter[27]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_3__3 
       (.I0(counter[16]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(\counter[27]_i_8__3_n_0 ),
        .O(\counter[27]_i_3__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_4__3 
       (.I0(counter[20]),
        .I1(counter[11]),
        .I2(counter[18]),
        .I3(counter[13]),
        .I4(\counter[27]_i_9__3_n_0 ),
        .O(\counter[27]_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[27]_i_5__3 
       (.I0(counter[22]),
        .I1(counter[10]),
        .I2(counter[24]),
        .I3(counter[21]),
        .I4(\counter[27]_i_10__3_n_0 ),
        .I5(\counter[27]_i_11__3_n_0 ),
        .O(\counter[27]_i_5__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_6__3 
       (.I0(\counter[27]_i_8__3_n_0 ),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[16]),
        .I5(\counter[27]_i_4__3_n_0 ),
        .O(\counter[27]_i_6__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_7__3 
       (.I0(counter[15]),
        .I1(counter[27]),
        .I2(counter[14]),
        .I3(counter[1]),
        .I4(\counter[27]_i_10__3_n_0 ),
        .O(\counter[27]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_8__3 
       (.I0(counter[7]),
        .I1(counter[23]),
        .I2(counter[4]),
        .I3(counter[19]),
        .O(\counter[27]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_9__3 
       (.I0(counter[17]),
        .I1(counter[26]),
        .I2(counter[8]),
        .I3(counter[25]),
        .O(\counter[27]_i_9__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[8]_i_1__8 
       (.I0(\counter[27]_i_3__3_n_0 ),
        .I1(\counter[27]_i_4__3_n_0 ),
        .I2(\counter[27]_i_5__3_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__0_n_4 ),
        .O(\counter[8]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter[0]_i_1__8_n_0 ),
        .Q(counter[0]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_6 ),
        .Q(counter[10]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_5 ),
        .Q(counter[11]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_4 ),
        .Q(counter[12]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[13]_i_1__8_n_0 ),
        .Q(counter[13]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[14]_i_1__8_n_0 ),
        .Q(counter[14]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[15]_i_1__8_n_0 ),
        .Q(counter[15]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[16]_i_1__8_n_0 ),
        .Q(counter[16]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__3_n_7 ),
        .Q(counter[17]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[18]_i_1__8_n_0 ),
        .Q(counter[18]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__3_n_5 ),
        .Q(counter[19]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_7 ),
        .Q(counter[1]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[20]_i_1__8_n_0 ),
        .Q(counter[20]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[21]_i_1__3_n_0 ),
        .Q(counter[21]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[22]_i_1__3_n_0 ),
        .Q(counter[22]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[23]_i_1__3_n_0 ),
        .Q(counter[23]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[24]_i_1__3_n_0 ),
        .Q(counter[24]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__5_n_7 ),
        .Q(counter[25]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[26]_i_2__3_n_0 ),
        .Q(counter[26]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__5_n_5 ),
        .Q(counter[27]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_6 ),
        .Q(counter[2]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_5 ),
        .Q(counter[3]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_4 ),
        .Q(counter[4]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__0_n_7 ),
        .Q(counter[5]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__0_n_6 ),
        .Q(counter[6]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__0_n_5 ),
        .Q(counter[7]),
        .R(\counter[27]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\counter[26]_i_1__3_n_0 ),
        .D(\counter[8]_i_1__8_n_0 ),
        .Q(counter[8]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\counter[27]_i_2__3_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_7 ),
        .Q(counter[9]),
        .R(\counter[27]_i_1__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(counter[8]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(counter[7]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(counter[6]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__0
       (.I0(counter[5]),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(counter[12]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(counter[11]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(counter[10]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__0
       (.I0(counter[9]),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__0
       (.I0(counter[16]),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__0
       (.I0(counter[15]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__0
       (.I0(counter[14]),
        .O(i__carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__0
       (.I0(counter[13]),
        .O(i__carry__2_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__0
       (.I0(counter[20]),
        .O(i__carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2__0
       (.I0(counter[19]),
        .O(i__carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3__0
       (.I0(counter[18]),
        .O(i__carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4__0
       (.I0(counter[17]),
        .O(i__carry__3_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1__0
       (.I0(counter[24]),
        .O(i__carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2__0
       (.I0(counter[23]),
        .O(i__carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3__0
       (.I0(counter[22]),
        .O(i__carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4__0
       (.I0(counter[21]),
        .O(i__carry__4_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1__0
       (.I0(counter[27]),
        .O(i__carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2__0
       (.I0(counter[26]),
        .O(i__carry__5_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3__0
       (.I0(counter[25]),
        .O(i__carry__5_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(counter[4]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(counter[3]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(counter[2]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__0
       (.I0(counter[1]),
        .O(i__carry_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pulse_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[27]_i_2__3_n_0 ),
        .Q(processed_start_button),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    trigger_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_clean),
        .Q(trigger_d),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_7
   (processed_red_button,
    button_clean,
    CLK,
    rst_global);
  output processed_red_button;
  input button_clean;
  input CLK;
  input rst_global;

  wire CLK;
  wire button_clean;
  wire [27:0]counter;
  wire \counter0_inferred__0/i__carry__0_n_0 ;
  wire \counter0_inferred__0/i__carry__0_n_1 ;
  wire \counter0_inferred__0/i__carry__0_n_2 ;
  wire \counter0_inferred__0/i__carry__0_n_3 ;
  wire \counter0_inferred__0/i__carry__0_n_4 ;
  wire \counter0_inferred__0/i__carry__0_n_5 ;
  wire \counter0_inferred__0/i__carry__0_n_6 ;
  wire \counter0_inferred__0/i__carry__0_n_7 ;
  wire \counter0_inferred__0/i__carry__1_n_0 ;
  wire \counter0_inferred__0/i__carry__1_n_1 ;
  wire \counter0_inferred__0/i__carry__1_n_2 ;
  wire \counter0_inferred__0/i__carry__1_n_3 ;
  wire \counter0_inferred__0/i__carry__1_n_4 ;
  wire \counter0_inferred__0/i__carry__1_n_5 ;
  wire \counter0_inferred__0/i__carry__1_n_6 ;
  wire \counter0_inferred__0/i__carry__1_n_7 ;
  wire \counter0_inferred__0/i__carry__2_n_0 ;
  wire \counter0_inferred__0/i__carry__2_n_1 ;
  wire \counter0_inferred__0/i__carry__2_n_2 ;
  wire \counter0_inferred__0/i__carry__2_n_3 ;
  wire \counter0_inferred__0/i__carry__2_n_4 ;
  wire \counter0_inferred__0/i__carry__2_n_5 ;
  wire \counter0_inferred__0/i__carry__2_n_6 ;
  wire \counter0_inferred__0/i__carry__2_n_7 ;
  wire \counter0_inferred__0/i__carry__3_n_0 ;
  wire \counter0_inferred__0/i__carry__3_n_1 ;
  wire \counter0_inferred__0/i__carry__3_n_2 ;
  wire \counter0_inferred__0/i__carry__3_n_3 ;
  wire \counter0_inferred__0/i__carry__3_n_4 ;
  wire \counter0_inferred__0/i__carry__3_n_5 ;
  wire \counter0_inferred__0/i__carry__3_n_6 ;
  wire \counter0_inferred__0/i__carry__3_n_7 ;
  wire \counter0_inferred__0/i__carry__4_n_0 ;
  wire \counter0_inferred__0/i__carry__4_n_1 ;
  wire \counter0_inferred__0/i__carry__4_n_2 ;
  wire \counter0_inferred__0/i__carry__4_n_3 ;
  wire \counter0_inferred__0/i__carry__4_n_4 ;
  wire \counter0_inferred__0/i__carry__4_n_5 ;
  wire \counter0_inferred__0/i__carry__4_n_6 ;
  wire \counter0_inferred__0/i__carry__4_n_7 ;
  wire \counter0_inferred__0/i__carry__5_n_2 ;
  wire \counter0_inferred__0/i__carry__5_n_3 ;
  wire \counter0_inferred__0/i__carry__5_n_5 ;
  wire \counter0_inferred__0/i__carry__5_n_6 ;
  wire \counter0_inferred__0/i__carry__5_n_7 ;
  wire \counter0_inferred__0/i__carry_n_0 ;
  wire \counter0_inferred__0/i__carry_n_1 ;
  wire \counter0_inferred__0/i__carry_n_2 ;
  wire \counter0_inferred__0/i__carry_n_3 ;
  wire \counter0_inferred__0/i__carry_n_4 ;
  wire \counter0_inferred__0/i__carry_n_5 ;
  wire \counter0_inferred__0/i__carry_n_6 ;
  wire \counter0_inferred__0/i__carry_n_7 ;
  wire \counter[0]_i_1__4_n_0 ;
  wire \counter[13]_i_1__4_n_0 ;
  wire \counter[14]_i_1__4_n_0 ;
  wire \counter[15]_i_1__4_n_0 ;
  wire \counter[16]_i_1__4_n_0 ;
  wire \counter[18]_i_1__4_n_0 ;
  wire \counter[20]_i_1__4_n_0 ;
  wire \counter[21]_i_1_n_0 ;
  wire \counter[22]_i_1_n_0 ;
  wire \counter[23]_i_1_n_0 ;
  wire \counter[24]_i_1_n_0 ;
  wire \counter[26]_i_1_n_0 ;
  wire \counter[26]_i_2_n_0 ;
  wire \counter[27]_i_10_n_0 ;
  wire \counter[27]_i_11_n_0 ;
  wire \counter[27]_i_1_n_0 ;
  wire \counter[27]_i_2_n_0 ;
  wire \counter[27]_i_3_n_0 ;
  wire \counter[27]_i_4_n_0 ;
  wire \counter[27]_i_5_n_0 ;
  wire \counter[27]_i_6_n_0 ;
  wire \counter[27]_i_7_n_0 ;
  wire \counter[27]_i_8_n_0 ;
  wire \counter[27]_i_9_n_0 ;
  wire \counter[8]_i_1__4_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire processed_red_button;
  wire rst_global;
  wire trigger_d;
  wire [3:2]\NLW_counter0_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter0_inferred__0/i__carry__5_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counter0_inferred__0/i__carry_n_0 ,\counter0_inferred__0/i__carry_n_1 ,\counter0_inferred__0/i__carry_n_2 ,\counter0_inferred__0/i__carry_n_3 }),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O({\counter0_inferred__0/i__carry_n_4 ,\counter0_inferred__0/i__carry_n_5 ,\counter0_inferred__0/i__carry_n_6 ,\counter0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__0 
       (.CI(\counter0_inferred__0/i__carry_n_0 ),
        .CO({\counter0_inferred__0/i__carry__0_n_0 ,\counter0_inferred__0/i__carry__0_n_1 ,\counter0_inferred__0/i__carry__0_n_2 ,\counter0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O({\counter0_inferred__0/i__carry__0_n_4 ,\counter0_inferred__0/i__carry__0_n_5 ,\counter0_inferred__0/i__carry__0_n_6 ,\counter0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__1 
       (.CI(\counter0_inferred__0/i__carry__0_n_0 ),
        .CO({\counter0_inferred__0/i__carry__1_n_0 ,\counter0_inferred__0/i__carry__1_n_1 ,\counter0_inferred__0/i__carry__1_n_2 ,\counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O({\counter0_inferred__0/i__carry__1_n_4 ,\counter0_inferred__0/i__carry__1_n_5 ,\counter0_inferred__0/i__carry__1_n_6 ,\counter0_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__2 
       (.CI(\counter0_inferred__0/i__carry__1_n_0 ),
        .CO({\counter0_inferred__0/i__carry__2_n_0 ,\counter0_inferred__0/i__carry__2_n_1 ,\counter0_inferred__0/i__carry__2_n_2 ,\counter0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O({\counter0_inferred__0/i__carry__2_n_4 ,\counter0_inferred__0/i__carry__2_n_5 ,\counter0_inferred__0/i__carry__2_n_6 ,\counter0_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__3 
       (.CI(\counter0_inferred__0/i__carry__2_n_0 ),
        .CO({\counter0_inferred__0/i__carry__3_n_0 ,\counter0_inferred__0/i__carry__3_n_1 ,\counter0_inferred__0/i__carry__3_n_2 ,\counter0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O({\counter0_inferred__0/i__carry__3_n_4 ,\counter0_inferred__0/i__carry__3_n_5 ,\counter0_inferred__0/i__carry__3_n_6 ,\counter0_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__4 
       (.CI(\counter0_inferred__0/i__carry__3_n_0 ),
        .CO({\counter0_inferred__0/i__carry__4_n_0 ,\counter0_inferred__0/i__carry__4_n_1 ,\counter0_inferred__0/i__carry__4_n_2 ,\counter0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[24:21]),
        .O({\counter0_inferred__0/i__carry__4_n_4 ,\counter0_inferred__0/i__carry__4_n_5 ,\counter0_inferred__0/i__carry__4_n_6 ,\counter0_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter0_inferred__0/i__carry__5 
       (.CI(\counter0_inferred__0/i__carry__4_n_0 ),
        .CO({\NLW_counter0_inferred__0/i__carry__5_CO_UNCONNECTED [3:2],\counter0_inferred__0/i__carry__5_n_2 ,\counter0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[26:25]}),
        .O({\NLW_counter0_inferred__0/i__carry__5_O_UNCONNECTED [3],\counter0_inferred__0/i__carry__5_n_5 ,\counter0_inferred__0/i__carry__5_n_6 ,\counter0_inferred__0/i__carry__5_n_7 }),
        .S({1'b0,i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__4 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[13]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_7 ),
        .O(\counter[13]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[14]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_6 ),
        .O(\counter[14]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[15]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_5 ),
        .O(\counter[15]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[16]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__2_n_4 ),
        .O(\counter[16]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[18]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__3_n_6 ),
        .O(\counter[18]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[20]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__3_n_4 ),
        .O(\counter[20]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[21]_i_1 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_7 ),
        .O(\counter[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[22]_i_1 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_6 ),
        .O(\counter[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[23]_i_1 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_5 ),
        .O(\counter[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[24]_i_1 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__4_n_4 ),
        .O(\counter[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \counter[26]_i_1 
       (.I0(trigger_d),
        .I1(button_clean),
        .I2(\counter[27]_i_3_n_0 ),
        .I3(\counter[27]_i_4_n_0 ),
        .I4(\counter[27]_i_5_n_0 ),
        .O(\counter[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[26]_i_2 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__5_n_6 ),
        .O(\counter[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[27]_i_1 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(rst_global),
        .O(\counter[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_10 
       (.I0(counter[15]),
        .I1(counter[22]),
        .I2(counter[18]),
        .I3(counter[21]),
        .O(\counter[27]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_11 
       (.I0(counter[2]),
        .I1(counter[25]),
        .I2(counter[1]),
        .I3(counter[26]),
        .O(\counter[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_2 
       (.I0(\counter[27]_i_6_n_0 ),
        .I1(counter[23]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(counter[7]),
        .I5(\counter[27]_i_7_n_0 ),
        .O(\counter[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_3 
       (.I0(counter[8]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[4]),
        .I4(\counter[27]_i_8_n_0 ),
        .O(\counter[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_4 
       (.I0(counter[9]),
        .I1(counter[5]),
        .I2(counter[24]),
        .I3(counter[6]),
        .I4(\counter[27]_i_9_n_0 ),
        .O(\counter[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[27]_i_5 
       (.I0(counter[23]),
        .I1(counter[16]),
        .I2(counter[17]),
        .I3(counter[7]),
        .I4(\counter[27]_i_10_n_0 ),
        .I5(\counter[27]_i_11_n_0 ),
        .O(\counter[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_6 
       (.I0(\counter[27]_i_8_n_0 ),
        .I1(counter[4]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[8]),
        .I5(\counter[27]_i_4_n_0 ),
        .O(\counter[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_7 
       (.I0(counter[26]),
        .I1(counter[1]),
        .I2(counter[25]),
        .I3(counter[2]),
        .I4(\counter[27]_i_10_n_0 ),
        .O(\counter[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_8 
       (.I0(counter[10]),
        .I1(counter[13]),
        .I2(counter[14]),
        .I3(counter[19]),
        .O(\counter[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_9 
       (.I0(counter[11]),
        .I1(counter[20]),
        .I2(counter[27]),
        .I3(counter[12]),
        .O(\counter[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[8]_i_1__4 
       (.I0(\counter[27]_i_3_n_0 ),
        .I1(\counter[27]_i_4_n_0 ),
        .I2(\counter[27]_i_5_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(\counter0_inferred__0/i__carry__0_n_4 ),
        .O(\counter[8]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter[0]_i_1__4_n_0 ),
        .Q(counter[0]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_6 ),
        .Q(counter[10]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_5 ),
        .Q(counter[11]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_4 ),
        .Q(counter[12]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[13]_i_1__4_n_0 ),
        .Q(counter[13]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[14]_i_1__4_n_0 ),
        .Q(counter[14]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[15]_i_1__4_n_0 ),
        .Q(counter[15]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[16]_i_1__4_n_0 ),
        .Q(counter[16]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__3_n_7 ),
        .Q(counter[17]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[18]_i_1__4_n_0 ),
        .Q(counter[18]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__3_n_5 ),
        .Q(counter[19]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_7 ),
        .Q(counter[1]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[20]_i_1__4_n_0 ),
        .Q(counter[20]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[21]_i_1_n_0 ),
        .Q(counter[21]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[22]_i_1_n_0 ),
        .Q(counter[22]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[23]_i_1_n_0 ),
        .Q(counter[23]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[24]_i_1_n_0 ),
        .Q(counter[24]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__5_n_7 ),
        .Q(counter[25]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[26]_i_2_n_0 ),
        .Q(counter[26]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__5_n_5 ),
        .Q(counter[27]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_6 ),
        .Q(counter[2]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_5 ),
        .Q(counter[3]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry_n_4 ),
        .Q(counter[4]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__0_n_7 ),
        .Q(counter[5]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__0_n_6 ),
        .Q(counter[6]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__0_n_5 ),
        .Q(counter[7]),
        .R(\counter[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\counter[26]_i_1_n_0 ),
        .D(\counter[8]_i_1__4_n_0 ),
        .Q(counter[8]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\counter[27]_i_2_n_0 ),
        .D(\counter0_inferred__0/i__carry__1_n_7 ),
        .Q(counter[9]),
        .R(\counter[27]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(counter[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(counter[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(counter[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(counter[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(counter[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(counter[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(counter[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(counter[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(counter[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(counter[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(counter[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(counter[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(counter[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(counter[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(counter[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(counter[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(counter[24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(counter[23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(counter[22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(counter[21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(counter[27]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(counter[26]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(counter[25]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(counter[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(counter[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(counter[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(counter[1]),
        .O(i__carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pulse_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[27]_i_2_n_0 ),
        .Q(processed_red_button),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    trigger_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_clean),
        .Q(trigger_d),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_9
   (processed_green_button,
    rst_global,
    CLK,
    button_clean);
  output processed_green_button;
  input rst_global;
  input CLK;
  input button_clean;

  wire CLK;
  wire button_clean;
  wire [27:0]counter;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_i_1_n_0;
  wire counter0_carry__3_i_2_n_0;
  wire counter0_carry__3_i_3_n_0;
  wire counter0_carry__3_i_4_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_i_1_n_0;
  wire counter0_carry__4_i_2_n_0;
  wire counter0_carry__4_i_3_n_0;
  wire counter0_carry__4_i_4_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_i_1_n_0;
  wire counter0_carry__5_i_2_n_0;
  wire counter0_carry__5_i_3_n_0;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1__5_n_0 ;
  wire \counter[13]_i_1__5_n_0 ;
  wire \counter[14]_i_1__5_n_0 ;
  wire \counter[15]_i_1__5_n_0 ;
  wire \counter[16]_i_1__5_n_0 ;
  wire \counter[18]_i_1__5_n_0 ;
  wire \counter[20]_i_1__5_n_0 ;
  wire \counter[21]_i_1__0_n_0 ;
  wire \counter[22]_i_1__0_n_0 ;
  wire \counter[23]_i_1__0_n_0 ;
  wire \counter[24]_i_1__0_n_0 ;
  wire \counter[26]_i_1__0_n_0 ;
  wire \counter[26]_i_2__0_n_0 ;
  wire \counter[27]_i_10__0_n_0 ;
  wire \counter[27]_i_11__0_n_0 ;
  wire \counter[27]_i_1__0_n_0 ;
  wire \counter[27]_i_2__0_n_0 ;
  wire \counter[27]_i_3__0_n_0 ;
  wire \counter[27]_i_4__0_n_0 ;
  wire \counter[27]_i_5__0_n_0 ;
  wire \counter[27]_i_6__0_n_0 ;
  wire \counter[27]_i_7__0_n_0 ;
  wire \counter[27]_i_8__0_n_0 ;
  wire \counter[27]_i_9__0_n_0 ;
  wire \counter[8]_i_1__5_n_0 ;
  wire processed_green_button;
  wire rst_global;
  wire trigger_d;
  wire [3:2]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_1
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_2
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_3
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_4
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_1
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_2
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_3
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_4
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_3
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_4
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({counter0_carry__3_i_1_n_0,counter0_carry__3_i_2_n_0,counter0_carry__3_i_3_n_0,counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_1
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_2
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_3
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_4
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(counter[24:21]),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({counter0_carry__4_i_1_n_0,counter0_carry__4_i_2_n_0,counter0_carry__4_i_3_n_0,counter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_1
       (.I0(counter[24]),
        .O(counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_2
       (.I0(counter[23]),
        .O(counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_3
       (.I0(counter[22]),
        .O(counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_4
       (.I0(counter[21]),
        .O(counter0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({NLW_counter0_carry__5_CO_UNCONNECTED[3:2],counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[26:25]}),
        .O({NLW_counter0_carry__5_O_UNCONNECTED[3],counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({1'b0,counter0_carry__5_i_1_n_0,counter0_carry__5_i_2_n_0,counter0_carry__5_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_1
       (.I0(counter[27]),
        .O(counter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_2
       (.I0(counter[26]),
        .O(counter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_3
       (.I0(counter[25]),
        .O(counter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_1
       (.I0(counter[4]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_2
       (.I0(counter[3]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3
       (.I0(counter[2]),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_4
       (.I0(counter[1]),
        .O(counter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__5 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[13]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_7),
        .O(\counter[13]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[14]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_6),
        .O(\counter[14]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[15]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_5),
        .O(\counter[15]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[16]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__2_n_4),
        .O(\counter[16]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[18]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__3_n_6),
        .O(\counter[18]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[20]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__3_n_4),
        .O(\counter[20]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[21]_i_1__0 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_7),
        .O(\counter[21]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[22]_i_1__0 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_6),
        .O(\counter[22]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[23]_i_1__0 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_5),
        .O(\counter[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[24]_i_1__0 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__4_n_4),
        .O(\counter[24]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \counter[26]_i_1__0 
       (.I0(trigger_d),
        .I1(button_clean),
        .I2(\counter[27]_i_3__0_n_0 ),
        .I3(\counter[27]_i_4__0_n_0 ),
        .I4(\counter[27]_i_5__0_n_0 ),
        .O(\counter[26]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[26]_i_2__0 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__5_n_6),
        .O(\counter[26]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_10__0 
       (.I0(counter[27]),
        .I1(counter[10]),
        .I2(counter[7]),
        .I3(counter[20]),
        .O(\counter[27]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_11__0 
       (.I0(counter[1]),
        .I1(counter[26]),
        .I2(counter[8]),
        .I3(counter[18]),
        .O(\counter[27]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[27]_i_1__0 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(rst_global),
        .O(\counter[27]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_2__0 
       (.I0(\counter[27]_i_6__0_n_0 ),
        .I1(counter[25]),
        .I2(counter[12]),
        .I3(counter[13]),
        .I4(counter[2]),
        .I5(\counter[27]_i_7__0_n_0 ),
        .O(\counter[27]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_3__0 
       (.I0(counter[0]),
        .I1(counter[6]),
        .I2(counter[19]),
        .I3(counter[17]),
        .I4(\counter[27]_i_8__0_n_0 ),
        .O(\counter[27]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_4__0 
       (.I0(counter[15]),
        .I1(counter[11]),
        .I2(counter[22]),
        .I3(counter[5]),
        .I4(\counter[27]_i_9__0_n_0 ),
        .O(\counter[27]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[27]_i_5__0 
       (.I0(counter[25]),
        .I1(counter[12]),
        .I2(counter[13]),
        .I3(counter[2]),
        .I4(\counter[27]_i_10__0_n_0 ),
        .I5(\counter[27]_i_11__0_n_0 ),
        .O(\counter[27]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[27]_i_6__0 
       (.I0(\counter[27]_i_8__0_n_0 ),
        .I1(counter[17]),
        .I2(counter[19]),
        .I3(counter[6]),
        .I4(counter[0]),
        .I5(\counter[27]_i_4__0_n_0 ),
        .O(\counter[27]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[27]_i_7__0 
       (.I0(counter[18]),
        .I1(counter[8]),
        .I2(counter[26]),
        .I3(counter[1]),
        .I4(\counter[27]_i_10__0_n_0 ),
        .O(\counter[27]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_8__0 
       (.I0(counter[14]),
        .I1(counter[23]),
        .I2(counter[3]),
        .I3(counter[16]),
        .O(\counter[27]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[27]_i_9__0 
       (.I0(counter[4]),
        .I1(counter[9]),
        .I2(counter[21]),
        .I3(counter[24]),
        .O(\counter[27]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \counter[8]_i_1__5 
       (.I0(\counter[27]_i_3__0_n_0 ),
        .I1(\counter[27]_i_4__0_n_0 ),
        .I2(\counter[27]_i_5__0_n_0 ),
        .I3(button_clean),
        .I4(trigger_d),
        .I5(counter0_carry__0_n_4),
        .O(\counter[8]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(\counter[0]_i_1__5_n_0 ),
        .Q(counter[0]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__1_n_6),
        .Q(counter[10]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__1_n_5),
        .Q(counter[11]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__1_n_4),
        .Q(counter[12]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[13]_i_1__5_n_0 ),
        .Q(counter[13]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[14]_i_1__5_n_0 ),
        .Q(counter[14]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[15]_i_1__5_n_0 ),
        .Q(counter[15]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[16]_i_1__5_n_0 ),
        .Q(counter[16]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__3_n_7),
        .Q(counter[17]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[18]_i_1__5_n_0 ),
        .Q(counter[18]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__3_n_5),
        .Q(counter[19]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry_n_7),
        .Q(counter[1]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[20]_i_1__5_n_0 ),
        .Q(counter[20]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[21]_i_1__0_n_0 ),
        .Q(counter[21]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[22]_i_1__0_n_0 ),
        .Q(counter[22]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[23]_i_1__0_n_0 ),
        .Q(counter[23]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[24]_i_1__0_n_0 ),
        .Q(counter[24]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__5_n_7),
        .Q(counter[25]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[26]_i_2__0_n_0 ),
        .Q(counter[26]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__5_n_5),
        .Q(counter[27]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry_n_6),
        .Q(counter[2]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry_n_5),
        .Q(counter[3]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry_n_4),
        .Q(counter[4]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__0_n_7),
        .Q(counter[5]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__0_n_6),
        .Q(counter[6]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__0_n_5),
        .Q(counter[7]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\counter[26]_i_1__0_n_0 ),
        .D(\counter[8]_i_1__5_n_0 ),
        .Q(counter[8]),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\counter[27]_i_2__0_n_0 ),
        .D(counter0_carry__1_n_7),
        .Q(counter[9]),
        .R(\counter[27]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    pulse_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[27]_i_2__0_n_0 ),
        .Q(processed_green_button),
        .R(rst_global));
  FDRE #(
    .INIT(1'b0)) 
    trigger_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_clean),
        .Q(trigger_d),
        .R(1'b0));
endmodule

module power_on_reset
   (rst_global,
    rst_reg_0,
    rst_reg_1,
    rst_reg_2,
    rst_reg_3,
    rst_reg_4,
    rst_reg_5,
    rst_reg_6,
    rst_reg_7,
    rst_reg_8,
    rst_reg_9,
    rst_reg_10,
    rst_reg_11,
    rst_reg_12,
    rst_reg_13,
    rst_reg_14,
    rst_reg_15,
    rst_reg_16,
    rst_reg_17,
    rst_reg_18,
    rst_reg_19,
    rst_reg_20,
    rst_reg_21,
    rst_reg_22,
    rst_reg_23,
    rst_reg_24,
    rst_reg_25,
    rst_reg_26,
    rst_reg_27,
    rst_reg_28,
    rst_reg_29,
    rst_reg_30,
    rst_reg_31,
    rst_reg_32,
    CLK,
    pulse,
    SW_IBUF,
    \op_reg[0]_P ,
    \op_reg[0]_P_0 ,
    \op_reg[0]_P_1 );
  output rst_global;
  output rst_reg_0;
  output rst_reg_1;
  output rst_reg_2;
  output rst_reg_3;
  output rst_reg_4;
  output rst_reg_5;
  output rst_reg_6;
  output rst_reg_7;
  output rst_reg_8;
  output rst_reg_9;
  output rst_reg_10;
  output rst_reg_11;
  output rst_reg_12;
  output rst_reg_13;
  output rst_reg_14;
  output rst_reg_15;
  output rst_reg_16;
  output rst_reg_17;
  output rst_reg_18;
  output rst_reg_19;
  output rst_reg_20;
  output rst_reg_21;
  output rst_reg_22;
  output rst_reg_23;
  output rst_reg_24;
  output rst_reg_25;
  output rst_reg_26;
  output rst_reg_27;
  output rst_reg_28;
  output rst_reg_29;
  output rst_reg_30;
  output rst_reg_31;
  output rst_reg_32;
  input CLK;
  input pulse;
  input [0:15]SW_IBUF;
  input \op_reg[0]_P ;
  input \op_reg[0]_P_0 ;
  input \op_reg[0]_P_1 ;

  wire CLK;
  wire [0:15]SW_IBUF;
  wire \counter[0]_i_2_n_0 ;
  wire [23:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_2 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_0 ;
  wire \counter_reg[16]_i_1__0_n_1 ;
  wire \counter_reg[16]_i_1__0_n_2 ;
  wire \counter_reg[16]_i_1__0_n_3 ;
  wire \counter_reg[16]_i_1__0_n_4 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[20]_i_1__0_n_1 ;
  wire \counter_reg[20]_i_1__0_n_2 ;
  wire \counter_reg[20]_i_1__0_n_3 ;
  wire \counter_reg[20]_i_1__0_n_4 ;
  wire \counter_reg[20]_i_1__0_n_5 ;
  wire \counter_reg[20]_i_1__0_n_6 ;
  wire \counter_reg[20]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \op_reg[0]_P ;
  wire \op_reg[0]_P_0 ;
  wire \op_reg[0]_P_1 ;
  wire pulse;
  wire rst_global;
  wire rst_i_2_n_0;
  wire rst_i_3_n_0;
  wire rst_i_4_n_0;
  wire rst_i_5_n_0;
  wire rst_i_6_n_0;
  wire rst_i_7_n_0;
  wire rst_reg_0;
  wire rst_reg_1;
  wire rst_reg_10;
  wire rst_reg_11;
  wire rst_reg_12;
  wire rst_reg_13;
  wire rst_reg_14;
  wire rst_reg_15;
  wire rst_reg_16;
  wire rst_reg_17;
  wire rst_reg_18;
  wire rst_reg_19;
  wire rst_reg_2;
  wire rst_reg_20;
  wire rst_reg_21;
  wire rst_reg_22;
  wire rst_reg_23;
  wire rst_reg_24;
  wire rst_reg_25;
  wire rst_reg_26;
  wire rst_reg_27;
  wire rst_reg_28;
  wire rst_reg_29;
  wire rst_reg_3;
  wire rst_reg_30;
  wire rst_reg_31;
  wire rst_reg_32;
  wire rst_reg_4;
  wire rst_reg_5;
  wire rst_reg_6;
  wire rst_reg_7;
  wire rst_reg_8;
  wire rst_reg_9;
  wire sel;
  wire [3:3]\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_1__9 
       (.I0(rst_global),
        .I1(pulse),
        .O(rst_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\counter_reg[12]_i_1__0_n_1 ,\counter_reg[12]_i_1__0_n_2 ,\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\counter_reg[16]_i_1__0_n_0 ,\counter_reg[16]_i_1__0_n_1 ,\counter_reg[16]_i_1__0_n_2 ,\counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__0_n_4 ,\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_4 ),
        .Q(counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[20]_i_1__0_n_7 ),
        .Q(counter_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_1__0 
       (.CI(\counter_reg[16]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED [3],\counter_reg[20]_i_1__0_n_1 ,\counter_reg[20]_i_1__0_n_2 ,\counter_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1__0_n_4 ,\counter_reg[20]_i_1__0_n_5 ,\counter_reg[20]_i_1__0_n_6 ,\counter_reg[20]_i_1__0_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[20]_i_1__0_n_6 ),
        .Q(counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[20]_i_1__0_n_5 ),
        .Q(counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[20]_i_1__0_n_4 ),
        .Q(counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAABA0000)) 
    \op_reg[0]_LDC_i_1 
       (.I0(SW_IBUF[15]),
        .I1(\op_reg[0]_P ),
        .I2(\op_reg[0]_P_0 ),
        .I3(\op_reg[0]_P_1 ),
        .I4(rst_global),
        .O(rst_reg_31));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55450000)) 
    \op_reg[0]_LDC_i_2 
       (.I0(SW_IBUF[15]),
        .I1(\op_reg[0]_P ),
        .I2(\op_reg[0]_P_0 ),
        .I3(\op_reg[0]_P_1 ),
        .I4(rst_global),
        .O(rst_reg_32));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[10]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[5]),
        .O(rst_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[10]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[5]),
        .O(rst_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[11]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[4]),
        .O(rst_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[11]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[4]),
        .O(rst_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[12]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[3]),
        .O(rst_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[12]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[3]),
        .O(rst_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[13]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[2]),
        .O(rst_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[13]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[2]),
        .O(rst_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[14]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[1]),
        .O(rst_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[14]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[1]),
        .O(rst_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[15]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[0]),
        .O(rst_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[15]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[0]),
        .O(rst_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[1]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[14]),
        .O(rst_reg_29));
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[1]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[14]),
        .O(rst_reg_30));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[2]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[13]),
        .O(rst_reg_27));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[2]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[13]),
        .O(rst_reg_28));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[3]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[12]),
        .O(rst_reg_25));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[3]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[12]),
        .O(rst_reg_26));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[4]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[11]),
        .O(rst_reg_23));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[4]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[11]),
        .O(rst_reg_24));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[5]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[10]),
        .O(rst_reg_21));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[5]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[10]),
        .O(rst_reg_22));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[6]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[9]),
        .O(rst_reg_19));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[6]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[9]),
        .O(rst_reg_20));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[7]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[8]),
        .O(rst_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[7]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[8]),
        .O(rst_reg_18));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[8]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[7]),
        .O(rst_reg_15));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[8]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[7]),
        .O(rst_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op_reg[9]_LDC_i_1 
       (.I0(rst_global),
        .I1(SW_IBUF[6]),
        .O(rst_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_reg[9]_LDC_i_2 
       (.I0(rst_global),
        .I1(SW_IBUF[6]),
        .O(rst_reg_14));
  LUT6 #(
    .INIT(64'h555555555555FF75)) 
    rst_i_1
       (.I0(counter_reg[23]),
        .I1(rst_i_2_n_0),
        .I2(rst_i_3_n_0),
        .I3(rst_i_4_n_0),
        .I4(counter_reg[22]),
        .I5(counter_reg[21]),
        .O(sel));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_i_2
       (.I0(counter_reg[18]),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .O(rst_i_2_n_0));
  LUT6 #(
    .INIT(64'h555555555555777F)) 
    rst_i_3
       (.I0(counter_reg[15]),
        .I1(counter_reg[12]),
        .I2(rst_i_5_n_0),
        .I3(counter_reg[11]),
        .I4(counter_reg[14]),
        .I5(counter_reg[13]),
        .O(rst_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rst_i_4
       (.I0(counter_reg[20]),
        .I1(counter_reg[19]),
        .O(rst_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEFE000000000000)) 
    rst_i_5
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(rst_i_6_n_0),
        .I3(rst_i_7_n_0),
        .I4(counter_reg[9]),
        .I5(counter_reg[10]),
        .O(rst_i_5_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    rst_i_6
       (.I0(counter_reg[5]),
        .I1(counter_reg[1]),
        .I2(counter_reg[3]),
        .O(rst_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    rst_i_7
       (.I0(counter_reg[6]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[4]),
        .O(rst_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sel),
        .Q(rst_global),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
