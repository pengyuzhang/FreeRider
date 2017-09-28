//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Sep 28 13:31:27 2017
// Version: v11.8 11.8.0.26
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top
module top(
    // Inputs
    clock,
    reset,
    trigger_signal,
    // Outputs
    GLA,
    RSS_EN,
    Y,
    output_signal
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  clock;
input  reset;
input  trigger_signal;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GLA;
output RSS_EN;
output Y;
output output_signal;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   clock;
wire   GLA_net_0;
wire   GLA_0;
wire   OR3_0_Y;
wire   output_signal_net_0;
wire   reset;
wire   six_hundred_khz_clock_0_clock_out;
wire   ten_mhz_clock_0_clock_out;
wire   trigger_signal;
wire   Y_net_0;
wire   GLA_net_1;
wire   Y_net_1;
wire   output_signal_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign RSS_EN              = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GLA_net_1           = GLA_net_0;
assign GLA                 = GLA_net_1;
assign Y_net_1             = Y_net_0;
assign Y                   = Y_net_1;
assign output_signal_net_1 = output_signal_net_0;
assign output_signal       = output_signal_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( GLA_net_0 ),
        .B ( OR3_0_Y ),
        // Outputs
        .Y ( Y_net_0 ) 
        );

//--------main_clock
main_clock main_clock_0(
        // Inputs
        .clock     ( GLA_0 ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( GLA_net_0 ) 
        );

//--------modulator
modulator modulator_0(
        // Inputs
        .clock          ( GLA_0 ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .output_signal  ( output_signal_net_0 ) 
        );

//--------OR3
OR3 OR3_0(
        // Inputs
        .A ( six_hundred_khz_clock_0_clock_out ),
        .B ( ten_mhz_clock_0_clock_out ),
        .C ( output_signal_net_0 ),
        // Outputs
        .Y ( OR3_0_Y ) 
        );

//--------pll_core
pll_core pll_core_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( clock ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( GLA_0 ) 
        );

//--------six_hundred_khz_clock
six_hundred_khz_clock six_hundred_khz_clock_0(
        // Inputs
        .clock_in       ( GLA_0 ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .clock_out      ( six_hundred_khz_clock_0_clock_out ) 
        );

//--------ten_mhz_clock
ten_mhz_clock ten_mhz_clock_0(
        // Inputs
        .clock_in       ( GLA_0 ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .clock_out      ( ten_mhz_clock_0_clock_out ) 
        );


endmodule
