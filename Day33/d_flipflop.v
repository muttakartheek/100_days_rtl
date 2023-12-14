`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 11:03:30
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(d,clk,q,qbar,reset);
input d,clk,reset;
output reg q;
output qbar;
assign qbar=~q;
always @(posedge clk)
begin
if(reset==1'b1)
q=1'b0;
else
q=d;
end
endmodule
