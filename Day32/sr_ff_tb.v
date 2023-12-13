`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 11:53:00
// Design Name: 
// Module Name: sr_ff_tb
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
module sr_ff_tb;
reg s;
reg r;
reg clk;
wire Q;
sr_ff uut (.s(s), .r(r),.clk(clk),.Q(Q));
initial clk = 0;
always #10 clk = ~clk;
initial begin
s = 0;r = 0;
clk = 0;
#100;
s=0;r=1;        
#100
s=1;r=0;    
#100
s=1;r=1; 
end   
endmodule
