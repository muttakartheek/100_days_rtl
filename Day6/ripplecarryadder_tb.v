`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 17:04:20
// Design Name: 
// Module Name: ripplecarryadder_tb
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


module ripplecarryadder_tb( );
reg [3:0]a,b;
wire [3:0] s;
wire cout;
ripplecarryadder r1(a,b,s,cout);
initial
begin
a=4'b1010;b=4'b1010;
#20
a=4'b1110;b=4'b1101;
#20
a=4'b0111;b=4'b0011;
#20
a=4'b1100;b=4'b1010;
end
endmodule
