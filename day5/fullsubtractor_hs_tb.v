`timescale 1ns / 1ps
module fullsubtractor_hs_tb( );
reg a,b,c;
wire diff,barrow;
fullsubtractor_hs a1(.a(a),.b(b),.c(c),.diff(diff),.barrow(barrow));
initial
begin
a=0;b=0;c=0;
#5
a=0;b=0;c=1;
#5
a=0;b=1;c=0;
#5
a=1;b=0;c=1;
#5
a=1;b=1;c=0;
#5
a=1;b=1;c=1;
#5
a=0;b=1;c=1;
#5
a=1;b=0;c=0;
#20 $finish;
end 
endmodule
