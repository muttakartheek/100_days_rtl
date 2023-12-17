`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 14:04:16
// Design Name: 
// Module Name: srusingjk
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


module srusingjk(
    input s,r,clk,reset,
    output Q,Q_bar
    );
    jk_ff a1(s,r,clk,reset,Q,Q_bar);
endmodule
