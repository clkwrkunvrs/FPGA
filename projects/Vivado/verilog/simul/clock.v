module clock(clk);
    
    output clk;
    reg clk = 0;
    always #1 clk = !clk;
endmodule