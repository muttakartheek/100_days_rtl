`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 22:39:10
// Design Name: 
// Module Name: demux_1x4_tb
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


module demux_1x4_tb(

    );
    reg d;
    reg s0,s1;
    wire y0;
    wire y1;
    wire y2;
    wire y3;
    demux_1x4 dut(.d(d),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
                             d = 1;s0 = 0;s1 = 0;
                             #100;
                             #100;d = 1;s0 = 1;s1 = 0;
                             #100;d = 1;s0 = 0;s1 = 1;
                             #100;d = 1;s0 = 1;s1 = 1;

 end
 endmodule
