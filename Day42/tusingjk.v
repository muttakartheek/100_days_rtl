`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2023 22:50:18
// Design Name: 
// Module Name: tusingjk
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


module tusingjk(
input t,clk,reset,
output Q,Q_bar
    );
    jk_ff dut(t,t,clk,reset,Q,Q_bar);
endmodule
