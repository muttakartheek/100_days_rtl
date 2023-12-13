`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 11:49:06
// Design Name: 
// Module Name: sr_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_ff(
    input s,
    input r,
     input clk,
    output Q
         );
reg Q;


always@(posedge clk)
begin
    case({s,r})
    2'b0_0:Q<=Q;
    2'b0_1:Q<=1'b0;
    2'b1_0:Q<=1'b1;
    2'b1_1:Q<=1'bz;
endcase
end

endmodule
