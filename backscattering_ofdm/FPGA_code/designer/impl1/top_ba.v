`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module PLLBA(
       CLKA,
       EXTFB,
       POWERDOWN,
       GLA,
       LOCK,
       GLB,
       YB,
       GLC,
       YC,
       OADIV0,
       OADIV1,
       OADIV2,
       OADIV3,
       OADIV4,
       OAMUX0,
       OAMUX1,
       OAMUX2,
       DLYGLA0,
       DLYGLA1,
       DLYGLA2,
       DLYGLA3,
       DLYGLA4,
       OBDIV0,
       OBDIV1,
       OBDIV2,
       OBDIV3,
       OBDIV4,
       OBMUX0,
       OBMUX1,
       OBMUX2,
       DLYYB0,
       DLYYB1,
       DLYYB2,
       DLYYB3,
       DLYYB4,
       DLYGLB0,
       DLYGLB1,
       DLYGLB2,
       DLYGLB3,
       DLYGLB4,
       OCDIV0,
       OCDIV1,
       OCDIV2,
       OCDIV3,
       OCDIV4,
       OCMUX0,
       OCMUX1,
       OCMUX2,
       DLYYC0,
       DLYYC1,
       DLYYC2,
       DLYYC3,
       DLYYC4,
       DLYGLC0,
       DLYGLC1,
       DLYGLC2,
       DLYGLC3,
       DLYGLC4,
       FINDIV0,
       FINDIV1,
       FINDIV2,
       FINDIV3,
       FINDIV4,
       FINDIV5,
       FINDIV6,
       FBDIV0,
       FBDIV1,
       FBDIV2,
       FBDIV3,
       FBDIV4,
       FBDIV5,
       FBDIV6,
       FBDLY0,
       FBDLY1,
       FBDLY2,
       FBDLY3,
       FBDLY4,
       FBSEL0,
       FBSEL1,
       XDLYSEL,
       VCOSEL0,
       VCOSEL1,
       VCOSEL2
    );
input  CLKA;
input  EXTFB;
input  POWERDOWN;
output GLA;
output LOCK;
output GLB;
output YB;
output GLC;
output YC;
input  OADIV0;
input  OADIV1;
input  OADIV2;
input  OADIV3;
input  OADIV4;
input  OAMUX0;
input  OAMUX1;
input  OAMUX2;
input  DLYGLA0;
input  DLYGLA1;
input  DLYGLA2;
input  DLYGLA3;
input  DLYGLA4;
input  OBDIV0;
input  OBDIV1;
input  OBDIV2;
input  OBDIV3;
input  OBDIV4;
input  OBMUX0;
input  OBMUX1;
input  OBMUX2;
input  DLYYB0;
input  DLYYB1;
input  DLYYB2;
input  DLYYB3;
input  DLYYB4;
input  DLYGLB0;
input  DLYGLB1;
input  DLYGLB2;
input  DLYGLB3;
input  DLYGLB4;
input  OCDIV0;
input  OCDIV1;
input  OCDIV2;
input  OCDIV3;
input  OCDIV4;
input  OCMUX0;
input  OCMUX1;
input  OCMUX2;
input  DLYYC0;
input  DLYYC1;
input  DLYYC2;
input  DLYYC3;
input  DLYYC4;
input  DLYGLC0;
input  DLYGLC1;
input  DLYGLC2;
input  DLYGLC3;
input  DLYGLC4;
input  FINDIV0;
input  FINDIV1;
input  FINDIV2;
input  FINDIV3;
input  FINDIV4;
input  FINDIV5;
input  FINDIV6;
input  FBDIV0;
input  FBDIV1;
input  FBDIV2;
input  FBDIV3;
input  FBDIV4;
input  FBDIV5;
input  FBDIV6;
input  FBDLY0;
input  FBDLY1;
input  FBDLY2;
input  FBDLY3;
input  FBDLY4;
input  FBSEL0;
input  FBSEL1;
input  XDLYSEL;
input  VCOSEL0;
input  VCOSEL1;
input  VCOSEL2;

    wire GND, SDOUT, FB, EXTFBDLY, GLADLY, LOCKDLY, GLBDLY, YBDLY, 
        GLCDLY, YCDLY, VCODLY;
    wire GND_power_net1;
    assign GND = GND_power_net1;
    
    PLL_SDF #( .VCOFREQUENCY(100.000000) )  pll_sdf_0 (.CLKA(CLKA), 
        .EXTFB(EXTFBDLY), .POWERDOWN(POWERDOWN), .GLAOUT(GLADLY), 
        .LOCKOUT(LOCKDLY), .GLBOUT(GLBDLY), .YBOUT(YBDLY), .GLCOUT(
        GLCDLY), .YCOUT(YCDLY), .OADIV0(OADIV0), .OADIV1(OADIV1), 
        .OADIV2(OADIV2), .OADIV3(OADIV3), .OADIV4(OADIV4), .OAMUX0(
        OAMUX0), .OAMUX1(OAMUX1), .OAMUX2(OAMUX2), .DLYGLA0(DLYGLA0), 
        .DLYGLA1(DLYGLA1), .DLYGLA2(DLYGLA2), .DLYGLA3(DLYGLA3), 
        .DLYGLA4(DLYGLA4), .OBDIV0(OBDIV0), .OBDIV1(OBDIV1), .OBDIV2(
        OBDIV2), .OBDIV3(OBDIV3), .OBDIV4(OBDIV4), .OBMUX0(OBMUX0), 
        .OBMUX1(OBMUX1), .OBMUX2(OBMUX2), .DLYYB0(DLYYB0), .DLYYB1(
        DLYYB1), .DLYYB2(DLYYB2), .DLYYB3(DLYYB3), .DLYYB4(DLYYB4), 
        .DLYGLB0(DLYGLB0), .DLYGLB1(DLYGLB1), .DLYGLB2(DLYGLB2), 
        .DLYGLB3(DLYGLB3), .DLYGLB4(DLYGLB4), .OCDIV0(OCDIV0), .OCDIV1(
        OCDIV1), .OCDIV2(OCDIV2), .OCDIV3(OCDIV3), .OCDIV4(OCDIV4), 
        .OCMUX0(OCMUX0), .OCMUX1(OCMUX1), .OCMUX2(OCMUX2), .DLYYC0(
        DLYYC0), .DLYYC1(DLYYC1), .DLYYC2(DLYYC2), .DLYYC3(DLYYC3), 
        .DLYYC4(DLYYC4), .DLYGLC0(DLYGLC0), .DLYGLC1(DLYGLC1), 
        .DLYGLC2(DLYGLC2), .DLYGLC3(DLYGLC3), .DLYGLC4(DLYGLC4), 
        .FINDIV0(FINDIV0), .FINDIV1(FINDIV1), .FINDIV2(FINDIV2), 
        .FINDIV3(FINDIV3), .FINDIV4(FINDIV4), .FINDIV5(FINDIV5), 
        .FINDIV6(FINDIV6), .FBDIV0(FBDIV0), .FBDIV1(FBDIV1), .FBDIV2(
        FBDIV2), .FBDIV3(FBDIV3), .FBDIV4(FBDIV4), .FBDIV5(FBDIV5), 
        .FBDIV6(FBDIV6), .FBDLY0(FBDLY0), .FBDLY1(FBDLY1), .FBDLY2(
        FBDLY2), .FBDLY3(FBDLY3), .FBDLY4(FBDLY4), .FBSEL0(FBSEL0), 
        .FBSEL1(FBSEL1), .XDLYSEL(XDLYSEL), .VCOSEL0(VCOSEL0), 
        .VCOSEL1(VCOSEL1), .VCOSEL2(VCOSEL2), .INTFB(FB), .VCOOUT(
        VCODLY));
    PLL_DLY_SDF #( .VCOFREQUENCY(100.000000) )  pll_dly_sdf_0 (.GLA(
        GLA), .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), 
        .GLAIN(GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module top(
       clock,
       reset,
       trigger_signal,
       RSS_EN,
       signal_into_switch
    );
input  clock;
input  reset;
input  trigger_signal;
output RSS_EN;
output signal_into_switch;

    wire signal_into_switch_net_0, data_source_0_output_data, AND2_1_Y, 
        data_path_signal, output_signal, AND2_3_Y, GLA, clock_c, 
        reset_c, trigger_signal_c, signal_into_switch_c, reset_pad, 
        output_signal_0, \main_clock_0/clock_out_i , 
        \main_clock_0/counter[1]_net_1 , 
        \main_clock_0/counter[0]_net_1 , 
        \main_clock_0/counter[3]_net_1 , 
        \main_clock_0/DWACT_FINC_E[0] , \main_clock_0/counter14_4 , 
        \main_clock_0/counter14_2 , \main_clock_0/counter[2]_net_1 , 
        \main_clock_0/counter[5]_net_1 , \main_clock_0/counter14_3 , 
        \main_clock_0/counter[6]_net_1 , 
        \main_clock_0/counter[7]_net_1 , 
        \main_clock_0/counter[4]_net_1 , 
        \main_clock_0/clock_out_RNO_net_1 , 
        \main_clock_0/counter_3[0] , \main_clock_0/I_5 , 
        \main_clock_0/I_7 , \main_clock_0/I_9 , \main_clock_0/I_12 , 
        \main_clock_0/I_14 , \main_clock_0/I_17 , \main_clock_0/I_20 , 
        \main_clock_0/N_2 , \main_clock_0/DWACT_FINC_E[2] , 
        \main_clock_0/N_3 , \main_clock_0/DWACT_FINC_E[1] , 
        \main_clock_0/N_4 , \main_clock_0/N_6 , GND, VCC, 
        \modulator_0/output_signal_1_sqmuxa , 
        \modulator_0/clock_countere , 
        \modulator_0/clock_counter[14]_net_1 , 
        \modulator_0/counter_0_sqmuxa , 
        \modulator_0/output_signal_1_sqmuxa_0 , 
        \modulator_0/un5lto15_5 , \modulator_0/un5lto15_6 , 
        \modulator_0/un6lto15_1 , 
        \modulator_0/clock_counter[13]_net_1 , 
        \modulator_0/clock_counter[15]_net_1 , 
        \modulator_0/un5lto15_2 , \modulator_0/un5lto15_1 , 
        \modulator_0/un5lto15_3 , \modulator_0/un5lto5 , 
        \modulator_0/un5lto6 , \modulator_0/un6lto8 , 
        \modulator_0/un6lto9 , \modulator_0/un6lto10 , 
        \modulator_0/un6lto12 , \modulator_0/un6lto11 , 
        \modulator_0/un6lto6_0 , \modulator_0/clock_counter[5]_net_1 , 
        \modulator_0/un6lt4_2 , \modulator_0/clock_counter[0]_net_1 , 
        \modulator_0/clock_counter[1]_net_1 , 
        \modulator_0/clock_counter[4]_net_1 , 
        \modulator_0/counter19_1 , \modulator_0/counter[4]_net_1 , 
        \modulator_0/counter[1]_net_1 , \modulator_0/counter19_0 , 
        \modulator_0/counter[5]_net_1 , \modulator_0/counter[0]_net_1 , 
        \modulator_0/counter23_2 , \modulator_0/counter19_3 , 
        \modulator_0/counter23_1 , \modulator_0/counter19 , 
        \modulator_0/un6lto4 , \modulator_0/clock_counter[2]_net_1 , 
        \modulator_0/clock_counter[3]_net_1 , \modulator_0/N_89 , 
        \modulator_0/clock_counter_c13 , \modulator_0/un6lt15 , 
        \modulator_0/clock_counter_n14 , 
        \modulator_0/clock_counter_n13 , 
        \modulator_0/clock_counter_c12 , 
        \modulator_0/clock_counter_n10 , 
        \modulator_0/clock_counter_c9 , \modulator_0/clock_counter_n9 , 
        \modulator_0/clock_counter_c8 , \modulator_0/clock_counter_n8 , 
        \modulator_0/clock_counter_c7 , 
        \modulator_0/clock_counter[8]_net_1 , 
        \modulator_0/clock_counter_n7 , \modulator_0/clock_counter_c6 , 
        \modulator_0/clock_counter[7]_net_1 , 
        \modulator_0/clock_counter_n2 , \modulator_0/clock_counter_c1 , 
        \modulator_0/clock_counter_n3 , \modulator_0/clock_counter_c2 , 
        \modulator_0/clock_counter_n4 , \modulator_0/clock_counter_c3 , 
        \modulator_0/clock_counter_n5 , \modulator_0/clock_counter_c4 , 
        \modulator_0/clock_counter_n6 , \modulator_0/clock_counter_c5 , 
        \modulator_0/clock_counter_n11 , 
        \modulator_0/clock_counter_c10 , 
        \modulator_0/clock_counter_n12 , 
        \modulator_0/clock_counter_c11 , \modulator_0/counter_n2 , 
        \modulator_0/counter_n2_tz , \modulator_0/counter[2]_net_1 , 
        \modulator_0/counter_n3 , \modulator_0/counter_c2 , 
        \modulator_0/counter[3]_net_1 , \modulator_0/counter_n4 , 
        \modulator_0/counter_n4_tz , \modulator_0/counter_n5 , 
        \modulator_0/counter_44_0 , \modulator_0/clock_counter_n15 , 
        \modulator_0/un6lt11 , \modulator_0/un6lt9 , 
        \modulator_0/N_121 , \modulator_0/clock_counter_n1 , 
        \modulator_0/counter_n0 , \modulator_0/counter_n1 , 
        \data_source_0/counter_n9_i_0 , \data_source_0/N_34 , 
        \data_source_0/counter_n9_i_a3_0_0 , 
        \data_source_0/counter_n8_i_0 , 
        \data_source_0/counter_n8_i_a3_0_0 , 
        \data_source_0/counter[9]_net_1 , 
        \data_source_0/counter_RNIE3O01[10]_net_1 , 
        \data_source_0/counter[8]_net_1 , 
        \data_source_0/state_1_sqmuxa_i_a3_4 , 
        \data_source_0/state_1_sqmuxa_i_a3_1 , 
        \data_source_0/counter_RNIVPDJ_0[1]_net_1 , 
        \data_source_0/state_1_sqmuxa_i_a3_2 , 
        \data_source_0/counter_i_0[3] , \data_source_0/counter_i_0[4] , 
        \data_source_0/counter_i_0[2] , 
        \data_source_0/counter_n9_i_a2_6 , 
        \data_source_0/counter_n9_i_a2_4 , 
        \data_source_0/counter[12]_net_1 , 
        \data_source_0/counter[10]_net_1 , 
        \data_source_0/counter_n9_i_a2_5 , 
        \data_source_0/counter_n9_i_a2_2 , 
        \data_source_0/counter[15]_net_1 , 
        \data_source_0/counter[5]_net_1 , 
        \data_source_0/counter_i_0[6] , \data_source_0/counter_i_0[7] , 
        \data_source_0/counter[11]_net_1 , 
        \data_source_0/counter[13]_net_1 , 
        \data_source_0/counter[14]_net_1 , 
        \data_source_0/counter_RNO_0[5]_net_1 , \data_source_0/N_10 , 
        \data_source_0/N_38 , \data_source_0/N_12 , 
        \data_source_0/counter_RNO_0[8]_net_1 , \data_source_0/N_26 , 
        \data_source_0/counter_i_0[0] , \data_source_0/counter_i_0[1] , 
        \data_source_0/N_24 , \data_source_0/N_31 , 
        \data_source_0/N_22 , \data_source_0/N_32 , 
        \data_source_0/N_20 , \data_source_0/N_33 , 
        \data_source_0/N_18 , \data_source_0/N_53_i , 
        \data_source_0/N_16 , \data_source_0/N_35 , 
        \data_source_0/N_14 , \data_source_0/N_36 , 
        \data_source_0/N_44 , \data_source_0/N_43 , 
        \data_source_0/N_42 , \data_source_0/N_41 , 
        \data_source_0/N_40 , \data_source_0/N_39 , 
        \data_source_0/N_29 , \data_source_0/counter_n10 , 
        \data_source_0/counter_n11 , \data_source_0/counter_n12 , 
        \data_source_0/counter_n13 , \data_source_0/counter_n14 , 
        \data_source_0/counter_n15 , \data_source_0/counter_n0 , 
        \data_source_0/state_4[7] , \data_source_0/state[6]_net_1 , 
        \data_source_0/state_4[6] , \data_source_0/state[5]_net_1 , 
        \data_source_0/state_4[5] , \data_source_0/state[4]_net_1 , 
        \data_source_0/state_4[4] , \data_source_0/state[3]_net_1 , 
        \data_source_0/state_4[3] , \data_source_0/state[2]_net_1 , 
        \data_source_0/state_4[2] , \data_source_0/state[1]_net_1 , 
        \data_source_0/state_4[1] , \data_source_0/state[0]_net_1 , 
        \data_source_0/state_4[0] , \data_source_0/state[7]_net_1 , 
        \signal_into_switch_pad/U0/NET1 , 
        \signal_into_switch_pad/U0/NET2 , \reset_pad/U0/NET1 , 
        \trigger_signal_pad/U0/NET1 , \RSS_EN_pad/U0/NET1 , 
        \RSS_EN_pad/U0/NET2 , \clock_pad/U0/NET1 , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR3A \main_clock_0/counter_RNI0BUP1[2]  (.A(
        \main_clock_0/counter14_2 ), .B(
        \main_clock_0/counter[2]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/counter14_4 ));
    NOR2B \modulator_0/counter_RNITMOV[5]  (.A(
        \modulator_0/counter[5]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .Y(\modulator_0/counter19_0 ));
    AO1C \data_source_0/counter_RNO_0[9]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter_n9_i_a3_0_0 ), .C(output_signal_0), 
        .Y(\data_source_0/counter_n9_i_0 ));
    NOR2B \modulator_0/clock_counter_RNIPVCH1[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .Y(
        \modulator_0/clock_counter_c13 ));
    OA1 \modulator_0/clock_counter_RNILL2A2[6]  (.A(
        \modulator_0/un5lto15_5 ), .B(\modulator_0/un5lto15_6 ), .C(
        trigger_signal_c), .Y(\modulator_0/output_signal_1_sqmuxa_0 ));
    OR2 \data_source_0/counter_RNI2OR61[3]  (.A(\data_source_0/N_32 ), 
        .B(\data_source_0/counter_i_0[3] ), .Y(\data_source_0/N_33 ));
    NOR3C \modulator_0/counter_RNINTKF1[2]  (.A(
        \modulator_0/counter[1]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .C(
        \modulator_0/counter[2]_net_1 ), .Y(\modulator_0/counter_c2 ));
    NOR3B \data_source_0/counter_RNIS45T[3]  (.A(
        \data_source_0/counter_i_0[3] ), .B(
        \data_source_0/counter_i_0[4] ), .C(
        \data_source_0/counter[8]_net_1 ), .Y(
        \data_source_0/state_1_sqmuxa_i_a3_2 ));
    NOR3C \data_source_0/counter_RNI43142[1]  (.A(
        \data_source_0/state_1_sqmuxa_i_a3_1 ), .B(
        \data_source_0/counter_RNIVPDJ_0[1]_net_1 ), .C(
        \data_source_0/state_1_sqmuxa_i_a3_2 ), .Y(
        \data_source_0/state_1_sqmuxa_i_a3_4 ));
    DFN1P0 \data_source_0/counter[7]  (.D(\data_source_0/N_14 ), .CLK(
        signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[7] ));
    OR2A \data_source_0/counter_RNI6KV23[12]  (.A(
        \data_source_0/counter[12]_net_1 ), .B(\data_source_0/N_41 ), 
        .Y(\data_source_0/N_42 ));
    NOR2B \modulator_0/clock_counter_RNIJ6HC[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un6lto9 ), .Y(
        \modulator_0/clock_counter_c9 ));
    DFN1C0 \data_source_0/counter[5]  (.D(\data_source_0/N_18 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[5]_net_1 ));
    XA1 \modulator_0/counter_RNO[3]  (.A(\modulator_0/counter_c2 ), .B(
        \modulator_0/counter[3]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(\modulator_0/counter_n3 ));
    XA1 \modulator_0/clock_counter_RNO[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un6lto10 ), 
        .C(\modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/clock_counter_n10 ));
    XA1A \data_source_0/counter_RNO[12]  (.A(
        \data_source_0/counter[12]_net_1 ), .B(\data_source_0/N_41 ), 
        .C(output_signal_0), .Y(\data_source_0/counter_n12 ));
    OR2 \modulator_0/clock_counter_RNIN7G2[4]  (.A(
        \modulator_0/clock_counter[5]_net_1 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/un5lto5 ));
    DFN1C0 \data_source_0/counter[12]  (.D(\data_source_0/counter_n12 )
        , .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[12]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n3 ));
    OR2A \data_source_0/counter_RNI3DP13[10]  (.A(
        \data_source_0/counter[10]_net_1 ), .B(\data_source_0/N_39 ), 
        .Y(\data_source_0/N_40 ));
    AND2B AND2_1 (.A(data_source_0_output_data), .B(
        signal_into_switch_net_0), .Y(AND2_1_Y));
    XA1 \modulator_0/clock_counter_RNO[4]  (.A(
        \modulator_0/clock_counter_c3 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n4 ));
    DFN1E1C0 \modulator_0/output_signal_0  (.D(
        \modulator_0/output_signal_1_sqmuxa ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(output_signal_0));
    OR3 \modulator_0/clock_counter_RNIF4IO1[9]  (.A(
        \modulator_0/un5lto15_2 ), .B(\modulator_0/un5lto15_1 ), .C(
        \modulator_0/un5lto15_3 ), .Y(\modulator_0/un5lto15_6 ));
    DFN1E1C0 \modulator_0/clock_counter[1]  (.D(
        \modulator_0/clock_counter_n1 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[1]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/clock_counter_n13 ));
    DFN1C0 \data_source_0/counter[14]  (.D(\data_source_0/counter_n14 )
        , .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[14]_net_1 ));
    OR2A \data_source_0/state_RNO[7]  (.A(output_signal), .B(
        \data_source_0/state[6]_net_1 ), .Y(\data_source_0/state_4[7] )
        );
    OR2 \data_source_0/counter_RNIUS042[6]  (.A(\data_source_0/N_35 ), 
        .B(\data_source_0/counter_i_0[6] ), .Y(\data_source_0/N_36 ));
    XA1 \modulator_0/clock_counter_RNO[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un5lto6 ), .C(
        trigger_signal_c), .Y(\modulator_0/clock_counter_n6 ));
    DFN1P0 \data_source_0/counter[6]  (.D(\data_source_0/N_16 ), .CLK(
        signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[6] ));
    AO1 OR2_0 (.A(signal_into_switch_net_0), .B(
        data_source_0_output_data), .C(AND2_1_Y), .Y(data_path_signal));
    DFN1E1C0 \modulator_0/clock_counter[11]  (.D(
        \modulator_0/clock_counter_n11 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(\modulator_0/un6lto11 ));
    XA1A \data_source_0/counter_RNO[10]  (.A(
        \data_source_0/counter[10]_net_1 ), .B(\data_source_0/N_39 ), 
        .C(output_signal_0), .Y(\data_source_0/counter_n10 ));
    XOR2 \main_clock_0/un5_counter_1_I_17  (.A(\main_clock_0/N_3 ), .B(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/I_17 ));
    AO1B \data_source_0/counter_RNI383E3[1]  (.A(
        \data_source_0/state_1_sqmuxa_i_a3_4 ), .B(
        \data_source_0/counter_RNIE3O01[10]_net_1 ), .C(
        output_signal_0), .Y(\data_source_0/N_29 ));
    DFN1C0 \data_source_0/counter[15]  (.D(\data_source_0/counter_n15 )
        , .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[15]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[3]  (.D(
        \modulator_0/clock_counter_n3 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[3]_net_1 ));
    OR2A \data_source_0/counter_RNI9Q9Q1[5]  (.A(
        \data_source_0/counter[5]_net_1 ), .B(\data_source_0/N_34 ), 
        .Y(\data_source_0/N_35 ));
    OR2A \data_source_0/state_RNO[5]  (.A(output_signal), .B(
        \data_source_0/state[4]_net_1 ), .Y(\data_source_0/state_4[5] )
        );
    OR3A \data_source_0/counter_RNIB5FN2[7]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter_i_0[7] ), .C(\data_source_0/N_36 ), .Y(
        \data_source_0/N_38 ));
    NOR3A \data_source_0/counter_RNIEF7L[10]  (.A(
        \data_source_0/counter_n9_i_a2_4 ), .B(
        \data_source_0/counter[12]_net_1 ), .C(
        \data_source_0/counter[10]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_6 ));
    NOR2A \modulator_0/counter_RNITMOV[4]  (.A(
        \modulator_0/counter[4]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .Y(\modulator_0/counter19_1 ));
    AO1 \modulator_0/clock_counter_RNIUV581[11]  (.A(
        \modulator_0/un6lt11 ), .B(\modulator_0/un6lto11 ), .C(
        \modulator_0/un6lto12 ), .Y(\modulator_0/un6lt15 ));
    AND3 \main_clock_0/un5_counter_1_I_10  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[0] ));
    OR2 \data_source_0/counter_RNILOIG1[4]  (.A(\data_source_0/N_33 ), 
        .B(\data_source_0/counter_i_0[4] ), .Y(\data_source_0/N_34 ));
    NOR2B \data_source_0/counter_RNIE3O01[10]  (.A(
        \data_source_0/counter_n9_i_a2_6 ), .B(
        \data_source_0/counter_n9_i_a2_5 ), .Y(
        \data_source_0/counter_RNIE3O01[10]_net_1 ));
    DFN1P0 \data_source_0/counter[2]  (.D(\data_source_0/N_24 ), .CLK(
        signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[2] ));
    OR3 \modulator_0/clock_counter_RNIK2LR[15]  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un5lto15_3 ));
    DFN1E1C0 \modulator_0/clock_counter[12]  (.D(
        \modulator_0/clock_counter_n12 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(\modulator_0/un6lto12 ));
    IOTRI_OB_EB \RSS_EN_pad/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \RSS_EN_pad/U0/NET1 ), .EOUT(\RSS_EN_pad/U0/NET2 ));
    AO1 \modulator_0/clock_counter_RNI1R86[6]  (.A(
        \modulator_0/un5lto5 ), .B(\modulator_0/un5lto6 ), .C(
        \modulator_0/un6lto8 ), .Y(\modulator_0/un5lto15_5 ));
    DFN1C0 \modulator_0/counter[0]  (.D(\modulator_0/counter_n0 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \modulator_0/counter[0]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[1]  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[0]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n1 ));
    IOPAD_IN \trigger_signal_pad/U0/U0  (.PAD(trigger_signal), .Y(
        \trigger_signal_pad/U0/NET1 ));
    XAI1 \data_source_0/counter_RNO[4]  (.A(
        \data_source_0/counter_i_0[4] ), .B(\data_source_0/N_33 ), .C(
        output_signal_0), .Y(\data_source_0/N_20 ));
    AX1C \modulator_0/clock_counter_RNO[15]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(\modulator_0/N_89 ), 
        .Y(\modulator_0/clock_counter_n15 ));
    NOR2 \main_clock_0/counter_RNIF4VS[1]  (.A(
        \main_clock_0/counter[4]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(
        \main_clock_0/counter14_2 ));
    DFN1E1C0 \modulator_0/clock_counter[5]  (.D(
        \modulator_0/clock_counter_n5 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[5]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[8]  (.D(
        \modulator_0/clock_counter_n8 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[8]_net_1 ));
    DFN1C0 \modulator_0/counter[1]  (.D(\modulator_0/counter_n1 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \modulator_0/counter[1]_net_1 ));
    AND2A AND2_3 (.A(output_signal), .B(signal_into_switch_net_0), .Y(
        AND2_3_Y));
    DFN1E1C0 \data_source_0/output_data  (.D(
        \data_source_0/state_4[0] ), .CLK(signal_into_switch_net_0), 
        .CLR(reset_c), .E(\data_source_0/N_29 ), .Q(
        data_source_0_output_data));
    NOR3A \data_source_0/counter_RNO[8]  (.A(\data_source_0/N_38 ), .B(
        \data_source_0/counter_RNO_0[8]_net_1 ), .C(
        \data_source_0/counter_n8_i_0 ), .Y(\data_source_0/N_12 ));
    DFN1C0 \data_source_0/counter[10]  (.D(\data_source_0/counter_n10 )
        , .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[10]_net_1 ));
    NOR2B \modulator_0/counter_RNO[2]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter_n2_tz ), .Y(\modulator_0/counter_n2 ));
    DFN1C0 \data_source_0/counter[13]  (.D(\data_source_0/counter_n13 )
        , .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[13]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNI2305[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .Y(
        \modulator_0/clock_counter_c3 ));
    NOR2B \modulator_0/clock_counter_RNIFVF2[1]  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(
        \modulator_0/clock_counter_c1 ));
    NOR2 \data_source_0/counter_RNI7B61[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(
        \data_source_0/counter[14]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_2 ));
    DFN1C0 \data_source_0/counter[9]  (.D(\data_source_0/N_10 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[9]_net_1 ));
    AND2 \main_clock_0/un5_counter_1_I_15  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[1] ));
    NOR2B \data_source_0/state_RNIP1QN[7]  (.A(output_signal), .B(
        \data_source_0/state[7]_net_1 ), .Y(\data_source_0/state_4[0] )
        );
    NOR3C \modulator_0/clock_counter_RNO_0[15]  (.A(
        \modulator_0/clock_counter[14]_net_1 ), .B(
        \modulator_0/counter_0_sqmuxa ), .C(
        \modulator_0/clock_counter_c13 ), .Y(\modulator_0/N_89 ));
    OR2 \data_source_0/counter_RNIVPDJ[1]  (.A(
        \data_source_0/counter_i_0[1] ), .B(
        \data_source_0/counter_i_0[0] ), .Y(\data_source_0/N_31 ));
    OR2A \data_source_0/counter_RNI9PI33[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(\data_source_0/N_42 ), 
        .Y(\data_source_0/N_43 ));
    AX1C \main_clock_0/un5_counter_1_I_12  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/DWACT_FINC_E[0] ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/I_12 ));
    IOPAD_TRI \signal_into_switch_pad/U0/U0  (.D(
        \signal_into_switch_pad/U0/NET1 ), .E(
        \signal_into_switch_pad/U0/NET2 ), .PAD(signal_into_switch));
    AX1C \main_clock_0/un5_counter_1_I_7  (.A(
        \main_clock_0/counter[1]_net_1 ), .B(
        \main_clock_0/counter[0]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/I_7 ));
    DFN1E1C0 \modulator_0/clock_counter[14]  (.D(
        \modulator_0/clock_counter_n14 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[14]_net_1 ));
    NOR3A \data_source_0/counter_RNO[5]  (.A(output_signal_0), .B(
        \data_source_0/counter_RNO_0[5]_net_1 ), .C(
        \data_source_0/N_53_i ), .Y(\data_source_0/N_18 ));
    OR2 \data_source_0/counter_RNIGO4T[2]  (.A(\data_source_0/N_31 ), 
        .B(\data_source_0/counter_i_0[2] ), .Y(\data_source_0/N_32 ));
    DFN1C0 \main_clock_0/clock_out  (.D(
        \main_clock_0/clock_out_RNO_net_1 ), .CLK(GLA), .CLR(reset_c), 
        .Q(\main_clock_0/clock_out_i ));
    NOR2B \data_source_0/counter_RNO_2[8]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(
        \data_source_0/counter_RNIE3O01[10]_net_1 ), .Y(
        \data_source_0/counter_n8_i_a3_0_0 ));
    NOR3C \data_source_0/counter_RNO_0[5]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter[9]_net_1 ), .C(
        \data_source_0/counter_RNIE3O01[10]_net_1 ), .Y(
        \data_source_0/counter_RNO_0[5]_net_1 ));
    DFN1C0 \data_source_0/counter[8]  (.D(\data_source_0/N_12 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[8]_net_1 ));
    IOTRI_OB_EB \signal_into_switch_pad/U0/U1  (.D(
        signal_into_switch_c), .E(VCC), .DOUT(
        \signal_into_switch_pad/U0/NET1 ), .EOUT(
        \signal_into_switch_pad/U0/NET2 ));
    DFN1C0 \main_clock_0/counter[7]  (.D(\main_clock_0/I_20 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[7]_net_1 ));
    DFN1C0 \main_clock_0/counter[0]  (.D(\main_clock_0/counter_3[0] ), 
        .CLK(GLA), .CLR(reset_c), .Q(\main_clock_0/counter[0]_net_1 ));
    NOR2A \data_source_0/counter_RNI94EJ[2]  (.A(
        \data_source_0/counter_i_0[2] ), .B(
        \data_source_0/counter[9]_net_1 ), .Y(
        \data_source_0/state_1_sqmuxa_i_a3_1 ));
    XA1C \data_source_0/counter_RNO[9]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_38 ), 
        .C(\data_source_0/counter_n9_i_0 ), .Y(\data_source_0/N_10 ));
    XAI1 \data_source_0/counter_RNO[6]  (.A(
        \data_source_0/counter_i_0[6] ), .B(\data_source_0/N_35 ), .C(
        output_signal_0), .Y(\data_source_0/N_16 ));
    PLLBA \pll_core_0/Core  (.CLKA(clock_c), .EXTFB(GND), .POWERDOWN(
        VCC), .GLA(GLA), .LOCK(), .GLB(), .YB(), .GLC(), .YC(), 
        .OADIV0(GND), .OADIV1(GND), .OADIV2(GND), .OADIV3(GND), 
        .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), .OAMUX2(VCC), 
        .DLYGLA0(GND), .DLYGLA1(GND), .DLYGLA2(GND), .DLYGLA3(GND), 
        .DLYGLA4(GND), .OBDIV0(AFLSDF_GND), .OBDIV1(AFLSDF_GND), 
        .OBDIV2(AFLSDF_GND), .OBDIV3(AFLSDF_GND), .OBDIV4(AFLSDF_GND), 
        .OBMUX0(AFLSDF_GND), .OBMUX1(AFLSDF_GND), .OBMUX2(AFLSDF_GND), 
        .DLYYB0(AFLSDF_GND), .DLYYB1(AFLSDF_GND), .DLYYB2(AFLSDF_GND), 
        .DLYYB3(AFLSDF_GND), .DLYYB4(AFLSDF_GND), .DLYGLB0(AFLSDF_GND), 
        .DLYGLB1(AFLSDF_GND), .DLYGLB2(AFLSDF_GND), .DLYGLB3(
        AFLSDF_GND), .DLYGLB4(AFLSDF_GND), .OCDIV0(AFLSDF_GND), 
        .OCDIV1(AFLSDF_GND), .OCDIV2(AFLSDF_GND), .OCDIV3(AFLSDF_GND), 
        .OCDIV4(AFLSDF_GND), .OCMUX0(AFLSDF_GND), .OCMUX1(AFLSDF_GND), 
        .OCMUX2(AFLSDF_GND), .DLYYC0(AFLSDF_GND), .DLYYC1(AFLSDF_GND), 
        .DLYYC2(AFLSDF_GND), .DLYYC3(AFLSDF_GND), .DLYYC4(AFLSDF_GND), 
        .DLYGLC0(AFLSDF_GND), .DLYGLC1(AFLSDF_GND), .DLYGLC2(
        AFLSDF_GND), .DLYGLC3(AFLSDF_GND), .DLYGLC4(AFLSDF_GND), 
        .FINDIV0(VCC), .FINDIV1(VCC), .FINDIV2(GND), .FINDIV3(GND), 
        .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), .FBDIV0(VCC), 
        .FBDIV1(VCC), .FBDIV2(GND), .FBDIV3(GND), .FBDIV4(VCC), 
        .FBDIV5(GND), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), 
        .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), 
        .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(GND), 
        .VCOSEL2(VCC));
    NOR2B \data_source_0/state_RNO[4]  (.A(output_signal), .B(
        \data_source_0/state[3]_net_1 ), .Y(\data_source_0/state_4[4] )
        );
    NOR3C \modulator_0/counter_RNIN4AV2[4]  (.A(
        \modulator_0/counter19_0 ), .B(\modulator_0/counter19_3 ), .C(
        \modulator_0/counter19_1 ), .Y(\modulator_0/counter19 ));
    DFN1C0 \main_clock_0/counter[4]  (.D(\main_clock_0/I_12 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[4]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un6lto11 ), 
        .C(trigger_signal_c), .Y(\modulator_0/clock_counter_n11 ));
    NOR2B \modulator_0/clock_counter_RNI3U8B[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .Y(
        \modulator_0/clock_counter_c8 ));
    NOR2B \data_source_0/state_RNO[6]  (.A(output_signal), .B(
        \data_source_0/state[5]_net_1 ), .Y(\data_source_0/state_4[6] )
        );
    NOR2B \data_source_0/counter_RNO_1[9]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter_RNIE3O01[10]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a3_0_0 ));
    NOR3B \data_source_0/counter_RNIC91K[11]  (.A(
        \data_source_0/counter_i_0[6] ), .B(
        \data_source_0/counter_i_0[7] ), .C(
        \data_source_0/counter[11]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_4 ));
    NOR2B \modulator_0/clock_counter_RNIB3OL[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un6lto10 ), 
        .Y(\modulator_0/clock_counter_c10 ));
    CLKINT \main_clock_0/clock_out_RNIG44  (.A(
        \main_clock_0/clock_out_i ), .Y(signal_into_switch_net_0));
    NOR2B \modulator_0/counter_RNO[4]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter_n4_tz ), .Y(\modulator_0/counter_n4 ));
    NOR2B \modulator_0/clock_counter_RNI6GO8[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un5lto6 ), .Y(
        \modulator_0/clock_counter_c6 ));
    DFN1C0 \data_source_0/counter[11]  (.D(\data_source_0/counter_n11 )
        , .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \data_source_0/counter[11]_net_1 ));
    DFN1C0 \main_clock_0/counter[2]  (.D(\main_clock_0/I_7 ), .CLK(GLA)
        , .CLR(reset_c), .Q(\main_clock_0/counter[2]_net_1 ));
    AX1C \modulator_0/counter_RNO_0[2]  (.A(
        \modulator_0/counter[1]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .C(
        \modulator_0/counter[2]_net_1 ), .Y(
        \modulator_0/counter_n2_tz ));
    XAI1 \data_source_0/counter_RNO[3]  (.A(
        \data_source_0/counter_i_0[3] ), .B(\data_source_0/N_32 ), .C(
        output_signal_0), .Y(\data_source_0/N_22 ));
    OR3 \modulator_0/clock_counter_RNID686[2]  (.A(
        \modulator_0/clock_counter[2]_net_1 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .C(
        \modulator_0/un6lt4_2 ), .Y(\modulator_0/un6lto4 ));
    DFN1E1C0 \data_source_0/state[4]  (.D(\data_source_0/state_4[4] ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[4]_net_1 ));
    DFN1E1P0 \data_source_0/state[3]  (.D(\data_source_0/state_4[3] ), 
        .CLK(signal_into_switch_net_0), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[3]_net_1 ));
    DFN1E1C0 \data_source_0/state[0]  (.D(\data_source_0/state_4[0] ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[0]_net_1 ));
    XA1A \data_source_0/counter_RNO[14]  (.A(
        \data_source_0/counter[14]_net_1 ), .B(\data_source_0/N_43 ), 
        .C(output_signal_0), .Y(\data_source_0/counter_n14 ));
    XOR2 \main_clock_0/un5_counter_1_I_14  (.A(\main_clock_0/N_4 ), .B(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/I_14 ));
    OR2 \modulator_0/clock_counter_RNITDG2[7]  (.A(
        \modulator_0/clock_counter[8]_net_1 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/un6lto8 ));
    AO1 \modulator_0/clock_counter_RNIB3OL[9]  (.A(
        \modulator_0/un6lt9 ), .B(\modulator_0/un6lto9 ), .C(
        \modulator_0/un6lto10 ), .Y(\modulator_0/un6lt11 ));
    DFN1E1C0 \modulator_0/clock_counter[10]  (.D(
        \modulator_0/clock_counter_n10 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(\modulator_0/un6lto10 ));
    NOR2B \modulator_0/clock_counter_RNIKM0A[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/clock_counter_c7 ));
    DFN1P0 \data_source_0/counter[1]  (.D(\data_source_0/N_26 ), .CLK(
        signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[1] ));
    DFN1E1C0 \modulator_0/clock_counter[7]  (.D(
        \modulator_0/clock_counter_n7 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[7]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[6]  (.D(
        \modulator_0/clock_counter_n6 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un5lto6 ));
    NOR2B \modulator_0/clock_counter_RNID686[4]  (.A(
        \modulator_0/clock_counter_c3 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/clock_counter_c4 ));
    NOR3 \main_clock_0/counter_RNIFVEB1[7]  (.A(
        \main_clock_0/counter[6]_net_1 ), .B(
        \main_clock_0/counter[7]_net_1 ), .C(
        \main_clock_0/counter[3]_net_1 ), .Y(
        \main_clock_0/counter14_3 ));
    AO1C \data_source_0/counter_RNO_1[8]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter_n8_i_a3_0_0 ), .C(output_signal), .Y(
        \data_source_0/counter_n8_i_0 ));
    DFN1C0 \main_clock_0/counter[5]  (.D(\main_clock_0/I_14 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[5]_net_1 ));
    OA1B \data_source_0/counter_RNO_0[8]  (.A(
        \data_source_0/counter_i_0[7] ), .B(\data_source_0/N_36 ), .C(
        \data_source_0/counter[8]_net_1 ), .Y(
        \data_source_0/counter_RNO_0[8]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIO0O3[2]  (.A(
        \modulator_0/clock_counter_c1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .Y(
        \modulator_0/clock_counter_c2 ));
    NOR2A \modulator_0/counter_RNISQHA3[4]  (.A(trigger_signal_c), .B(
        \modulator_0/counter19 ), .Y(\modulator_0/counter_0_sqmuxa ));
    DFN1E1C0 \modulator_0/clock_counter[0]  (.D(\modulator_0/N_121 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[0]_net_1 ));
    XAI1 \data_source_0/counter_RNO[1]  (.A(
        \data_source_0/counter_i_0[0] ), .B(
        \data_source_0/counter_i_0[1] ), .C(output_signal_0), .Y(
        \data_source_0/N_26 ));
    XAI1 \data_source_0/counter_RNO[2]  (.A(
        \data_source_0/counter_i_0[2] ), .B(\data_source_0/N_31 ), .C(
        output_signal_0), .Y(\data_source_0/N_24 ));
    XOR2 \main_clock_0/un5_counter_1_I_5  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(\main_clock_0/I_5 ));
    XA1A \data_source_0/counter_RNO[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(\data_source_0/N_42 ), 
        .C(output_signal_0), .Y(\data_source_0/counter_n13 ));
    IOIN_IB \trigger_signal_pad/U0/U1  (.YIN(
        \trigger_signal_pad/U0/NET1 ), .Y(trigger_signal_c));
    AND3 \main_clock_0/un5_counter_1_I_13  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/counter[3]_net_1 ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/N_4 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    XOR2 \data_source_0/counter_RNO_1[5]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter[5]_net_1 ), .Y(
        \data_source_0/N_53_i ));
    NOR2 \modulator_0/counter_RNITMOV[2]  (.A(
        \modulator_0/counter[2]_net_1 ), .B(
        \modulator_0/counter[3]_net_1 ), .Y(\modulator_0/counter19_3 ));
    DFN1C0 \main_clock_0/counter[6]  (.D(\main_clock_0/I_17 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[6]_net_1 ));
    AO1 OR2_1 (.A(data_path_signal), .B(output_signal), .C(AND2_3_Y), 
        .Y(signal_into_switch_c));
    NOR2B \modulator_0/clock_counter_RNI41VU[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un6lto11 ), 
        .Y(\modulator_0/clock_counter_c11 ));
    DFN1E1C0 \modulator_0/clock_counter[2]  (.D(
        \modulator_0/clock_counter_n2 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[2]_net_1 ));
    AX1C \main_clock_0/clock_out_RNO  (.A(\main_clock_0/counter14_3 ), 
        .B(\main_clock_0/counter14_4 ), .C(\main_clock_0/clock_out_i ), 
        .Y(\main_clock_0/clock_out_RNO_net_1 ));
    CLKINT reset_pad_RNIN9FD (.A(reset_pad), .Y(reset_c));
    DFN1E1C0 \modulator_0/clock_counter[9]  (.D(
        \modulator_0/clock_counter_n9 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto9 ));
    NOR2B \modulator_0/clock_counter_RNIP9G2[5]  (.A(
        \modulator_0/un5lto6 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .Y(
        \modulator_0/un6lto6_0 ));
    DFN1E1C0 \modulator_0/output_signal  (.D(
        \modulator_0/output_signal_1_sqmuxa ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(output_signal));
    DFN1P0 \data_source_0/counter[0]  (.D(\data_source_0/counter_n0 ), 
        .CLK(signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[0] ));
    DFN1E1P0 \data_source_0/state[7]  (.D(\data_source_0/state_4[7] ), 
        .CLK(signal_into_switch_net_0), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[7]_net_1 ));
    NOR2 \modulator_0/counter_RNIPIOV[1]  (.A(
        \modulator_0/counter[0]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .Y(\modulator_0/counter23_1 ));
    DFN1E1C0 \modulator_0/clock_counter[4]  (.D(
        \modulator_0/clock_counter_n4 ), .CLK(signal_into_switch_net_0)
        , .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[4]_net_1 ));
    XAI1 \data_source_0/counter_RNO[7]  (.A(
        \data_source_0/counter_i_0[7] ), .B(\data_source_0/N_36 ), .C(
        output_signal), .Y(\data_source_0/N_14 ));
    NOR2B \modulator_0/clock_counter_RNIUV581[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un6lto12 ), 
        .Y(\modulator_0/clock_counter_c12 ));
    NOR2B \data_source_0/counter_RNIVPDJ_0[1]  (.A(
        \data_source_0/counter_i_0[1] ), .B(
        \data_source_0/counter_i_0[0] ), .Y(
        \data_source_0/counter_RNIVPDJ_0[1]_net_1 ));
    NOR3A \data_source_0/counter_RNI0KGB[15]  (.A(
        \data_source_0/counter_n9_i_a2_2 ), .B(
        \data_source_0/counter[15]_net_1 ), .C(
        \data_source_0/counter[5]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_5 ));
    XA1 \modulator_0/clock_counter_RNO[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un6lto9 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/clock_counter_n9 ));
    XA1 \modulator_0/counter_RNO[5]  (.A(
        \modulator_0/counter[5]_net_1 ), .B(\modulator_0/counter_44_0 )
        , .C(\modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/counter_n5 ));
    XA1 \modulator_0/clock_counter_RNO[14]  (.A(
        \modulator_0/clock_counter_c13 ), .B(
        \modulator_0/clock_counter[14]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/clock_counter_n14 ));
    AND3 \main_clock_0/un5_counter_1_I_18  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[2] ));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_pad)
        );
    XA1 \modulator_0/clock_counter_RNO[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un6lto12 ), 
        .C(trigger_signal_c), .Y(\modulator_0/clock_counter_n12 ));
    DFN1E1P0 \data_source_0/state[5]  (.D(\data_source_0/state_4[5] ), 
        .CLK(signal_into_switch_net_0), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[5]_net_1 ));
    OR2B \data_source_0/counter_RNO[0]  (.A(
        \data_source_0/counter_i_0[0] ), .B(output_signal), .Y(
        \data_source_0/counter_n0 ));
    DFN1C0 \modulator_0/counter[2]  (.D(\modulator_0/counter_n2 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \modulator_0/counter[2]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIPAG7[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .Y(
        \modulator_0/clock_counter_c5 ));
    OR2 \modulator_0/clock_counter_RNI85FA[9]  (.A(
        \modulator_0/un6lto9 ), .B(\modulator_0/un6lto10 ), .Y(
        \modulator_0/un5lto15_2 ));
    XA1A \data_source_0/counter_RNO[11]  (.A(
        \data_source_0/counter[11]_net_1 ), .B(\data_source_0/N_40 ), 
        .C(output_signal_0), .Y(\data_source_0/counter_n11 ));
    OR2A \data_source_0/counter_RNI4GC23[11]  (.A(
        \data_source_0/counter[11]_net_1 ), .B(\data_source_0/N_40 ), 
        .Y(\data_source_0/N_41 ));
    XA1 \modulator_0/counter_RNO[1]  (.A(
        \modulator_0/counter[0]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(\modulator_0/counter_n1 ));
    DFN1C0 \modulator_0/counter[4]  (.D(\modulator_0/counter_n4 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \modulator_0/counter[4]_net_1 ));
    DFN1C0 \modulator_0/counter[5]  (.D(\modulator_0/counter_n5 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \modulator_0/counter[5]_net_1 ));
    AOI1B \modulator_0/clock_counter_RNI7OTD4[11]  (.A(
        \modulator_0/un6lto15_1 ), .B(\modulator_0/un6lt15 ), .C(
        \modulator_0/output_signal_1_sqmuxa_0 ), .Y(
        \modulator_0/output_signal_1_sqmuxa ));
    OR2A \data_source_0/state_RNO[1]  (.A(output_signal), .B(
        \data_source_0/state[0]_net_1 ), .Y(\data_source_0/state_4[1] )
        );
    DFN1C0 \main_clock_0/counter[3]  (.D(\main_clock_0/I_9 ), .CLK(GLA)
        , .CLR(reset_c), .Q(\main_clock_0/counter[3]_net_1 ));
    NOR3C \modulator_0/counter_RNO_0[5]  (.A(
        \modulator_0/counter[3]_net_1 ), .B(\modulator_0/counter_c2 ), 
        .C(\modulator_0/counter[4]_net_1 ), .Y(
        \modulator_0/counter_44_0 ));
    DFN1E1C0 \data_source_0/state[6]  (.D(\data_source_0/state_4[6] ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[6]_net_1 ));
    AO1B \modulator_0/counter_RNISQHA3[1]  (.A(
        \modulator_0/counter23_2 ), .B(\modulator_0/counter23_1 ), .C(
        trigger_signal_c), .Y(\modulator_0/clock_countere ));
    DFN1C0 \modulator_0/counter[3]  (.D(\modulator_0/counter_n3 ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .Q(
        \modulator_0/counter[3]_net_1 ));
    NOR2A \modulator_0/counter_RNO[0]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter[0]_net_1 ), .Y(\modulator_0/counter_n0 ));
    AO1 \modulator_0/clock_counter_RNI3U8B[2]  (.A(
        \modulator_0/un6lto6_0 ), .B(\modulator_0/un6lto4 ), .C(
        \modulator_0/un6lto8 ), .Y(\modulator_0/un6lt9 ));
    DFN1E1C0 \modulator_0/clock_counter[15]  (.D(
        \modulator_0/clock_counter_n15 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[15]_net_1 ));
    DFN1E1P0 \data_source_0/state[1]  (.D(\data_source_0/state_4[1] ), 
        .CLK(signal_into_switch_net_0), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[1]_net_1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    AOI1 \main_clock_0/counter_RNO[0]  (.A(\main_clock_0/counter14_4 ), 
        .B(\main_clock_0/counter14_3 ), .C(
        \main_clock_0/counter[0]_net_1 ), .Y(
        \main_clock_0/counter_3[0] ));
    XA1 \modulator_0/clock_counter_RNO[2]  (.A(
        \modulator_0/clock_counter_c1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n2 ));
    XOR2 \main_clock_0/un5_counter_1_I_20  (.A(\main_clock_0/N_2 ), .B(
        \main_clock_0/counter[7]_net_1 ), .Y(\main_clock_0/I_20 ));
    XA1 \modulator_0/clock_counter_RNO[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/clock_counter_n8 ));
    XOR2 \main_clock_0/un5_counter_1_I_9  (.A(\main_clock_0/N_6 ), .B(
        \main_clock_0/counter[3]_net_1 ), .Y(\main_clock_0/I_9 ));
    AX1C \modulator_0/counter_RNO_0[4]  (.A(
        \modulator_0/counter[3]_net_1 ), .B(\modulator_0/counter_c2 ), 
        .C(\modulator_0/counter[4]_net_1 ), .Y(
        \modulator_0/counter_n4_tz ));
    AND3 \main_clock_0/un5_counter_1_I_8  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/N_6 ));
    XA1 \modulator_0/clock_counter_RNO[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/clock_counter_n7 ));
    NOR2B \data_source_0/state_RNO[2]  (.A(output_signal), .B(
        \data_source_0/state[1]_net_1 ), .Y(\data_source_0/state_4[2] )
        );
    DFN1P0 \data_source_0/counter[4]  (.D(\data_source_0/N_20 ), .CLK(
        signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[4] ));
    IOIN_IB \clock_pad/U0/U1  (.YIN(\clock_pad/U0/NET1 ), .Y(clock_c));
    OR2 \modulator_0/clock_counter_RNIJSDI[11]  (.A(
        \modulator_0/un6lto12 ), .B(\modulator_0/un6lto11 ), .Y(
        \modulator_0/un5lto15_1 ));
    NOR2A \modulator_0/clock_counter_RNO[0]  (.A(trigger_signal_c), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(\modulator_0/N_121 ));
    DFN1E1C0 \data_source_0/state[2]  (.D(\data_source_0/state_4[2] ), 
        .CLK(signal_into_switch_net_0), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0/state[2]_net_1 ));
    IOPAD_TRI \RSS_EN_pad/U0/U0  (.D(\RSS_EN_pad/U0/NET1 ), .E(
        \RSS_EN_pad/U0/NET2 ), .PAD(RSS_EN));
    OR3 \modulator_0/clock_counter_RNIQ2O3[1]  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .C(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/un6lt4_2 ));
    NOR3C \modulator_0/clock_counter_RNIK2LR_0[15]  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un6lto15_1 ));
    DFN1E1C0 \modulator_0/clock_counter[13]  (.D(
        \modulator_0/clock_counter_n13 ), .CLK(
        signal_into_switch_net_0), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[13]_net_1 ));
    NOR3A \modulator_0/counter_RNIUHHV1[5]  (.A(
        \modulator_0/counter19_3 ), .B(\modulator_0/counter[4]_net_1 ), 
        .C(\modulator_0/counter[5]_net_1 ), .Y(
        \modulator_0/counter23_2 ));
    OR2A \data_source_0/counter_RNI3B613[9]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_38 ), 
        .Y(\data_source_0/N_39 ));
    IOPAD_IN \clock_pad/U0/U0  (.PAD(clock), .Y(\clock_pad/U0/NET1 ));
    XA1 \modulator_0/clock_counter_RNO[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n5 ));
    AND3 \main_clock_0/un5_counter_1_I_19  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[2] ), .C(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/N_2 ));
    DFN1P0 \data_source_0/counter[3]  (.D(\data_source_0/N_22 ), .CLK(
        signal_into_switch_net_0), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[3] ));
    OR2A \data_source_0/counter_RNO_0[15]  (.A(
        \data_source_0/counter[14]_net_1 ), .B(\data_source_0/N_43 ), 
        .Y(\data_source_0/N_44 ));
    DFN1C0 \main_clock_0/counter[1]  (.D(\main_clock_0/I_5 ), .CLK(GLA)
        , .CLR(reset_c), .Q(\main_clock_0/counter[1]_net_1 ));
    OR2A \data_source_0/state_RNO[3]  (.A(output_signal), .B(
        \data_source_0/state[2]_net_1 ), .Y(\data_source_0/state_4[3] )
        );
    XA1A \data_source_0/counter_RNO[15]  (.A(
        \data_source_0/counter[15]_net_1 ), .B(\data_source_0/N_44 ), 
        .C(output_signal_0), .Y(\data_source_0/counter_n15 ));
    AND3 \main_clock_0/un5_counter_1_I_16  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[1] ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/N_3 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
