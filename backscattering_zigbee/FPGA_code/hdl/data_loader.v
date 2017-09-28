///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: data_loader.v
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

module data_loader( clock, reset, trigger_signal, out_sig );
input clock, reset, trigger_signal;
output reg out_sig;

reg[11:0] counter;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        counter <= 0;
        out_sig <= 0;
    end
    else if (trigger_signal)
    begin
        if (counter==12'd639)
        begin
            counter <= 0;            
            out_sig <= ~out_sig;
        end
        else
        begin
            counter <= counter+1;
            out_sig <= out_sig;
        end
    end
    else
    begin
        counter <= 0;
        out_sig <= 0;
    end
end

endmodule

