module counter_tb;

  initial begin
    clk = 1'b0;
    rst = 1'b1;
    repeat(4) #10 clk = ~clk;
    rst = 1'b0;
	 //tx_busy = 1'd0;
    //new_rx_data = 0;
	 forever #10 clk = ~clk; // generate a clock
	 $finish;
	 
	  wire [N:0] Din, CE, [1:0] M,
             rst, clk, [N:0];
             
      initial begin
      
      end
  end
