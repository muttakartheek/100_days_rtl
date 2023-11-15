`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 20:15:02
// Design Name: 
// Module Name: fulladder_ha_tb
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


module fulladder_ha_tb();
reg a,b,c;
wire sum,carry;
fulladder_halfadder a1(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
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
