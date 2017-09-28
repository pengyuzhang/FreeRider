///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: data_source.v
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

module data_source( clock, reset, trigger, output_data );
input clock, reset;
input trigger;
output reg output_data;

reg[7:0] state;
reg[15:0] counter;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        output_data <= 0;

        state[7:0] <= 8'b10101010;

        counter <= 0;
    end
    else if (trigger)
    begin
        if (counter==16'd0)
        begin
            counter <= counter+1;
            state <= {state[6:0],state[7]};
            output_data <= state[7];
        end
        else
        begin
            counter <= counter + 1;
            if (counter==16'd799)
                counter <= 0;
        end
    end
    else
    begin
        output_data <= 0;

        state[7:0] <= 8'b10101010;

        counter <= 0;
    end
end

endmodule

