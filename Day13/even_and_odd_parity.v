module even_and_odd_parity(a,e_out,o_out);

        input [7:0] a;
        output reg  e_out,o_out;
        reg propagate;

        always@(a)
        begin
            propagate <= ^a;

            if(propagate)
            begin
                e_out <= 1'b1;
                o_out  <= 1'b0;
            end
            else
            begin
                e_out <= 1'b0;
                o_out   <= 1'b1;
            end
        end

        endmodule