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
reg[1:0] state;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        counter <= 0;
        output_data_rate <= 0;
        state <= 0;
    end
    else
    begin
        if (counter==12'h00F)
        begin
            counter <= 0;
            if (state==2'd0)
            begin
                output_data_rate <= ~output_data_rate;
                state <= 1;
            end
            else if (state==2'd1)
            begin
                output_data_rate <= ~output_data_rate;
                state <= 2;
            end
            else if (state==2'd2)
            begin
                output_data_rate <= ~output_data_rate;
                state <= 3;
            end
            else if (state==2'd3)
            begin
                output_data_rate <= ~output_data_rate;
                state <= 0;
            end
        end
        else
        begin
            counter <= counter+1;
            output_data_rate <= output_data_rate;
        end
    end
end

endmodule