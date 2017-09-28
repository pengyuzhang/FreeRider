///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: six_hundred_khz_clock.v
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

module six_hundred_khz_clock( clock_in, reset, trigger_signal, clock_out );
input clock_in, reset, trigger_signal;
output reg clock_out;

reg[11:0] counter;

always @(posedge clock_in or negedge reset)
begin
    if (!reset)
    begin
        counter <= 0;
        clock_out <= 1;
    end
    else if (trigger_signal)
    begin
        if (counter==12'd19)
        begin
            counter <= 0;
            clock_out <= ~clock_out;
        end
        else
        begin
            counter <= counter+1;
            clock_out <= clock_out;
        end
    end
    else
    begin
        counter <= 0;
        clock_out <= 1;
    end
end

endmodule

