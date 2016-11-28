 module Moore_tb # ();
 
 reg clk;
 reg rst;
 reg EN;
 wire [3:0] OUT;
 wire [1:0] Cout;
 
 Moore DUT (
 .CLK(clk),
 .RST(rst),
 .EN(EN),
 .OUT(OUT),
 .Cout(Cout)
 );
 
 
 
 initial begin
    clk = 1'b0;
    rst = 1'b1;
    EN = 1'b0;
    repeat(4) #5 clk = ~clk;
    rst = 1'b0;
	forever #5 clk = ~clk; // generate a clock
	 $finish;
	 end
	 
  initial begin
    @(negedge rst);
    EN = 1'b1;
    #120;
    $finish;    
    end
    endmodule
	 
	 