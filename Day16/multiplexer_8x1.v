module multiplexer_8x1(
input [3:0] a,
input [3:0] b,
input [3:0] c,
input [3:0] d,
input [3:0] e,
input [3:0] f,
input [3:0] g,
input [3:0] h,
input [2:0] sel,
output [3:0] out
);
wire [3:0] w1,w2,w3,w4,w5;
mux_4x1 m1[3:0](a,b,c,d,sel[1:0],w1);
mux_4x1 m2[3:0](e,f,g,h,sel[1:0],w2);
not n1[3:0](w3,sel[2]);
and a1[3:0](w4,w1,w3);
and a2[3:0](w5,w2,sel[2]);
or o1[3:0](out,w4,w5);
endmodule

module mux_4x1(in1,in2,in3,in4,select,op);
input [3:0] in1;
input [3:0] in2;
input [3:0] in3;
input [3:0] in4;
input [1:0] select;
output reg [3:0] op;
always@(in1 or in2 or in3 or in4 or select) begin
case (select)
2'b00 : op <= in1;
2'b01 : op <= in2;
2'b10 : op <= in3;
2'b11 : op <= in4;
endcase
end
endmodule