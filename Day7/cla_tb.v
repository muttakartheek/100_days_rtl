`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 16:08:42
// Design Name: 
// Module Name: cla_tb
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


module cla_tb();
reg [3:0]a,b,c;
wire s;
wire cout;
cla r1(a,b,c,sum,cout);
initial
begin
a=4'b0000;b=4'b0001;c=0;
#20
a=4'b0010;b=4'b0010;
#20
a=4'b0101;b=4'b1100;
#20
a=4'b1111;b=4'b1111;
end
endmodule

