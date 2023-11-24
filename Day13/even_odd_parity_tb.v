`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 20:03:36
// Design Name: 
// Module Name: even_odd_parity_tb
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


module even_odd_parity_tb(

    );
    reg [7:0] a;
    wire e_out,o_out;
    //wire propagate;
    even_and_odd_parity dut (.a(a),.e_out(e_out),.o_out(o_out));
    initial
    begin
    #10
    a=8'b11111101;
    #10
    a=8'b11111111;
    #10
    a=8'b11111100;
    end
endmodule
