`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 16:39:03
// Design Name: 
// Module Name: ripplecarryadder
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


module ripplecarryadder(
    input [3:0]a,b,
    output [3:0]s,
    output cout
    );
    wire cout0,cout1,cout2;
   fulladder f1(a[0],b[0],0,s[0],cout0);
   fulladder f2(a[1],b[1],cout0,s[1],cout1);
   fulladder f3(a[2],b[2],cout1,s[2],cout2);
   fulladder f4(a[3],b[3],cout2,s[3],cout); 
endmodule
module fulladder(input a,b,cin,
output  sum,carry);
assign sum=(a^b)^cin;
assign carry=(a&b)||(b&cin)||(cin&a);
endmodule
