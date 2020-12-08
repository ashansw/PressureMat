// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun 21 11:36:31 2019
// Host        : AshanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_0_0_sim_netlist.v
// Design      : design_1_adc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc
   (data,
    adc_clock_out,
    data_ready_test,
    cs,
    signal_in,
    adc_clock,
    resetn,
    h_clock,
    recieve_ready);
  output [11:0]data;
  output adc_clock_out;
  output data_ready_test;
  output cs;
  input signal_in;
  input adc_clock;
  input resetn;
  input h_clock;
  input recieve_ready;

  wire \/i__n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[4]_i_1_n_0 ;
  wire adc_clock;
  wire adc_clock_out;
  wire clock;
  wire clock_reg_i_1_n_0;
  wire clock_reg_i_2_n_0;
  wire clock_reg_i_3_n_0;
  wire [9:0]counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire \counter[9]_i_3_n_0 ;
  wire [9:0]counter_0;
  wire cs;
  wire cs_i_1_n_0;
  wire [11:0]data;
  wire \data[0]_i_1_n_0 ;
  wire \data[0]_i_2_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[10]_i_2_n_0 ;
  wire \data[10]_i_3_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[11]_i_2_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[2]_i_3_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[5]_i_3_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[6]_i_3_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_3_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[8]_i_2_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire \data[9]_i_2_n_0 ;
  wire \data[9]_i_3_n_0 ;
  wire data_ready_i_1_n_0;
  wire data_ready_i_2_n_0;
  wire data_ready_test;
  wire h_clock;
  wire recieve_ready;
  wire resetn;
  wire signal_in;
  wire [4:0]state;

  LUT6 #(
    .INIT(64'h0000100000101000)) 
    \/i_ 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[4]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(recieve_ready),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h0000000073777777)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[3]),
        .I1(state[4]),
        .I2(state[2]),
        .I3(recieve_ready),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[3]),
        .I1(state[4]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[3]),
        .I1(state[4]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h52222222)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state[3]),
        .I1(state[4]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0080FF00)) 
    \FSM_sequential_state[4]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(state[3]),
        .O(\FSM_sequential_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(data_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(data_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(data_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(state[3]),
        .R(data_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100" *) 
  FDRE \FSM_sequential_state_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[4]_i_1_n_0 ),
        .Q(state[4]),
        .R(data_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    clock_reg_i_1
       (.I0(clock_reg_i_2_n_0),
        .I1(clock_reg_i_3_n_0),
        .I2(resetn),
        .I3(counter[2]),
        .I4(counter[0]),
        .I5(adc_clock_out),
        .O(clock_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    clock_reg_i_2
       (.I0(counter[4]),
        .I1(counter[1]),
        .I2(counter[9]),
        .I3(counter[8]),
        .O(clock_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    clock_reg_i_3
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(clock_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_reg_reg
       (.C(adc_clock),
        .CE(1'b1),
        .D(clock_reg_i_1_n_0),
        .Q(adc_clock_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3333333333333332)) 
    \counter[0]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(\counter[0]_i_2_n_0 ),
        .I3(counter[1]),
        .I4(counter[4]),
        .I5(clock_reg_i_3_n_0),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[0]_i_2 
       (.I0(counter[8]),
        .I1(counter[9]),
        .O(\counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hCFC0C0C0E0E0E0E0)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(counter[3]),
        .I3(counter[2]),
        .I4(counter[0]),
        .I5(counter[1]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \counter[3]_i_2 
       (.I0(counter[5]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[7]),
        .I4(counter[6]),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F7FFF7FFF7FFF7)) 
    \counter[3]_i_3 
       (.I0(counter[8]),
        .I1(counter[9]),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[0]),
        .O(\counter[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFF888855F58888)) 
    \counter[5]_i_1 
       (.I0(counter[3]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(\counter[5]_i_2_n_0 ),
        .I3(counter[1]),
        .I4(counter[5]),
        .I5(\counter[7]_i_2_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[5]_i_2 
       (.I0(counter[6]),
        .I1(counter[7]),
        .O(\counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FFF011F0)) 
    \counter[6]_i_1 
       (.I0(counter[7]),
        .I1(counter[1]),
        .I2(\counter[9]_i_2_n_0 ),
        .I3(counter[6]),
        .I4(\counter[7]_i_2_n_0 ),
        .I5(\counter[6]_i_2_n_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[6]_i_2 
       (.I0(counter[3]),
        .I1(counter[5]),
        .O(\counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF858F0F0F0F0F0F0)) 
    \counter[7]_i_1 
       (.I0(counter[6]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[7]),
        .I3(\counter[7]_i_2_n_0 ),
        .I4(counter[5]),
        .I5(counter[3]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'h0FFFFFFFFFFFFFF7)) 
    \counter[7]_i_2 
       (.I0(counter[9]),
        .I1(counter[8]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[4]),
        .O(\counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FFF011F0)) 
    \counter[8]_i_1 
       (.I0(counter[9]),
        .I1(counter[1]),
        .I2(\counter[9]_i_2_n_0 ),
        .I3(counter[8]),
        .I4(\counter[9]_i_3_n_0 ),
        .I5(clock_reg_i_3_n_0),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0F0F858)) 
    \counter[9]_i_1 
       (.I0(counter[8]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[9]),
        .I3(\counter[9]_i_3_n_0 ),
        .I4(clock_reg_i_3_n_0),
        .O(counter_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[9]_i_2 
       (.I0(counter[4]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .O(\counter[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFE)) 
    \counter[9]_i_3 
       (.I0(counter[4]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[0]),
        .O(\counter[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(adc_clock),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(data_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h74)) 
    cs_i_1
       (.I0(state[3]),
        .I1(\/i__n_0 ),
        .I2(cs),
        .O(cs_i_1_n_0));
  FDSE cs_reg
       (.C(clock),
        .CE(1'b1),
        .D(cs_i_1_n_0),
        .Q(cs),
        .S(data_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \data[0]_i_1 
       (.I0(state[3]),
        .I1(signal_in),
        .I2(\data[2]_i_2_n_0 ),
        .I3(\data[9]_i_3_n_0 ),
        .I4(\data[0]_i_2_n_0 ),
        .I5(data[0]),
        .O(\data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \data[0]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(state[3]),
        .O(\data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data[10]_i_1 
       (.I0(\data[10]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\data[10]_i_3_n_0 ),
        .I5(data[10]),
        .O(\data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \data[10]_i_2 
       (.I0(state[0]),
        .I1(signal_in),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .O(\data[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data[10]_i_3 
       (.I0(state[3]),
        .I1(state[4]),
        .O(\data[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \data[11]_i_1 
       (.I0(state[2]),
        .I1(signal_in),
        .I2(state[3]),
        .I3(\data[11]_i_2_n_0 ),
        .I4(data[11]),
        .O(\data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data[11]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[4]),
        .O(\data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \data[1]_i_1 
       (.I0(state[3]),
        .I1(\data[9]_i_3_n_0 ),
        .I2(\data[2]_i_2_n_0 ),
        .I3(signal_in),
        .I4(\data[1]_i_2_n_0 ),
        .I5(data[1]),
        .O(\data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \data[1]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[4]),
        .I4(state[3]),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \data[2]_i_1 
       (.I0(state[3]),
        .I1(\data[9]_i_3_n_0 ),
        .I2(signal_in),
        .I3(\data[2]_i_2_n_0 ),
        .I4(\data[2]_i_3_n_0 ),
        .I5(data[2]),
        .O(\data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \data[2]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\data[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data[2]_i_3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[4]),
        .O(\data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \data[3]_i_1 
       (.I0(\data[3]_i_2_n_0 ),
        .I1(state[2]),
        .I2(\data[7]_i_3_n_0 ),
        .I3(state[4]),
        .I4(state[3]),
        .I5(data[3]),
        .O(\data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \data[3]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(signal_in),
        .I4(state[1]),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data[4]_i_1 
       (.I0(\data[4]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\data[5]_i_3_n_0 ),
        .I3(state[0]),
        .I4(state[4]),
        .I5(data[4]),
        .O(\data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \data[4]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(signal_in),
        .I3(state[0]),
        .I4(state[1]),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data[5]_i_1 
       (.I0(\data[5]_i_2_n_0 ),
        .I1(state[0]),
        .I2(\data[5]_i_3_n_0 ),
        .I3(state[1]),
        .I4(state[4]),
        .I5(data[5]),
        .O(\data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \data[5]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(signal_in),
        .O(\data[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data[5]_i_3 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data[6]_i_1 
       (.I0(\data[6]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\data[6]_i_3_n_0 ),
        .I5(data[6]),
        .O(\data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \data[6]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(signal_in),
        .I4(state[0]),
        .O(\data[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data[6]_i_3 
       (.I0(state[0]),
        .I1(state[4]),
        .O(\data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \data[7]_i_1 
       (.I0(\data[7]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\data[7]_i_3_n_0 ),
        .I3(state[4]),
        .I4(state[2]),
        .I5(data[7]),
        .O(\data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data[7]_i_2 
       (.I0(state[1]),
        .I1(signal_in),
        .I2(state[0]),
        .O(\data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data[7]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \data[8]_i_1 
       (.I0(\data[8]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\data[10]_i_3_n_0 ),
        .I5(data[8]),
        .O(\data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \data[8]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(signal_in),
        .I3(state[2]),
        .I4(state[3]),
        .O(\data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data[9]_i_1 
       (.I0(\data[9]_i_2_n_0 ),
        .I1(state[0]),
        .I2(\data[9]_i_3_n_0 ),
        .I3(state[3]),
        .I4(state[4]),
        .I5(data[9]),
        .O(\data[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \data[9]_i_2 
       (.I0(signal_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .O(\data[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[9]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\data[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    data_ready_i_1
       (.I0(resetn),
        .O(data_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    data_ready_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[4]),
        .I4(state[2]),
        .I5(data_ready_test),
        .O(data_ready_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ready_i_3
       (.I0(adc_clock_out),
        .I1(resetn),
        .I2(h_clock),
        .O(clock));
  FDRE data_ready_reg
       (.C(clock),
        .CE(1'b1),
        .D(data_ready_i_2_n_0),
        .Q(data_ready_test),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[0]_i_1_n_0 ),
        .Q(data[0]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[10]_i_1_n_0 ),
        .Q(data[10]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[11]_i_1_n_0 ),
        .Q(data[11]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[1]_i_1_n_0 ),
        .Q(data[1]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[2]_i_1_n_0 ),
        .Q(data[2]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[3]_i_1_n_0 ),
        .Q(data[3]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[4]_i_1_n_0 ),
        .Q(data[4]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[5]_i_1_n_0 ),
        .Q(data[5]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[6]_i_1_n_0 ),
        .Q(data[6]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[7]_i_1_n_0 ),
        .Q(data[7]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[8]_i_1_n_0 ),
        .Q(data[8]),
        .R(data_ready_i_1_n_0));
  FDRE \data_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(\data[9]_i_1_n_0 ),
        .Q(data[9]),
        .R(data_ready_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_adc_0_0,adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "adc,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (resetn,
    adc_clock,
    h_clock,
    signal_in,
    recieve_ready,
    data_ready,
    data_ready_test,
    data,
    cs,
    adc_clock_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clock, ASSOCIATED_RESET resetn, FREQ_HZ 1000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *) input adc_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 h_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME h_clock, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input h_clock;
  input signal_in;
  input recieve_ready;
  output data_ready;
  output data_ready_test;
  output [11:0]data;
  output cs;
  output adc_clock_out;

  wire adc_clock;
  wire adc_clock_out;
  wire cs;
  wire [11:0]data;
  wire data_ready_test;
  wire h_clock;
  wire recieve_ready;
  wire resetn;
  wire signal_in;

  assign data_ready = data_ready_test;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc inst
       (.adc_clock(adc_clock),
        .adc_clock_out(adc_clock_out),
        .cs(cs),
        .data(data),
        .data_ready_test(data_ready_test),
        .h_clock(h_clock),
        .recieve_ready(recieve_ready),
        .resetn(resetn),
        .signal_in(signal_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
