///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: rf_logic_test_module.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::IGLOO> <Die::AGLN250V2> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
//`timescale <time_units> / <precision>

module rf_logic_test_module( clock, reset, switch_control, envelop_detector_enable );
input clock, reset;
output reg switch_control;
output reg envelop_detector_enable;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        switch_control <= 0;
        envelop_detector_enable <= 0;
    end
    else
    begin
        switch_control <= 0;
        envelop_detector_enable <= 1;
    end
end

endmodule

