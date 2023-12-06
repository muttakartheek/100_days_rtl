`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 22:19:22
// Design Name: 
// Module Name: bcd_ex3_tb
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


module bcd_ex3_tb();
reg a,b,c,d;
wire w,x,y,z;
bcd_ex3 uut(a,b,c,d,w,x,y,z);
 initial 
 begin
 a = 0;
 b = 0;
 c = 0;
 d = 0;                  
#100;
 #100; a = 0; b = 0; c = 1; d = 1;
 #100; a = 0; b = 1; c = 0; d = 1;                      
 end
endmodule
