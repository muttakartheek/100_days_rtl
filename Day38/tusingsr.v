`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 21:50:53
// Design Name: 
// Module Name: tusingsr
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


module tusingsr(
    input t,
    input clk,reset,
    output Q
    );
    wire w1,w2;
    and a1(w1,~Q,t);
    and a2(w2,Q,t);
    sr_ff s1(w1,w2,reset,clk,Q);
endmodule
