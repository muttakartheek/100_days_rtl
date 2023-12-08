`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:49:39
// Design Name: 
// Module Name: secondbit_compa_tb
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


module secondbit_compa_tb(

    );
    reg [1:0]a,b; 
wire equal,lt,gt;
secondbit_compa dut(.a(a),.b(b),.equal(equal),.gt(gt),.lt(lt));
initial 
begin 
a=2'b00;b=2'b00;#10;
a=2'b00;b=2'b01;#10;
a=2'b00;b=2'b10;#10;
a=2'b00;b=2'b11;#10;
a=2'b01;b=2'b00;#10;
a=2'b01;b=2'b01;#10;
a=2'b01;b=2'b10;#10;
a=2'b01;b=2'b11;#10;
a=2'b10;b=2'b00;#10;
a=2'b10;b=2'b01;#10;
a=2'b10;b=2'b10;#10;
a=2'b10;b=2'b11;#10;
a=2'b11;b=2'b00;#10;
a=2'b11;b=2'b01;#10;
a=2'b11;b=2'b10;#10;
a=2'b11;b=2'b11;#10;

$finish();
end
endmodule
