`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 22:28:20
// Design Name: 
// Module Name: mux_fa_tb
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


module mux_fa_tb(

    );
    reg a,b,cin;
    wire cout,sum;
    mux_fa dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial
    begin
   a=0;b=0;cin=0;
#5
a=0;b=0;cin=1;
#5
a=0;b=1;cin=0;
#5
a=1;b=0;cin=1;
#5
a=1;b=1;cin=0;
#5
a=1;b=1;cin=1;
#5
a=0;b=1;cin=1;
#5
a=1;b=0;cin=0;
#20 $finish;
    end
endmodule
