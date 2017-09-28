///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: data_rate.v
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

module data_rate( clock, reset, output_data_rate );
input clock, reset;
output reg output_data_rate;

reg[11:0] counter;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        counter <= 0;
        output_data_rate <= 0;
    end
    else
    begin
        if (counter==12'd10)
        begin
            counter <= 0;            
            output_data_rate <= ~output_data_rate;
        end
        else
        begin
            counter <= counter+1;
            output_data_rate <= output_data_rate;
        end
    end
end

endmodule