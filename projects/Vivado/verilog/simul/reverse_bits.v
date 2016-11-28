module reverse_bits(clk, original_bits, reversed_bits);
    
    input clk;
    input [7:0] original_bits;
    output [7:0] reversed_bits;
    reg [7:0] reversed_bits;
    always @*
    begin
        reversed_bits[0] <= original_bits[7];
        reversed_bits[1] <= original_bits[6];
        reversed_bits[2] <= original_bits[5];
        reversed_bits[3] <= original_bits[4];
        reversed_bits[4] <= original_bits[3];
        reversed_bits[5] <= original_bits[2];
        reversed_bits[6] <= original_bits[1];
        reversed_bits[7] <= original_bits[0];
    end
endmodule