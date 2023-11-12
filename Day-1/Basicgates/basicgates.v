`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 21:08:26
// Design Name: 
// Module Name: basicgates
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


module basicgates(
    input  A,B,
    output    Y0_and,Y1_or,Y2_not,Y3_nand,Y4_nor,Y5_xor,Y6_xnor
    );
    and_gate a6  (.y0(Y0_and),.a(A),.b(B));
    or_gate a7  (.y1(Y1_or),.a(A),.b(B));
    not_gate a1 (.y2(Y2_not),.a(A));
    nand_gate a2(.y3(Y3_nand),.a(A),.b(B));
    nor_gate a3 (.y4(Y4_nor),.a(A),.b(B));
    xor_gate a4 (.y5(Y5_xor),.a(A),.b(B));
    xnor_gate a5(.y6(Y6_xnor),.a(A),.b(B));
endmodule
module and_gate (output y0,input a,b);
and a6(y0,a,b);
endmodule;
module or_gate (output y1,input a,b);
or  a7 (y1,a,b);
endmodule;
module not_gate (output y2,input a);
not a1(y2,a);
endmodule
module nand_gate (output y3,input a,b);
nand a2 (y3,a,b);
endmodule
module nor_gate (output y4,input a,b);
nor a3 (y4,a,b);
endmodule
module xor_gate (output y5,input a,b);
xor a4 (y5,a,b);
endmodule
module xnor_gate (output y6,input a,b);
xnor a5 (y6,a,b);
endmodule
