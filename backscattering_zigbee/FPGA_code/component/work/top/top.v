//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Sep 28 13:48:00 2017
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
    data_path_signal,
    output_signal,
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
output GLA;
output RSS_EN;
output data_path_signal;
output output_signal;
output signal_into_switch;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   AND2_0_Y;
wire   AND2_1_Y;
wire   AND2_3_Y;
wire   AND3_0_Y;
wire   AND3_1_Y;
wire   clock;
wire   data_loader_0_out_sig;
wire   data_path_signal_net_0;
wire   GLA_net_0;
wire   INV_1_Y;
wire   INV_2_Y;
wire   INV_3_Y;
wire   output_data_rate;
wire   output_signal_net_0;
wire   pll_core_0_GLA;
wire   reset;
wire   signal_into_switch_net_0;
wire   ten_mhz_clock_0_clock_out;
wire   trigger_signal;
wire   Y;
wire   GLA_net_1;
wire   output_signal_net_1;
wire   signal_into_switch_net_1;
wire   data_path_signal_net_1;
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
assign RSS_EN                   = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GLA_net_1                = GLA_net_0;
assign GLA                      = GLA_net_1;
assign output_signal_net_1      = output_signal_net_0;
assign output_signal            = output_signal_net_1;
assign signal_into_switch_net_1 = signal_into_switch_net_0;
assign signal_into_switch       = signal_into_switch_net_1;
assign data_path_signal_net_1   = data_path_signal_net_0;
assign data_path_signal         = data_path_signal_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( GLA_net_0 ),
        .B ( output_data_rate ),
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
AND2 AND2_3(
        // Inputs
        .A ( GLA_net_0 ),
        .B ( INV_2_Y ),
        // Outputs
        .Y ( AND2_3_Y ) 
        );

//--------AND3
AND3 AND3_0(
        // Inputs
        .A ( output_signal_net_0 ),
        .B ( data_loader_0_out_sig ),
        .C ( data_path_signal_net_0 ),
        // Outputs
        .Y ( AND3_0_Y ) 
        );

//--------AND3
AND3 AND3_1(
        // Inputs
        .A ( output_signal_net_0 ),
        .B ( INV_3_Y ),
        .C ( GLA_net_0 ),
        // Outputs
        .Y ( AND3_1_Y ) 
        );

//--------data_loader
data_loader data_loader_0(
        // Inputs
        .clock          ( ten_mhz_clock_0_clock_out ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .out_sig        ( data_loader_0_out_sig ) 
        );

//--------data_rate
data_rate data_rate_0(
        // Inputs
        .clock            ( ten_mhz_clock_0_clock_out ),
        .reset            ( reset ),
        // Outputs
        .output_data_rate ( output_data_rate ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( GLA_net_0 ),
        // Outputs
        .Y ( Y ) 
        );

//--------INV
INV INV_1(
        // Inputs
        .A ( output_data_rate ),
        // Outputs
        .Y ( INV_1_Y ) 
        );

//--------INV
INV INV_2(
        // Inputs
        .A ( output_signal_net_0 ),
        // Outputs
        .Y ( INV_2_Y ) 
        );

//--------INV
INV INV_3(
        // Inputs
        .A ( data_loader_0_out_sig ),
        // Outputs
        .Y ( INV_3_Y ) 
        );

//--------main_clock
main_clock main_clock_0(
        // Inputs
        .clock     ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( GLA_net_0 ) 
        );

//--------modulator
modulator modulator_0(
        // Inputs
        .clock          ( ten_mhz_clock_0_clock_out ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .output_signal  ( output_signal_net_0 ) 
        );

//--------OR2
OR2 OR2_0(
        // Inputs
        .A ( AND2_0_Y ),
        .B ( AND2_1_Y ),
        // Outputs
        .Y ( data_path_signal_net_0 ) 
        );

//--------OR3
OR3 OR3_0(
        // Inputs
        .A ( AND3_0_Y ),
        .B ( AND3_1_Y ),
        .C ( AND2_3_Y ),
        // Outputs
        .Y ( signal_into_switch_net_0 ) 
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

//--------ten_mhz_clock
ten_mhz_clock ten_mhz_clock_0(
        // Inputs
        .clock_in  ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( ten_mhz_clock_0_clock_out ) 
        );


endmodule
