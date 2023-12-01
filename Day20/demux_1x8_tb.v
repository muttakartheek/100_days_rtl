`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 23:14:19
// Design Name: 
// Module Name: demux_1x8_tb
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

module demux_1x8_tb();
reg in;
reg s0;
reg s1;
reg s2;
wire d0;
wire d1;
wire d2;
wire d3;
wire d4;
wire d5;
wire d6;
wire d7;
demux_1x8 uut (.in(in),.s0(s0),.s1(s1),.s2(s2),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7));
initial begin
in = 0;s0 = 0;s1 = 0;s2 = 0;
#100;
in = 1;s0 = 0;s1 = 1;s2 = 0;
#100;
in = 1;s0 = 1;s1 =0 ;s2 = 0;
#100;
in = 1;s0 = 1;s1 =1 ;s2 = 0;
#100;
in = 1;s0 = 1;s1 =0 ;s2 = 0;
#100;
in = 1;s0 = 1;s1 =0 ;s2 = 1;
#100;
in = 1;s0 = 0;s1 =1 ;s2 = 1;
#100;
in = 1;s0 = 1;s1 =1 ;s2 = 1;


end
endmodule


