module top_tb;
    initial
    begin
        $dumpfile("test.vcd");
        $dumpvars(0,top_tb);
        # 50 $finish;
    end
    wire clk;
    wire [7:0] original_bits;
    wire [7:0] reversed_bits;
    clock clk1(.clk(clk));
    bit_input bit_in(.clk(clk), .bit_out(original_bits));
    reverse_bits rev_bit(.clk(clk), .original_bits(original_bits),
                    .reversed_bits(reversed_bits));
endmodule