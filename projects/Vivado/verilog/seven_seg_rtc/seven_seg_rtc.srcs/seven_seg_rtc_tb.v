module seven_seg_rtc_tb;
reg rst;
reg clk;


//parameter ClockFreq_MHz = 667;
//parameter ClockPeriod = 1 / ClockFreq_MHz;
  initial begin
    clk = 1'b0;
    rst = 1'b1;
    repeat(4) #10 clk = ~clk;
    rst = 1'b0;
    forever #10 clk = ~clk;
	 //forever #10 clk = ~clk; // generate a clock
	// $time;
	// $printtimescale;
	 $finish;
	 end

wire A, B, C, D, E, F, G;
wire Dp;
wire [3:0] state;
wire [26:0] counter;


seven_seg_rtc DUT1 (
  .clk(clk),
  .rst(rst),
  .A(A),
  .B(B),
  .C(C),
  .D(D),
  .E(E),
  .F(F),
  .G(G),
  .Dp(Dp),
  .state(state),
  .counter(counter)
  );
endmodule
