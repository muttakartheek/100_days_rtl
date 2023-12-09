`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 22:48:42
// Design Name: 
// Module Name: comparator_3bit_tb
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


module comparator_3bit_tb();
reg [2:0]a,b;wire equal,gt,lt;
integer i;
comparator_3bit dut(.a(a),.b(b),.equal(equal),.gt(gt),.lt(lt));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin
a=$random;
b=$random;
#10;
end
$finish();
end
endmodule
