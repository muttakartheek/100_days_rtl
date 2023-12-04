`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 20:18:14
// Design Name: 
// Module Name: bin2gray_tb
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


module bin2gray_tb();
    reg [3:0] bin;
    wire [3:0] gray;
    bin2gray uut(bin,gray);
    always
    begin
    bin<=0;#10;
    bin<=1;#10;
    bin<=2;#10;
    bin<=3;#10;
    bin<=4;#10;
    bin<=5;#10;
    bin<=6;#10;
    bin<=7;#10;
    bin<=8;#10;
    bin<=9;#10;
    bin<=10;#10;
    bin<=11;#10;
    bin<=12;#10;
    bin<=13;#10;
    bin<=14;#10;
    bin<=15;#100;
    end
endmodule
