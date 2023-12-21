`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 21:48:28
// Design Name: 
// Module Name: srusingd
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


module srusingd(
input s,r,clk,reset,
output Q,Qbar
    );
    wire w1,w2;
    and a1(w1,~r,q);
    or a2(w2,s,w1);
    d_flipflop dut(w2,clk,Q,Qbar,reset);
endmodule
