module bit_input(clk, bit_out);
    input clk;
    output [7:0] bit_out;
    reg [7:0] bit_out; 
    always @(posedge clk)
    begin
        bit_out[7] <= 1;
        bit_out[6] <= 1;
        bit_out[5] <= 1;
        bit_out[4] <= 1;
        bit_out[3] <= 0;
        bit_out[2] <= 0;
        bit_out[1] <= 0;
        bit_out[0] <= 0;
    end
endmodule