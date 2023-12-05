`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 20:48:13
// Design Name: 
// Module Name: bcd2dec_tb
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


module bcd2dec_tb();
reg [3:0]a;
wire [6:0] y;
integer i;
bcd2deci dut(a,y);
initial
begin
for(i=0;i<16;i=i+1)
begin
a=i;#10;
end
end
endmodule
