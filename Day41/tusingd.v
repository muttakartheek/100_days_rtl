`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 22:21:59
// Design Name: 
// Module Name: tusingd
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


module tusingd(
input t,clk,reset,
output q,qbar
    );
    wire w1,w2,w3;
    and a1(w1,q,~t);
    and a2(w2,t,qbar);
    or a3(w3,w1,w2);
d_flipflop uut(w3,clk,q,qbar,reset);
endmodule
