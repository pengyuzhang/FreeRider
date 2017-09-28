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
    
    PLL_SDF #( .VCOFREQUENCY(40.000000) )  pll_sdf_0 (.CLKA(CLKA), 
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
    PLL_DLY_SDF #( .VCOFREQUENCY(40.000000) )  pll_dly_sdf_0 (.GLA(GLA)
        , .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), .GLAIN(
        GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module top(
       clock,
       reset,
       trigger_signal,
       GLA,
       RSS_EN,
       Y,
       output_signal
    );
input  clock;
input  reset;
input  trigger_signal;
output GLA;
output RSS_EN;
output Y;
output output_signal;

    wire OR3_0_Y, GLA_net_1, six_hundred_khz_clock_0_clock_out, 
        ten_mhz_clock_0_clock_out, clock_c, reset_c, trigger_signal_c, 
        GLA_c, Y_c, output_signal_c, 
        \six_hundred_khz_clock_0/counter_23_0_net_1 , 
        \six_hundred_khz_clock_0/counter[10]_net_1 , 
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa , 
        \six_hundred_khz_clock_0/counter14_7_net_1 , 
        \six_hundred_khz_clock_0/counter[0]_net_1 , 
        \six_hundred_khz_clock_0/counter[1]_net_1 , 
        \six_hundred_khz_clock_0/counter14_4_net_1 , 
        \six_hundred_khz_clock_0/counter14_6_net_1 , 
        \six_hundred_khz_clock_0/counter14_3_net_1 , 
        \six_hundred_khz_clock_0/counter[6]_net_1 , 
        \six_hundred_khz_clock_0/counter[7]_net_1 , 
        \six_hundred_khz_clock_0/counter14_5_net_1 , 
        \six_hundred_khz_clock_0/counter14_1 , 
        \six_hundred_khz_clock_0/counter[11]_net_1 , 
        \six_hundred_khz_clock_0/counter[4]_net_1 , 
        \six_hundred_khz_clock_0/counter[2]_net_1 , 
        \six_hundred_khz_clock_0/counter[5]_net_1 , 
        \six_hundred_khz_clock_0/counter[3]_net_1 , 
        \six_hundred_khz_clock_0/counter[9]_net_1 , 
        \six_hundred_khz_clock_0/counter[8]_net_1 , 
        \six_hundred_khz_clock_0/counter14_net_1 , 
        \six_hundred_khz_clock_0/counter_n2_net_1 , 
        \six_hundred_khz_clock_0/counter_n2_tz_net_1 , 
        \six_hundred_khz_clock_0/counter_n3_net_1 , 
        \six_hundred_khz_clock_0/counter_c2_net_1 , 
        \six_hundred_khz_clock_0/counter_n4_net_1 , 
        \six_hundred_khz_clock_0/counter_n4_tz_net_1 , 
        \six_hundred_khz_clock_0/counter_n5_net_1 , 
        \six_hundred_khz_clock_0/counter_c4_net_1 , 
        \six_hundred_khz_clock_0/counter_n6_net_1 , 
        \six_hundred_khz_clock_0/counter_n6_tz_net_1 , 
        \six_hundred_khz_clock_0/counter_n7_net_1 , 
        \six_hundred_khz_clock_0/counter_c6_net_1 , 
        \six_hundred_khz_clock_0/counter_n8_net_1 , 
        \six_hundred_khz_clock_0/counter_c7_net_1 , 
        \six_hundred_khz_clock_0/counter_n9_net_1 , 
        \six_hundred_khz_clock_0/counter_c8_net_1 , 
        \six_hundred_khz_clock_0/counter_n10_net_1 , 
        \six_hundred_khz_clock_0/counter_c9_net_1 , 
        \six_hundred_khz_clock_0/N_55 , 
        \six_hundred_khz_clock_0/counter_n0_net_1 , 
        \six_hundred_khz_clock_0/counter_n1_net_1 , 
        \six_hundred_khz_clock_0/counter_n11_net_1 , 
        \six_hundred_khz_clock_0/clock_out_4 , 
        \main_clock_0/counter[1]_net_1 , 
        \main_clock_0/counter[0]_net_1 , 
        \main_clock_0/counter[3]_net_1 , 
        \main_clock_0/DWACT_FINC_E[0] , 
        \main_clock_0/counter14_4_net_1 , 
        \main_clock_0/counter14_2_net_1 , 
        \main_clock_0/counter[2]_net_1 , 
        \main_clock_0/counter[5]_net_1 , 
        \main_clock_0/counter14_3_net_1 , 
        \main_clock_0/counter[6]_net_1 , 
        \main_clock_0/counter[7]_net_1 , 
        \main_clock_0/counter[4]_net_1 , 
        \main_clock_0/clock_out_RNO_net_1 , 
        \main_clock_0/counter_3[0]_net_1 , \main_clock_0/I_5 , 
        \main_clock_0/I_7 , \main_clock_0/I_9 , \main_clock_0/I_12 , 
        \main_clock_0/I_14 , \main_clock_0/I_17 , \main_clock_0/I_20 , 
        \main_clock_0/N_2 , \main_clock_0/DWACT_FINC_E[2] , 
        \main_clock_0/N_3 , \main_clock_0/DWACT_FINC_E[1] , 
        \main_clock_0/N_4 , \main_clock_0/N_6 , 
        \ten_mhz_clock_0/counter_23_0_net_1 , 
        \ten_mhz_clock_0/counter[10]_net_1 , 
        \ten_mhz_clock_0/clock_out_1_sqmuxa , 
        \ten_mhz_clock_0/counter14_5_net_1 , 
        \ten_mhz_clock_0/counter[8]_net_1 , 
        \ten_mhz_clock_0/counter14_3_net_1 , 
        \ten_mhz_clock_0/counter[6]_net_1 , 
        \ten_mhz_clock_0/counter14_4_net_1 , 
        \ten_mhz_clock_0/counter14_1 , 
        \ten_mhz_clock_0/counter[11]_net_1 , 
        \ten_mhz_clock_0/counter[5]_net_1 , 
        \ten_mhz_clock_0/counter[4]_net_1 , 
        \ten_mhz_clock_0/counter[9]_net_1 , 
        \ten_mhz_clock_0/counter[7]_net_1 , 
        \ten_mhz_clock_0/counter14_net_1 , 
        \ten_mhz_clock_0/counter_c3_net_1 , 
        \ten_mhz_clock_0/counter_n2_net_1 , 
        \ten_mhz_clock_0/counter_n2_tz_net_1 , 
        \ten_mhz_clock_0/counter[0]_net_1 , 
        \ten_mhz_clock_0/counter[1]_net_1 , 
        \ten_mhz_clock_0/counter[2]_net_1 , 
        \ten_mhz_clock_0/counter_n3_net_1 , 
        \ten_mhz_clock_0/counter_c2_net_1 , 
        \ten_mhz_clock_0/counter[3]_net_1 , 
        \ten_mhz_clock_0/counter_n4_net_1 , 
        \ten_mhz_clock_0/counter_n5_net_1 , 
        \ten_mhz_clock_0/counter_c4_net_1 , 
        \ten_mhz_clock_0/counter_n6_net_1 , 
        \ten_mhz_clock_0/counter_n6_tz_net_1 , 
        \ten_mhz_clock_0/counter_n7_net_1 , 
        \ten_mhz_clock_0/counter_c6_net_1 , 
        \ten_mhz_clock_0/counter_n8_net_1 , 
        \ten_mhz_clock_0/counter_c7_net_1 , 
        \ten_mhz_clock_0/counter_n9_net_1 , 
        \ten_mhz_clock_0/counter_c8_net_1 , 
        \ten_mhz_clock_0/counter_n10_net_1 , 
        \ten_mhz_clock_0/counter_c9_net_1 , \ten_mhz_clock_0/N_55 , 
        \ten_mhz_clock_0/counter_n0_net_1 , 
        \ten_mhz_clock_0/counter_n1_net_1 , 
        \ten_mhz_clock_0/counter_n11_net_1 , 
        \ten_mhz_clock_0/clock_out_4 , GND, VCC, 
        \modulator_0/clock_counter_31_0 , 
        \modulator_0/clock_counter[14]_net_1 , 
        \modulator_0/un3lto15_2 , 
        \modulator_0/clock_counter[15]_net_1 , 
        \modulator_0/un3lto15_1 , 
        \modulator_0/clock_counter[13]_net_1 , 
        \modulator_0/clock_counter[12]_net_1 , 
        \modulator_0/un4lto15_3 , \modulator_0/un4lto15_2 , 
        \modulator_0/un3lto11 , \modulator_0/un3lto10_0 , 
        \modulator_0/un4lto10 , \modulator_0/un4lto9 , 
        \modulator_0/un4lt8_6 , \modulator_0/un3lto7 , 
        \modulator_0/un3lto8 , \modulator_0/un4lt8_4 , 
        \modulator_0/un4lt8_5 , \modulator_0/clock_counter[1]_net_1 , 
        \modulator_0/clock_counter[2]_net_1 , \modulator_0/un4lt8_2 , 
        \modulator_0/clock_counter[3]_net_1 , 
        \modulator_0/clock_counter[4]_net_1 , \modulator_0/un3lto6 , 
        \modulator_0/clock_counter[0]_net_1 , \modulator_0/un3lto5 , 
        \modulator_0/output_signal_3 , \modulator_0/un3 , 
        \modulator_0/un4 , \modulator_0/un3lt11 , \modulator_0/un3lt8 , 
        \modulator_0/un4lt10 , \modulator_0/clock_counter_n2 , 
        \modulator_0/clock_counter_c1 , \modulator_0/clock_counter_n3 , 
        \modulator_0/clock_counter_c2 , \modulator_0/clock_counter_n4 , 
        \modulator_0/clock_counter_c3 , \modulator_0/clock_counter_n5 , 
        \modulator_0/clock_counter_c4 , \modulator_0/clock_counter_n6 , 
        \modulator_0/clock_counter_c5 , \modulator_0/clock_counter_n7 , 
        \modulator_0/clock_counter_c6 , \modulator_0/clock_counter_n8 , 
        \modulator_0/clock_counter_c7 , \modulator_0/clock_counter_n9 , 
        \modulator_0/clock_counter_c8 , 
        \modulator_0/clock_counter_n10 , 
        \modulator_0/clock_counter_c9 , 
        \modulator_0/clock_counter_n11 , 
        \modulator_0/clock_counter_c10 , 
        \modulator_0/clock_counter_n12 , 
        \modulator_0/clock_counter_c11 , 
        \modulator_0/clock_counter_n13 , 
        \modulator_0/clock_counter_c12 , 
        \modulator_0/clock_counter_n14 , 
        \modulator_0/clock_counter_c13 , \modulator_0/N_69 , 
        \modulator_0/clock_counter_n0 , \modulator_0/clock_counter_n1 , 
        \modulator_0/clock_counter_n15 , \Y_pad/U0/NET1 , 
        \Y_pad/U0/NET2 , \reset_pad/U0/NET1 , \GLA_pad/U0/NET1 , 
        \GLA_pad/U0/NET2 , \output_signal_pad/U0/NET1 , 
        \output_signal_pad/U0/NET2 , \trigger_signal_pad/U0/NET1 , 
        \RSS_EN_pad/U0/NET1 , \RSS_EN_pad/U0/NET2 , 
        \clock_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    DFN1C0 \six_hundred_khz_clock_0/counter[11]  (.D(
        \six_hundred_khz_clock_0/counter_n11_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[11]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIPVCH1[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .Y(
        \modulator_0/clock_counter_c13 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[10]  (.D(
        \six_hundred_khz_clock_0/counter_n10_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[10]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[4]  (.D(
        \ten_mhz_clock_0/counter_n4_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[4]_net_1 ));
    NOR3 \main_clock_0/counter14_3  (.A(
        \main_clock_0/counter[6]_net_1 ), .B(
        \main_clock_0/counter[7]_net_1 ), .C(
        \main_clock_0/counter[3]_net_1 ), .Y(
        \main_clock_0/counter14_3_net_1 ));
    NOR2B \six_hundred_khz_clock_0/counter_n4  (.A(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .B(
        \six_hundred_khz_clock_0/counter_n4_tz_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n4_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIJ6HC[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un4lto9 ), .Y(
        \modulator_0/clock_counter_c9 ));
    XA1 \ten_mhz_clock_0/counter_n4  (.A(
        \ten_mhz_clock_0/counter_c3_net_1 ), .B(
        \ten_mhz_clock_0/counter[4]_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n4_net_1 ));
    AX1C \six_hundred_khz_clock_0/counter_n11  (.A(
        \six_hundred_khz_clock_0/counter_c9_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_23_0_net_1 ), .C(
        \six_hundred_khz_clock_0/N_55 ), .Y(
        \six_hundred_khz_clock_0/counter_n11_net_1 ));
    OA1 \modulator_0/output_signal_RNO_1  (.A(\modulator_0/un4lto10 ), 
        .B(\modulator_0/un4lt10 ), .C(\modulator_0/un4lto15_3 ), .Y(
        \modulator_0/un4 ));
    XA1 \modulator_0/clock_counter_RNO[10]  (.A(\modulator_0/un4lto10 )
        , .B(\modulator_0/clock_counter_c9 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n10 ));
    DFN1C0 \ten_mhz_clock_0/counter[6]  (.D(
        \ten_mhz_clock_0/counter_n6_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[6]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[3]  (.D(
        \ten_mhz_clock_0/counter_n3_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[3]_net_1 ));
    OR3B \modulator_0/output_signal_RNO  (.A(\modulator_0/un3 ), .B(
        trigger_signal_c), .C(\modulator_0/un4 ), .Y(
        \modulator_0/output_signal_3 ));
    XA1 \modulator_0/clock_counter_RNO[3]  (.A(
        \modulator_0/clock_counter[3]_net_1 ), .B(
        \modulator_0/clock_counter_c2 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n3 ));
    XA1 \ten_mhz_clock_0/counter_n5  (.A(
        \ten_mhz_clock_0/counter_c4_net_1 ), .B(
        \ten_mhz_clock_0/counter[5]_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n5_net_1 ));
    NOR2 \ten_mhz_clock_0/counter14_1_0  (.A(
        \ten_mhz_clock_0/counter[9]_net_1 ), .B(
        \ten_mhz_clock_0/counter[7]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_1 ));
    DFN1E0C0 \ten_mhz_clock_0/clock_out  (.D(
        \ten_mhz_clock_0/clock_out_4 ), .CLK(GLA_net_1), .CLR(reset_c), 
        .E(\ten_mhz_clock_0/clock_out_1_sqmuxa ), .Q(
        ten_mhz_clock_0_clock_out));
    XA1 \modulator_0/clock_counter_RNO[4]  (.A(
        \modulator_0/clock_counter[4]_net_1 ), .B(
        \modulator_0/clock_counter_c3 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n4 ));
    DFN1C0 \ten_mhz_clock_0/counter[1]  (.D(
        \ten_mhz_clock_0/counter_n1_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[1]_net_1 ));
    NOR2B \six_hundred_khz_clock_0/counter_c7  (.A(
        \six_hundred_khz_clock_0/counter_c6_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[7]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_c7_net_1 ));
    DFN1E0P0 \six_hundred_khz_clock_0/clock_out  (.D(
        \six_hundred_khz_clock_0/clock_out_4 ), .CLK(GLA_net_1), .PRE(
        reset_c), .E(\six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Q(
        six_hundred_khz_clock_0_clock_out));
    DFN1C0 \modulator_0/clock_counter[1]  (.D(
        \modulator_0/clock_counter_n1 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/clock_counter[1]_net_1 ));
    XA1 \ten_mhz_clock_0/counter_n7  (.A(
        \ten_mhz_clock_0/counter[7]_net_1 ), .B(
        \ten_mhz_clock_0/counter_c6_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n7_net_1 ));
    NOR2B \ten_mhz_clock_0/counter_c8  (.A(
        \ten_mhz_clock_0/counter_c7_net_1 ), .B(
        \ten_mhz_clock_0/counter[8]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c8_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[1]  (.D(
        \six_hundred_khz_clock_0/counter_n1_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[1]_net_1 ));
    NOR2A \six_hundred_khz_clock_0/counter14_4  (.A(
        \six_hundred_khz_clock_0/counter[4]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[2]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_4_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[13]  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter_c12 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n13 ));
    NOR2B \ten_mhz_clock_0/counter_n6  (.A(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .B(
        \ten_mhz_clock_0/counter_n6_tz_net_1 ), .Y(
        \ten_mhz_clock_0/counter_n6_net_1 ));
    IOPAD_TRI \output_signal_pad/U0/U0  (.D(
        \output_signal_pad/U0/NET1 ), .E(\output_signal_pad/U0/NET2 ), 
        .PAD(output_signal));
    NOR3C \ten_mhz_clock_0/counter14  (.A(
        \ten_mhz_clock_0/counter14_5_net_1 ), .B(
        \ten_mhz_clock_0/counter14_4_net_1 ), .C(
        \ten_mhz_clock_0/counter_c3_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_net_1 ));
    NOR3C \six_hundred_khz_clock_0/counter_c6  (.A(
        \six_hundred_khz_clock_0/counter[5]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c4_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[6]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_c6_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[6]  (.A(\modulator_0/un3lto6 ), 
        .B(\modulator_0/clock_counter_c5 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n6 ));
    OR3 \modulator_0/output_signal_RNO_13  (.A(
        \modulator_0/clock_counter[3]_net_1 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .C(
        \modulator_0/un3lto6 ), .Y(\modulator_0/un4lt8_4 ));
    DFN1C0 \modulator_0/clock_counter[11]  (.D(
        \modulator_0/clock_counter_n11 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\modulator_0/un3lto11 ));
    XOR2 \main_clock_0/un5_counter_1_I_17  (.A(\main_clock_0/N_3 ), .B(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/I_17 ));
    OA1 \modulator_0/output_signal_RNO_4  (.A(\modulator_0/un4lt8_5 ), 
        .B(\modulator_0/un4lt8_6 ), .C(\modulator_0/un4lto9 ), .Y(
        \modulator_0/un4lt10 ));
    DFN1C0 \modulator_0/clock_counter[3]  (.D(
        \modulator_0/clock_counter_n3 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/clock_counter[3]_net_1 ));
    AND3 \main_clock_0/un5_counter_1_I_10  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[0] ));
    DFN1C0 \ten_mhz_clock_0/counter[9]  (.D(
        \ten_mhz_clock_0/counter_n9_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[9]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[5]  (.D(
        \ten_mhz_clock_0/counter_n5_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[5]_net_1 ));
    XA1 \six_hundred_khz_clock_0/counter_n1  (.A(
        \six_hundred_khz_clock_0/counter[0]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[1]_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n1_net_1 ));
    OR3 \modulator_0/output_signal_RNO_9  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .C(
        \modulator_0/un4lt8_2 ), .Y(\modulator_0/un4lt8_5 ));
    DFN1C0 \modulator_0/clock_counter[12]  (.D(
        \modulator_0/clock_counter_n12 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\modulator_0/clock_counter[12]_net_1 ));
    IOTRI_OB_EB \RSS_EN_pad/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \RSS_EN_pad/U0/NET1 ), .EOUT(\RSS_EN_pad/U0/NET2 ));
    NOR3C \six_hundred_khz_clock_0/counter14  (.A(
        \six_hundred_khz_clock_0/counter14_6_net_1 ), .B(
        \six_hundred_khz_clock_0/counter14_5_net_1 ), .C(
        \six_hundred_khz_clock_0/counter14_7_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_net_1 ));
    AX1C \six_hundred_khz_clock_0/counter_n2_tz  (.A(
        \six_hundred_khz_clock_0/counter[0]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[1]_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[2]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n2_tz_net_1 ));
    XA1 \six_hundred_khz_clock_0/counter_n8  (.A(
        \six_hundred_khz_clock_0/counter[8]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c7_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n8_net_1 ));
    NOR2B \six_hundred_khz_clock_0/counter_24  (.A(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .B(
        \six_hundred_khz_clock_0/counter[11]_net_1 ), .Y(
        \six_hundred_khz_clock_0/N_55 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[5]  (.D(
        \six_hundred_khz_clock_0/counter_n5_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[5]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[1]  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n1 ));
    IOPAD_IN \trigger_signal_pad/U0/U0  (.PAD(trigger_signal), .Y(
        \trigger_signal_pad/U0/NET1 ));
    XA1 \ten_mhz_clock_0/counter_n10  (.A(
        \ten_mhz_clock_0/counter[10]_net_1 ), .B(
        \ten_mhz_clock_0/counter_c9_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n10_net_1 ));
    AX1C \modulator_0/clock_counter_RNO[15]  (.A(
        \modulator_0/clock_counter_c13 ), .B(
        \modulator_0/clock_counter_31_0 ), .C(\modulator_0/N_69 ), .Y(
        \modulator_0/clock_counter_n15 ));
    OR2 \modulator_0/output_signal_RNO_8  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[12]_net_1 ), .Y(
        \modulator_0/un3lto15_1 ));
    DFN1C0 \modulator_0/clock_counter[5]  (.D(
        \modulator_0/clock_counter_n5 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/un3lto5 ));
    DFN1C0 \ten_mhz_clock_0/counter[8]  (.D(
        \ten_mhz_clock_0/counter_n8_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[8]_net_1 ));
    DFN1C0 \modulator_0/clock_counter[8]  (.D(
        \modulator_0/clock_counter_n8 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/un3lto8 ));
    XA1 \six_hundred_khz_clock_0/counter_n10  (.A(
        \six_hundred_khz_clock_0/counter[10]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c9_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n10_net_1 ));
    NOR2A \ten_mhz_clock_0/counter_n0  (.A(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .B(
        \ten_mhz_clock_0/counter[0]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_n0_net_1 ));
    OR2B \six_hundred_khz_clock_0/clock_out_RNO  (.A(trigger_signal_c), 
        .B(six_hundred_khz_clock_0_clock_out), .Y(
        \six_hundred_khz_clock_0/clock_out_4 ));
    NOR2B \modulator_0/clock_counter_RNI2305[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .Y(
        \modulator_0/clock_counter_c3 ));
    NOR2B \modulator_0/clock_counter_RNIFVF2[1]  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .Y(
        \modulator_0/clock_counter_c1 ));
    AND2 \main_clock_0/un5_counter_1_I_15  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[1] ));
    NOR2B \ten_mhz_clock_0/counter14_3  (.A(
        \ten_mhz_clock_0/counter[5]_net_1 ), .B(
        \ten_mhz_clock_0/counter[4]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_3_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[4]  (.D(
        \six_hundred_khz_clock_0/counter_n4_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[4]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNO_0[15]  (.A(trigger_signal_c), 
        .B(\modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/clock_counter_31_0 ));
    AX1C \main_clock_0/un5_counter_1_I_12  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/DWACT_FINC_E[0] ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/I_12 ));
    NOR2B \ten_mhz_clock_0/counter_c3  (.A(
        \ten_mhz_clock_0/counter_c2_net_1 ), .B(
        \ten_mhz_clock_0/counter[3]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c3_net_1 ));
    AX1C \main_clock_0/un5_counter_1_I_7  (.A(
        \main_clock_0/counter[1]_net_1 ), .B(
        \main_clock_0/counter[0]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/I_7 ));
    DFN1C0 \modulator_0/clock_counter[14]  (.D(
        \modulator_0/clock_counter_n14 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\modulator_0/clock_counter[14]_net_1 ));
    XA1 \ten_mhz_clock_0/counter_n8  (.A(
        \ten_mhz_clock_0/counter[8]_net_1 ), .B(
        \ten_mhz_clock_0/counter_c7_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n8_net_1 ));
    AX1C \ten_mhz_clock_0/counter_n11  (.A(
        \ten_mhz_clock_0/counter_c9_net_1 ), .B(
        \ten_mhz_clock_0/counter_23_0_net_1 ), .C(
        \ten_mhz_clock_0/N_55 ), .Y(
        \ten_mhz_clock_0/counter_n11_net_1 ));
    NOR2A \six_hundred_khz_clock_0/counter14_RNIRNUC  (.A(
        trigger_signal_c), .B(
        \six_hundred_khz_clock_0/counter14_net_1 ), .Y(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ));
    DFN1C0 \main_clock_0/clock_out  (.D(
        \main_clock_0/clock_out_RNO_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(GLA_c));
    IOTRI_OB_EB \Y_pad/U0/U1  (.D(Y_c), .E(VCC), .DOUT(\Y_pad/U0/NET1 )
        , .EOUT(\Y_pad/U0/NET2 ));
    DFN1C0 \main_clock_0/counter[7]  (.D(\main_clock_0/I_20 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[7]_net_1 ));
    DFN1C0 \main_clock_0/counter[0]  (.D(
        \main_clock_0/counter_3[0]_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\main_clock_0/counter[0]_net_1 ));
    XA1 \six_hundred_khz_clock_0/counter_n5  (.A(
        \six_hundred_khz_clock_0/counter_c4_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[5]_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n5_net_1 ));
    OR3 \modulator_0/output_signal_RNO_10  (.A(\modulator_0/un3lto7 ), 
        .B(\modulator_0/un3lto8 ), .C(\modulator_0/un4lt8_4 ), .Y(
        \modulator_0/un4lt8_6 ));
    NOR3C \six_hundred_khz_clock_0/counter_c4  (.A(
        \six_hundred_khz_clock_0/counter[3]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c2_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[4]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_c4_net_1 ));
    PLLBA \pll_core_0/Core  (.CLKA(clock_c), .EXTFB(GND), .POWERDOWN(
        VCC), .GLA(GLA_net_1), .LOCK(), .GLB(), .YB(), .GLC(), .YC(), 
        .OADIV0(VCC), .OADIV1(GND), .OADIV2(GND), .OADIV3(GND), 
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
        .FBDIV1(VCC), .FBDIV2(VCC), .FBDIV3(GND), .FBDIV4(GND), 
        .FBDIV5(GND), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), 
        .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), 
        .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(VCC), 
        .VCOSEL2(GND));
    AO1 \modulator_0/output_signal_RNO_6  (.A(\modulator_0/un3lto5 ), 
        .B(\modulator_0/un3lto6 ), .C(\modulator_0/un3lto7 ), .Y(
        \modulator_0/un3lt8 ));
    IOPAD_TRI \Y_pad/U0/U0  (.D(\Y_pad/U0/NET1 ), .E(\Y_pad/U0/NET2 ), 
        .PAD(Y));
    DFN1C0 \main_clock_0/counter[4]  (.D(\main_clock_0/I_12 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[4]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[11]  (.A(\modulator_0/un3lto11 )
        , .B(\modulator_0/clock_counter_c10 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n11 ));
    NOR2B \modulator_0/clock_counter_RNI3U8B[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(\modulator_0/un3lto8 ), .Y(
        \modulator_0/clock_counter_c8 ));
    NOR2B \modulator_0/clock_counter_RNIB3OL[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un4lto10 ), 
        .Y(\modulator_0/clock_counter_c10 ));
    XA1 \six_hundred_khz_clock_0/counter_n9  (.A(
        \six_hundred_khz_clock_0/counter[9]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c8_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n9_net_1 ));
    OR2 \modulator_0/output_signal_RNO_7  (.A(\modulator_0/un4lto10 ), 
        .B(\modulator_0/un4lto9 ), .Y(\modulator_0/un3lto10_0 ));
    NOR2B \modulator_0/clock_counter_RNI6GO8[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un3lto6 ), .Y(
        \modulator_0/clock_counter_c6 ));
    DFN1C0 \main_clock_0/counter[2]  (.D(\main_clock_0/I_7 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[2]_net_1 ));
    NOR2A \ten_mhz_clock_0/clock_out_RNO  (.A(trigger_signal_c), .B(
        ten_mhz_clock_0_clock_out), .Y(\ten_mhz_clock_0/clock_out_4 ));
    DFN1C0 \ten_mhz_clock_0/counter[10]  (.D(
        \ten_mhz_clock_0/counter_n10_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[10]_net_1 ));
    NOR3A \six_hundred_khz_clock_0/counter14_6  (.A(
        \six_hundred_khz_clock_0/counter14_3_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[6]_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[7]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_6_net_1 ));
    IOTRI_OB_EB \output_signal_pad/U0/U1  (.D(output_signal_c), .E(VCC)
        , .DOUT(\output_signal_pad/U0/NET1 ), .EOUT(
        \output_signal_pad/U0/NET2 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[0]  (.D(
        \six_hundred_khz_clock_0/counter_n0_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[0]_net_1 ));
    NOR2B \ten_mhz_clock_0/counter_24  (.A(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .B(
        \ten_mhz_clock_0/counter[11]_net_1 ), .Y(
        \ten_mhz_clock_0/N_55 ));
    XOR2 \main_clock_0/un5_counter_1_I_14  (.A(\main_clock_0/N_4 ), .B(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/I_14 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[2]  (.D(
        \six_hundred_khz_clock_0/counter_n2_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[2]_net_1 ));
    XA1 \ten_mhz_clock_0/counter_n1  (.A(
        \ten_mhz_clock_0/counter[0]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n1_net_1 ));
    DFN1C0 \modulator_0/clock_counter[10]  (.D(
        \modulator_0/clock_counter_n10 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\modulator_0/un4lto10 ));
    AO1 \modulator_0/output_signal_RNO_2  (.A(\modulator_0/un3lt8 ), 
        .B(\modulator_0/un3lto8 ), .C(\modulator_0/un3lto10_0 ), .Y(
        \modulator_0/un3lt11 ));
    NOR2B \modulator_0/clock_counter_RNIKM0A[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(\modulator_0/un3lto7 ), .Y(
        \modulator_0/clock_counter_c7 ));
    DFN1C0 \modulator_0/clock_counter[7]  (.D(
        \modulator_0/clock_counter_n7 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/un3lto7 ));
    NOR2B \six_hundred_khz_clock_0/counter_n2  (.A(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .B(
        \six_hundred_khz_clock_0/counter_n2_tz_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n2_net_1 ));
    DFN1C0 \modulator_0/clock_counter[6]  (.D(
        \modulator_0/clock_counter_n6 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/un3lto6 ));
    NOR2B \modulator_0/clock_counter_RNID686[4]  (.A(
        \modulator_0/clock_counter_c3 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/clock_counter_c4 ));
    AX1C \ten_mhz_clock_0/counter_n6_tz  (.A(
        \ten_mhz_clock_0/counter[5]_net_1 ), .B(
        \ten_mhz_clock_0/counter_c4_net_1 ), .C(
        \ten_mhz_clock_0/counter[6]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_n6_tz_net_1 ));
    DFN1C0 \main_clock_0/counter[5]  (.D(\main_clock_0/I_14 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[5]_net_1 ));
    AOI1 \main_clock_0/counter_3[0]  (.A(
        \main_clock_0/counter14_4_net_1 ), .B(
        \main_clock_0/counter14_3_net_1 ), .C(
        \main_clock_0/counter[0]_net_1 ), .Y(
        \main_clock_0/counter_3[0]_net_1 ));
    NOR2A \six_hundred_khz_clock_0/counter_n0  (.A(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .B(
        \six_hundred_khz_clock_0/counter[0]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n0_net_1 ));
    OR3 OR3_0 (.A(six_hundred_khz_clock_0_clock_out), .B(
        ten_mhz_clock_0_clock_out), .C(output_signal_c), .Y(OR3_0_Y));
    IOPAD_TRI \GLA_pad/U0/U0  (.D(\GLA_pad/U0/NET1 ), .E(
        \GLA_pad/U0/NET2 ), .PAD(GLA));
    XA1 \ten_mhz_clock_0/counter_n3  (.A(
        \ten_mhz_clock_0/counter_c2_net_1 ), .B(
        \ten_mhz_clock_0/counter[3]_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n3_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIO0O3[2]  (.A(
        \modulator_0/clock_counter_c1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .Y(
        \modulator_0/clock_counter_c2 ));
    DFN1C0 \modulator_0/clock_counter[0]  (.D(
        \modulator_0/clock_counter_n0 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/clock_counter[0]_net_1 ));
    XA1 \six_hundred_khz_clock_0/counter_n3  (.A(
        \six_hundred_khz_clock_0/counter_c2_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[3]_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n3_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[3]  (.D(
        \six_hundred_khz_clock_0/counter_n3_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[3]_net_1 ));
    XOR2 \main_clock_0/un5_counter_1_I_5  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(\main_clock_0/I_5 ));
    IOIN_IB \trigger_signal_pad/U0/U1  (.YIN(
        \trigger_signal_pad/U0/NET1 ), .Y(trigger_signal_c));
    AND3 \main_clock_0/un5_counter_1_I_13  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/counter[3]_net_1 ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/N_4 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    NOR2B \modulator_0/clock_counter_RNO_1[15]  (.A(trigger_signal_c), 
        .B(\modulator_0/clock_counter[15]_net_1 ), .Y(
        \modulator_0/N_69 ));
    DFN1C0 \main_clock_0/counter[6]  (.D(\main_clock_0/I_17 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[6]_net_1 ));
    NOR2B \six_hundred_khz_clock_0/counter_c8  (.A(
        \six_hundred_khz_clock_0/counter_c7_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[8]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_c8_net_1 ));
    NOR2B \modulator_0/clock_counter_RNI41VU[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un3lto11 ), 
        .Y(\modulator_0/clock_counter_c11 ));
    DFN1C0 \modulator_0/clock_counter[2]  (.D(
        \modulator_0/clock_counter_n2 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/clock_counter[2]_net_1 ));
    AX1C \main_clock_0/clock_out_RNO  (.A(
        \main_clock_0/counter14_3_net_1 ), .B(
        \main_clock_0/counter14_4_net_1 ), .C(GLA_c), .Y(
        \main_clock_0/clock_out_RNO_net_1 ));
    NOR3C \modulator_0/output_signal_RNO_11  (.A(
        \modulator_0/un3lto11 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[12]_net_1 ), .Y(
        \modulator_0/un4lto15_2 ));
    DFN1C0 \modulator_0/clock_counter[9]  (.D(
        \modulator_0/clock_counter_n9 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/un4lto9 ));
    NOR2 \six_hundred_khz_clock_0/counter14_1_0  (.A(
        \six_hundred_khz_clock_0/counter[9]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[8]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_1 ));
    NOR2B \ten_mhz_clock_0/counter_23_0  (.A(
        \ten_mhz_clock_0/counter[10]_net_1 ), .B(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_23_0_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[7]  (.D(
        \six_hundred_khz_clock_0/counter_n7_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[7]_net_1 ));
    DFN1P0 \modulator_0/output_signal  (.D(
        \modulator_0/output_signal_3 ), .CLK(GLA_net_1), .PRE(reset_c), 
        .Q(output_signal_c));
    NOR3C \ten_mhz_clock_0/counter_c2  (.A(
        \ten_mhz_clock_0/counter[0]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .C(
        \ten_mhz_clock_0/counter[2]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c2_net_1 ));
    AX1C \six_hundred_khz_clock_0/counter_n4_tz  (.A(
        \six_hundred_khz_clock_0/counter[3]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c2_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[4]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n4_tz_net_1 ));
    AX1C \six_hundred_khz_clock_0/counter_n6_tz  (.A(
        \six_hundred_khz_clock_0/counter[5]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c4_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[6]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n6_tz_net_1 ));
    NOR2B \ten_mhz_clock_0/counter_c9  (.A(
        \ten_mhz_clock_0/counter_c8_net_1 ), .B(
        \ten_mhz_clock_0/counter[9]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c9_net_1 ));
    AND2 AND2_0 (.A(GLA_c), .B(OR3_0_Y), .Y(Y_c));
    NOR2B \six_hundred_khz_clock_0/counter_23_0  (.A(
        \six_hundred_khz_clock_0/counter[10]_net_1 ), .B(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_23_0_net_1 ));
    DFN1C0 \modulator_0/clock_counter[4]  (.D(
        \modulator_0/clock_counter_n4 ), .CLK(GLA_net_1), .CLR(reset_c)
        , .Q(\modulator_0/clock_counter[4]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIUV581[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(
        \modulator_0/clock_counter[12]_net_1 ), .Y(
        \modulator_0/clock_counter_c12 ));
    XA1 \modulator_0/clock_counter_RNO[9]  (.A(\modulator_0/un4lto9 ), 
        .B(\modulator_0/clock_counter_c8 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n9 ));
    XA1 \six_hundred_khz_clock_0/counter_n7  (.A(
        \six_hundred_khz_clock_0/counter[7]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter_c6_net_1 ), .C(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .Y(
        \six_hundred_khz_clock_0/counter_n7_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[6]  (.D(
        \six_hundred_khz_clock_0/counter_n6_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[6]_net_1 ));
    OR2 \modulator_0/output_signal_RNO_12  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/un3lto5 ), .Y(\modulator_0/un4lt8_2 ));
    XA1 \modulator_0/clock_counter_RNO[14]  (.A(
        \modulator_0/clock_counter[14]_net_1 ), .B(
        \modulator_0/clock_counter_c13 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n14 ));
    AND3 \main_clock_0/un5_counter_1_I_18  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[2] ));
    CLKIO \reset_pad/U0/U1  (.A(\reset_pad/U0/NET1 ), .Y(reset_c));
    OR3 \modulator_0/output_signal_RNO_3  (.A(
        \modulator_0/clock_counter[14]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/un3lto15_1 ), .Y(\modulator_0/un3lto15_2 ));
    XA1 \modulator_0/clock_counter_RNO[12]  (.A(
        \modulator_0/clock_counter[12]_net_1 ), .B(
        \modulator_0/clock_counter_c11 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n12 ));
    NOR2B \six_hundred_khz_clock_0/counter_c9  (.A(
        \six_hundred_khz_clock_0/counter_c8_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[9]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_c9_net_1 ));
    NOR2B \six_hundred_khz_clock_0/counter_n6  (.A(
        \six_hundred_khz_clock_0/clock_out_1_sqmuxa ), .B(
        \six_hundred_khz_clock_0/counter_n6_tz_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_n6_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[8]  (.D(
        \six_hundred_khz_clock_0/counter_n8_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[8]_net_1 ));
    NOR3A \six_hundred_khz_clock_0/counter14_5  (.A(
        \six_hundred_khz_clock_0/counter14_1 ), .B(
        \six_hundred_khz_clock_0/counter[10]_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[11]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_5_net_1 ));
    NOR3C \modulator_0/output_signal_RNO_5  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[14]_net_1 ), .C(
        \modulator_0/un4lto15_2 ), .Y(\modulator_0/un4lto15_3 ));
    NOR2B \modulator_0/clock_counter_RNIPAG7[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(\modulator_0/un3lto5 ), .Y(
        \modulator_0/clock_counter_c5 ));
    DFN1C0 \ten_mhz_clock_0/counter[11]  (.D(
        \ten_mhz_clock_0/counter_n11_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[11]_net_1 ));
    NOR2B \ten_mhz_clock_0/counter_c4  (.A(
        \ten_mhz_clock_0/counter_c3_net_1 ), .B(
        \ten_mhz_clock_0/counter[4]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c4_net_1 ));
    DFN1C0 \main_clock_0/counter[3]  (.D(\main_clock_0/I_9 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[3]_net_1 ));
    DFN1C0 \modulator_0/clock_counter[15]  (.D(
        \modulator_0/clock_counter_n15 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\modulator_0/clock_counter[15]_net_1 ));
    NOR2 \six_hundred_khz_clock_0/counter14_3  (.A(
        \six_hundred_khz_clock_0/counter[5]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[3]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_3_net_1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    DFN1C0 \ten_mhz_clock_0/counter[0]  (.D(
        \ten_mhz_clock_0/counter_n0_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[0]_net_1 ));
    NOR3C \six_hundred_khz_clock_0/counter_c2  (.A(
        \six_hundred_khz_clock_0/counter[0]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[1]_net_1 ), .C(
        \six_hundred_khz_clock_0/counter[2]_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter_c2_net_1 ));
    DFN1C0 \six_hundred_khz_clock_0/counter[9]  (.D(
        \six_hundred_khz_clock_0/counter_n9_net_1 ), .CLK(GLA_net_1), 
        .CLR(reset_c), .Q(\six_hundred_khz_clock_0/counter[9]_net_1 ));
    NOR3A \ten_mhz_clock_0/counter14_4  (.A(
        \ten_mhz_clock_0/counter14_1 ), .B(
        \ten_mhz_clock_0/counter[10]_net_1 ), .C(
        \ten_mhz_clock_0/counter[11]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_4_net_1 ));
    IOTRI_OB_EB \GLA_pad/U0/U1  (.D(GLA_c), .E(VCC), .DOUT(
        \GLA_pad/U0/NET1 ), .EOUT(\GLA_pad/U0/NET2 ));
    NOR3B \ten_mhz_clock_0/counter14_5  (.A(
        \ten_mhz_clock_0/counter[8]_net_1 ), .B(
        \ten_mhz_clock_0/counter14_3_net_1 ), .C(
        \ten_mhz_clock_0/counter[6]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_5_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[2]  (.A(
        \modulator_0/clock_counter[2]_net_1 ), .B(
        \modulator_0/clock_counter_c1 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n2 ));
    XOR2 \main_clock_0/un5_counter_1_I_20  (.A(\main_clock_0/N_2 ), .B(
        \main_clock_0/counter[7]_net_1 ), .Y(\main_clock_0/I_20 ));
    XA1 \modulator_0/clock_counter_RNO[8]  (.A(\modulator_0/un3lto8 ), 
        .B(\modulator_0/clock_counter_c7 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n8 ));
    XOR2 \main_clock_0/un5_counter_1_I_9  (.A(\main_clock_0/N_6 ), .B(
        \main_clock_0/counter[3]_net_1 ), .Y(\main_clock_0/I_9 ));
    AND3 \main_clock_0/un5_counter_1_I_8  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/N_6 ));
    XA1 \modulator_0/clock_counter_RNO[7]  (.A(\modulator_0/un3lto7 ), 
        .B(\modulator_0/clock_counter_c6 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n7 ));
    DFN1C0 \ten_mhz_clock_0/counter[7]  (.D(
        \ten_mhz_clock_0/counter_n7_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[7]_net_1 ));
    NOR2B \ten_mhz_clock_0/counter_n2  (.A(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .B(
        \ten_mhz_clock_0/counter_n2_tz_net_1 ), .Y(
        \ten_mhz_clock_0/counter_n2_net_1 ));
    IOIN_IB \clock_pad/U0/U1  (.YIN(\clock_pad/U0/NET1 ), .Y(clock_c));
    NOR2B \ten_mhz_clock_0/counter_c7  (.A(
        \ten_mhz_clock_0/counter_c6_net_1 ), .B(
        \ten_mhz_clock_0/counter[7]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c7_net_1 ));
    XA1 \ten_mhz_clock_0/counter_n9  (.A(
        \ten_mhz_clock_0/counter[9]_net_1 ), .B(
        \ten_mhz_clock_0/counter_c8_net_1 ), .C(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ), .Y(
        \ten_mhz_clock_0/counter_n9_net_1 ));
    NOR3C \ten_mhz_clock_0/counter_c6  (.A(
        \ten_mhz_clock_0/counter[5]_net_1 ), .B(
        \ten_mhz_clock_0/counter_c4_net_1 ), .C(
        \ten_mhz_clock_0/counter[6]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_c6_net_1 ));
    NOR3A \main_clock_0/counter14_4  (.A(
        \main_clock_0/counter14_2_net_1 ), .B(
        \main_clock_0/counter[2]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/counter14_4_net_1 ));
    NOR3C \six_hundred_khz_clock_0/counter14_7  (.A(
        \six_hundred_khz_clock_0/counter[0]_net_1 ), .B(
        \six_hundred_khz_clock_0/counter[1]_net_1 ), .C(
        \six_hundred_khz_clock_0/counter14_4_net_1 ), .Y(
        \six_hundred_khz_clock_0/counter14_7_net_1 ));
    NOR2A \modulator_0/clock_counter_RNO[0]  (.A(trigger_signal_c), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(
        \modulator_0/clock_counter_n0 ));
    IOPAD_TRI \RSS_EN_pad/U0/U0  (.D(\RSS_EN_pad/U0/NET1 ), .E(
        \RSS_EN_pad/U0/NET2 ), .PAD(RSS_EN));
    NOR2 \main_clock_0/counter14_2  (.A(
        \main_clock_0/counter[4]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(
        \main_clock_0/counter14_2_net_1 ));
    DFN1C0 \modulator_0/clock_counter[13]  (.D(
        \modulator_0/clock_counter_n13 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\modulator_0/clock_counter[13]_net_1 ));
    IOPAD_IN \clock_pad/U0/U0  (.PAD(clock), .Y(\clock_pad/U0/NET1 ));
    XA1 \modulator_0/clock_counter_RNO[5]  (.A(\modulator_0/un3lto5 ), 
        .B(\modulator_0/clock_counter_c4 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n5 ));
    AND3 \main_clock_0/un5_counter_1_I_19  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[2] ), .C(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/N_2 ));
    AX1C \ten_mhz_clock_0/counter_n2_tz  (.A(
        \ten_mhz_clock_0/counter[0]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .C(
        \ten_mhz_clock_0/counter[2]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_n2_tz_net_1 ));
    NOR2A \ten_mhz_clock_0/counter14_RNI701H  (.A(trigger_signal_c), 
        .B(\ten_mhz_clock_0/counter14_net_1 ), .Y(
        \ten_mhz_clock_0/clock_out_1_sqmuxa ));
    DFN1C0 \ten_mhz_clock_0/counter[2]  (.D(
        \ten_mhz_clock_0/counter_n2_net_1 ), .CLK(GLA_net_1), .CLR(
        reset_c), .Q(\ten_mhz_clock_0/counter[2]_net_1 ));
    DFN1C0 \main_clock_0/counter[1]  (.D(\main_clock_0/I_5 ), .CLK(
        GLA_net_1), .CLR(reset_c), .Q(\main_clock_0/counter[1]_net_1 ));
    AO1 \modulator_0/output_signal_RNO_0  (.A(\modulator_0/un3lt11 ), 
        .B(\modulator_0/un3lto11 ), .C(\modulator_0/un3lto15_2 ), .Y(
        \modulator_0/un3 ));
    AND3 \main_clock_0/un5_counter_1_I_16  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[1] ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/N_3 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
