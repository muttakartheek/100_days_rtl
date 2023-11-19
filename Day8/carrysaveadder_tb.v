`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 17:42:31
// Design Name: 
// Module Name: carrysaveadder_tb
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


module carrysaveadder_tb(

    );
    reg [3:0] a,b,c;
    wire [3:0] s;
    wire cout;
    carryadder a1(a,b,c,s,cout);
    initial
    begin
    a=4'b1101;b=4'b1001;c=4'b0100;
    #10
    a=4'b1111;b=4'b1011;c=4'b0110;
    a=4'b1101;b=4'b1101;c=4'b1100;
    a=4'b0111;b=4'b0111;c=4'b0001;
    end
endmodule
