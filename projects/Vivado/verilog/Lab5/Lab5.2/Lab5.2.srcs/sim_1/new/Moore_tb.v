 module Moore_tb;
 
 initial begin
    clk = 1'b0;
    rst = 1'b1;
    repeat(4) #10 clk = ~clk;
    rst = 1'b0;
	 //tx_busy = 1'd0;
    //new_rx_data = 0;
	 forever #10 clk = ~clk; // generate a clock
	 $finish;
	 reg [1:0] state_q, state_d;
     reg [3:0] out_q, out_d;
     reg [1:0] Cout_q, Cout_d;
  initial begin
    
    end
    endmodule
	 
	 