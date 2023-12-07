`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 22:02:53
// Design Name: 
// Module Name: fa_decoder
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
/////////////////////////////////////////////////////////////////////////////////

module fa_decoder(s,c,x,y,z);
input x,y,z;
wire d0,d1,d2,d3,d4,d5,d6,d7;
output s,c;
DECODER a1(d0,d1,d2, d3,d4, d5, d6, d7, x, y, z);
assign s = d1 | d2 | d4 | d7;
assign  c = d3 | d5 | d6 | d7;
endmodule
module DECODER (d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
input x,y,z;
output d0,d1,d2,d3,d4,d5,d6,d7;
wire x0,y0,z0;
not n1 (x0,x);
not n2 (y0,y);
not n3 (z0,z);
and a0 (d0,x0,y0,z0);
and al (d1, x0, y0, z);
and a2 (d2,x0, y, z0);
and a3 (d3,x0,y,z);
and a4 (d4, x,y0,z0);
and a5 (d5, x, y0, z);
and a6 (d6, x, y, z0);
and a7 (d7, x,y,z);
endmodule
