`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 12:16:01
// Design Name: 
// Module Name: mod_counter
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


module mod_counter(rst,clk,count);
input clk,rst; output [2:0]count;
wire w1=count[0];
wire w2=count[0] & count[1]; 
wire w3=count[0] & count[2];
T_FF Tc(1,clk,rst,count[0]); 
T_FF Tb(w1,clk,rst,count[1]);
T_FF Ta(w2,clk,w3,count[2]);
endmodule
module T_FF(t,clk,rst,qn,qn_bar);
input t,clk,rst; output reg qn;output qn_bar; 
always@(posedge clk) 
begin 
if(!rst) 
qn=0;
else 
begin
case(t) 
0:qn=qn;
1:qn=~qn;
endcase 
end
end
assign qn_bar=~qn;
endmodule
