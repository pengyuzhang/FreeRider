//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Sep 28 11:34:52 2017
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
    RSS_EN,
    signal_into_switch
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
output RSS_EN;
output signal_into_switch;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   AND2_0_Y;
wire   AND2_1_Y;
wire   AND2_2_Y;
wire   AND2_3_Y;
wire   clock;
wire   data_path_signal;
wire   data_source_0_output_data;
wire   INV_1_Y;
wire   INV_2_Y;
wire   output_signal;
wire   pll_core_0_GLA;
wire   reset;
wire   signal_into_switch_net_0;
wire   signal_into_switch_0;
wire   trigger_signal;
wire   Y;
wire   signal_into_switch_0_net_0;
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
assign RSS_EN                     = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign signal_into_switch_0_net_0 = signal_into_switch_0;
assign signal_into_switch         = signal_into_switch_0_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( signal_into_switch_net_0 ),
        .B ( data_source_0_output_data ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------AND2
AND2 AND2_1(
        // Inputs
        .A ( Y ),
        .B ( INV_1_Y ),
        // Outputs
        .Y ( AND2_1_Y ) 
        );

//--------AND2
AND2 AND2_2(
        // Inputs
        .A ( data_path_signal ),
        .B ( output_signal ),
        // Outputs
        .Y ( AND2_2_Y ) 
        );

//--------AND2
AND2 AND2_3(
        // Inputs
        .A ( signal_into_switch_net_0 ),
        .B ( INV_2_Y ),
        // Outputs
        .Y ( AND2_3_Y ) 
        );

//--------data_source
data_source data_source_0(
        // Inputs
        .clock       ( signal_into_switch_net_0 ),
        .reset       ( reset ),
        .trigger     ( output_signal ),
        // Outputs
        .output_data ( data_source_0_output_data ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( signal_into_switch_net_0 ),
        // Outputs
        .Y ( Y ) 
        );

//--------INV
INV INV_1(
        // Inputs
        .A ( data_source_0_output_data ),
        // Outputs
        .Y ( INV_1_Y ) 
        );

//--------INV
INV INV_2(
        // Inputs
        .A ( output_signal ),
        // Outputs
        .Y ( INV_2_Y ) 
        );

//--------main_clock
main_clock main_clock_0(
        // Inputs
        .clock     ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( signal_into_switch_net_0 ) 
        );

//--------modulator
modulator modulator_0(
        // Inputs
        .clock          ( signal_into_switch_net_0 ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .output_signal  ( output_signal ) 
        );

//--------OR2
OR2 OR2_0(
        // Inputs
        .A ( AND2_0_Y ),
        .B ( AND2_1_Y ),
        // Outputs
        .Y ( data_path_signal ) 
        );

//--------OR2
OR2 OR2_1(
        // Inputs
        .A ( AND2_2_Y ),
        .B ( AND2_3_Y ),
        // Outputs
        .Y ( signal_into_switch_0 ) 
        );

//--------pll_core
pll_core pll_core_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( clock ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( pll_core_0_GLA ) 
        );


endmodule
