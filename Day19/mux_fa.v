`timescale 1ns / 1ps


module mux_fa(sum,cout,a,b,cin); 
output cout,sum; 
input a,b,cin; 
wire w1;
mux m1(.z(sum),.d0(cin),.d1(w1),.d2(w1),.d3(cin),.s0(a),.s1(b)); 
mux m2(.z(cout),.d0(0),.d1(cin),.d2(cin),.d3(1),.s0(a) ,.s1(b)); 
assign w1=~cin; 
endmodule 
module mux(z,d0,d1,d2,d3,s0,s1); 
input d0,d1,d2,d3,s0,s1; 
output z; 
reg z; 
always @(d0 or d1 or d2 or d3 or s0 or s1) 
 begin 
case({s0,s1}) 
2'b00: z<=d0; 
2'b01: z<=d1; 
2'b10: z<=d2; 
2'b11: z<=d3; 
endcase 
end 
endmodule