`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 20:41:07
// Design Name: 
// Module Name: bcd2deci
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


module bcd2deci(a,y);
input [3:0] a;
output [6:0] y; 
reg [6:0] y;
always @(a)
begin 
case(a)
0:y=7'b0000001;
1:y=7'b0000010;
2:y=7'b0000011;
3:y=7'b0000100;
4:y=7'b0000101;
5:y=7'b0000110;
6:y=7'b0000111;
7:y=7'b0001000;
8:y=7'b0001001;
9:y=7'b0001100;
default:y=7'b1111111;
endcase
end
endmodule
