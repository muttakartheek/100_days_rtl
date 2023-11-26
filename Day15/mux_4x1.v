`timescale 1ns / 1ps

module mux_4x1(
    input a,b,c,d,
    input [1:0]s,
    output reg y
    );
    always@(*)
    begin
    case(s)
    2'b00:  y=a;
    2'b01:  y=b;
    2'b10: y=c;
    2'b11: y=d;
   
    endcase
    end
endmodule
