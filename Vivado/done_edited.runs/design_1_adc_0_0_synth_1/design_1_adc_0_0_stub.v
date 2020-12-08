// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun 21 11:36:31 2019
// Host        : AshanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_0_0_stub.v
// Design      : design_1_adc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(resetn, adc_clock, h_clock, signal_in, 
  recieve_ready, data_ready, data_ready_test, data, cs, adc_clock_out)
/* synthesis syn_black_box black_box_pad_pin="resetn,adc_clock,h_clock,signal_in,recieve_ready,data_ready,data_ready_test,data[11:0],cs,adc_clock_out" */;
  input resetn;
  input adc_clock;
  input h_clock;
  input signal_in;
  input recieve_ready;
  output data_ready;
  output data_ready_test;
  output [11:0]data;
  output cs;
  output adc_clock_out;
endmodule
