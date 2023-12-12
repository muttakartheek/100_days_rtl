`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2023 20:42:10
// Design Name: 
// Module Name: sr_norlatch_tb
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


module sr_norlatch_tb( );
reg s,r;
wire q,qbar;
sr_norlatch dut(.s(s),.r(r),.q(q),.qbar(qbar));
initial
begin
s=1'b0;r=1'b0;#5;
s=1'b1;r=1'b1;#5;
s=1'b0;r=1'b1;#5;
s=1'b1;r=1'b0;#10;
end
endmodule


