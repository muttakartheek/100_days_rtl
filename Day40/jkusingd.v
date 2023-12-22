`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2023 20:37:58
// Design Name: 
// Module Name: jkusingd
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


module jkusingd(
input j,k,clk,reset,
output q,qbar
);
wire w1,w2,w3;
and a1(w1,q,~k);
and a2(w2,qbar,j);
or a3(w3,w1,w2);
d_flipflop dut(.d(w3),.clk(clk),.reset(reset),.q(q),.qbar(qbar));
endmodule

