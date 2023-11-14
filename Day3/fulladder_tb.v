`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 18:56:59
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb();
reg a,b,c;
wire sum,carry;
fulladder f1(.sum(sum),.carry(carry),.a(a),.b(b),.c(c));
initial
begin 
a=0;b=0;c=0;
#5
a=0;b=0;c=1;
#5
a=0;b=1;c=0;
#5
a=1;b=0;c=1;
#5
a=1;b=1;c=0;
#5
a=1;b=1;c=1;
#5
a=0;b=1;c=1;
#5
a=1;b=0;c=0;
#20 $finish;
end 
endmodule
