`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 22:10:06
// Design Name: 
// Module Name: fa_decoder_tb
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


module fa_decoder_tb();
reg x,y,z;
wire s,c;
fa_decoder dut(s, c, x, y, z);
initial
begin x=1'b0;y=1'b0;z=1'b0;
#4
x=1'b1;y=1'b0;z=1'b0;
#4
x=1'b0;y=1'b1;z=1'b0;
#4
x=1'b1;y=1'b1;z=1'b0;
#4
x=1'b0;y=1'b0;z=1'b1;#4
x=1'b1;y=1'b0;z=1'b1;#4
x=1'b0;y=1'b1;z=1'b1;#4
x=1'b1;y=1'b1;z=1'b1;



end
endmodule
