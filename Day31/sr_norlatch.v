`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2023 20:40:46
// Design Name: 
// Module Name: sr_norlatch
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


module sr_norlatch(s,r,q,qbar);
input s,r;
output q,qbar;
nor n1(q,s,qbar);
nor n2(qbar,r,q);
endmodule
