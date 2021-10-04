// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ADVIOS,hls_ip_2017_2,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.330000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=154,HLS_SYN_LUT=183}" *)

module ADVIOS (
        clk,
        reset,
        ctrl,
        inSwitch,
        outLeds
);


input   clk;
input   reset;
input  [3:0] ctrl;
input  [3:0] inSwitch;
output  [3:0] outLeds;

reg[3:0] outLeds;

wire   [0:0] ADVIOS_ssdm_threa_load_fu_128_p1;
wire   [1:0] ap_CS_fsm;
wire   [27:0] grp_ADVIOS_periodic_Incrementer_fu_80_ADVIOS_count_V;
wire    grp_ADVIOS_periodic_Incrementer_fu_80_ADVIOS_count_V_ap_vld;
wire    grp_ADVIOS_periodic_Incrementer_fu_80_sec_pulse;
wire    grp_ADVIOS_periodic_Incrementer_fu_80_sec_pulse_ap_vld;
wire   [3:0] grp_ADVIOS_led_Controller_fu_104_outLeds;
wire    grp_ADVIOS_led_Controller_fu_104_outLeds_ap_vld;
wire   [3:0] grp_ADVIOS_led_Controller_fu_104_ADVIOS_switchs_V;
wire    grp_ADVIOS_led_Controller_fu_104_ADVIOS_switchs_V_ap_vld;
wire   [3:0] grp_ADVIOS_led_Controller_fu_104_ADVIOS_control_V;
wire    grp_ADVIOS_led_Controller_fu_104_ADVIOS_control_V_ap_vld;
wire   [3:0] grp_ADVIOS_led_Controller_fu_104_ADVIOS_sec_counter_V_o;
wire    grp_ADVIOS_led_Controller_fu_104_ADVIOS_sec_counter_V_o_ap_vld;
wire    grp_ADVIOS_led_Controller_fu_104_sec_pulse_i;
wire    grp_ADVIOS_led_Controller_fu_104_sec_pulse_o;
wire    grp_ADVIOS_led_Controller_fu_104_sec_pulse_o_ap_vld;
wire    ap_CS_fsm_state2;
reg   [3:0] ADVIOS_sec_counter_V;
reg   [0:0] sec_pulse;

ADVIOS_periodic_Incrementer grp_ADVIOS_periodic_Incrementer_fu_80(
    .ap_clk(clk),
    .ap_rst(reset),
    .ADVIOS_count_V(grp_ADVIOS_periodic_Incrementer_fu_80_ADVIOS_count_V),
    .ADVIOS_count_V_ap_vld(grp_ADVIOS_periodic_Incrementer_fu_80_ADVIOS_count_V_ap_vld),
    .sec_pulse(grp_ADVIOS_periodic_Incrementer_fu_80_sec_pulse),
    .sec_pulse_ap_vld(grp_ADVIOS_periodic_Incrementer_fu_80_sec_pulse_ap_vld)
);

ADVIOS_led_Controller grp_ADVIOS_led_Controller_fu_104(
    .ap_clk(clk),
    .ap_rst(reset),
    .ctrl(ctrl),
    .inSwitch(inSwitch),
    .outLeds(grp_ADVIOS_led_Controller_fu_104_outLeds),
    .outLeds_ap_vld(grp_ADVIOS_led_Controller_fu_104_outLeds_ap_vld),
    .ADVIOS_switchs_V(grp_ADVIOS_led_Controller_fu_104_ADVIOS_switchs_V),
    .ADVIOS_switchs_V_ap_vld(grp_ADVIOS_led_Controller_fu_104_ADVIOS_switchs_V_ap_vld),
    .ADVIOS_control_V(grp_ADVIOS_led_Controller_fu_104_ADVIOS_control_V),
    .ADVIOS_control_V_ap_vld(grp_ADVIOS_led_Controller_fu_104_ADVIOS_control_V_ap_vld),
    .ADVIOS_sec_counter_V_i(ADVIOS_sec_counter_V),
    .ADVIOS_sec_counter_V_o(grp_ADVIOS_led_Controller_fu_104_ADVIOS_sec_counter_V_o),
    .ADVIOS_sec_counter_V_o_ap_vld(grp_ADVIOS_led_Controller_fu_104_ADVIOS_sec_counter_V_o_ap_vld),
    .sec_pulse_i(grp_ADVIOS_led_Controller_fu_104_sec_pulse_i),
    .sec_pulse_o(grp_ADVIOS_led_Controller_fu_104_sec_pulse_o),
    .sec_pulse_o_ap_vld(grp_ADVIOS_led_Controller_fu_104_sec_pulse_o_ap_vld)
);

always @ (posedge clk) begin
    if ((1'b1 == grp_ADVIOS_led_Controller_fu_104_ADVIOS_sec_counter_V_o_ap_vld)) begin
        ADVIOS_sec_counter_V <= grp_ADVIOS_led_Controller_fu_104_ADVIOS_sec_counter_V_o;
    end
end

always @ (posedge clk) begin
    if ((1'b1 == grp_ADVIOS_led_Controller_fu_104_outLeds_ap_vld)) begin
        outLeds <= grp_ADVIOS_led_Controller_fu_104_outLeds;
    end
end

always @ (posedge clk) begin
    if ((1'b1 == grp_ADVIOS_led_Controller_fu_104_sec_pulse_o_ap_vld)) begin
        sec_pulse <= grp_ADVIOS_led_Controller_fu_104_sec_pulse_o;
    end else if ((1'b1 == grp_ADVIOS_periodic_Incrementer_fu_80_sec_pulse_ap_vld)) begin
        sec_pulse <= grp_ADVIOS_periodic_Incrementer_fu_80_sec_pulse;
    end
end

assign ADVIOS_ssdm_threa_load_fu_128_p1 = 1'd0;

assign ap_CS_fsm = 2'd0;

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_ADVIOS_led_Controller_fu_104_sec_pulse_i = sec_pulse;

endmodule //ADVIOS