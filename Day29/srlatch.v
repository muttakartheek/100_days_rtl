`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2023 22:14:22
// Design Name: 
// Module Name: srlatch
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


module srlatc(s,r,q,qbar);
input s,r;
output q,qbar;
nand n1(q,s,qbar);
nand n2(qbar,r,q);
endmodule
