`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 11:13:32
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_flipflop_tb();
reg d,clk,reset;
wire q,qbar;
d_flipflop dut(.d(d),.clk(clk),.reset(reset),.q(q),.qbar(qbar));
initial
begin
d=1'b0;
clk=1'b0;
reset=1'b1;
#100
reset=1'b0;
#20
forever 
#40
d=~d;
end
always #10
clk=~clk;
endmodule
