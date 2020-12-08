-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jun 21 11:36:34 2019
-- Host        : AshanPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/AshanWarnakulasuriya/Desktop/Mphil/20180916/done_edited/done_edited.srcs/sources_1/bd/design_1/ip/design_1_adc_0_0/design_1_adc_0_0_stub.vhdl
-- Design      : design_1_adc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_adc_0_0 is
  Port ( 
    resetn : in STD_LOGIC;
    adc_clock : in STD_LOGIC;
    h_clock : in STD_LOGIC;
    signal_in : in STD_LOGIC;
    recieve_ready : in STD_LOGIC;
    data_ready : out STD_LOGIC;
    data_ready_test : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    cs : out STD_LOGIC;
    adc_clock_out : out STD_LOGIC
  );

end design_1_adc_0_0;

architecture stub of design_1_adc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetn,adc_clock,h_clock,signal_in,recieve_ready,data_ready,data_ready_test,data[11:0],cs,adc_clock_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adc,Vivado 2019.1";
begin
end;
