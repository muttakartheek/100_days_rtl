`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 22:18:20
// Design Name: 
// Module Name: carry_select_adder_tb
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


module carry_select_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum; 
wire cout;
carry_select_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial 
begin
a=4'b0010;b=4'b0010;cin=0;#10;
a=4'b0010;b=4'b0010;cin=1;#10;
a=4'b1100;b=4'b1010;cin=0;#10;
a=4'b1100;b=4'b1010;cin=1;#10;
$finish();
end
endmodule
