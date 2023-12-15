`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 21:50:39
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb;

reg clk;
reg reset;
reg t;

wire q;
wire qb;

t_ff dut( .clk(clk), .reset(reset), .t(t), .q(q) );

initial begin
$monitor(clk,t,q,reset);

t = 1'b1;
reset = 1;
clk=1;

#10

reset=0;
t=1'b0;

#100
reset=0;
t=1'b1;

#100
reset=0;
t=1'b1;

#100
reset=0;
t=1'b0;

#100
reset=1;
t=1'b1;

end
always #25 clk = ~clk;

endmodule