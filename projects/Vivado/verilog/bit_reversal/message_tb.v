module message_tb;

  initial begin
    clk = 1'b0;
    rst = 1'b1;
    repeat(4) #10 clk = ~clk;
    rst = 1'b0;
	 tx_busy = 1'd0;
    new_rx_data = 0;
	 forever #10 clk = ~clk; // generate a clock

	 $finish;
  end

   initial begin
	 //1
	 new_rx_data = 1;
	 rx_data = "1";

	 //2
    #100
	 new_rx_data = 1;
    rx_data = "0";
	 //wait to set the new input flag back to zero after input has been processed.
	 #1
	 new_rx_data = 0;

	 //3
	 #100
	 new_rx_data = 1;
    rx_data = "1";
	 #1
	 new_rx_data = 0;

	 //4
    #100
    new_rx_data = 1;
    rx_data = "0";
	 #1
	 new_rx_data = 0;

	 //5
	 #100
	 new_rx_data = 1;
    rx_data = "1";
	 #1
	 new_rx_data = 0;

	 //6
	 #100
	 new_rx_data = 1;
	 rx_data ="0";
	 #1
	 new_rx_data = 0;

	 //7
	 #100
	 new_rx_data = 1;
	 rx_data = "1";
	 #1
	 new_rx_data = 0;

	 //8
	 #100
	 new_rx_data = 1;
	 rx_data = "1";
	 #1
	 new_rx_data = 0;

	 #6000
    $finish;
    end





  reg clk, rst;
  wire [7:0] tx_data;
  wire new_tx_data;
  reg tx_busy, new_rx_data;
  reg [7:0] rx_data;
  //reg [0:7] data;
  wire [3:0] addr;
  wire[3:0] counter;
  wire bytes;
  wire [7:0] data;
  wire state;





 message_printer message_printer1 (
    .clk(clk),
    .rst(rst),
    .tx_data(tx_data),
    .new_tx_data(new_tx_data),
    .tx_busy(tx_busy),
    .new_rx_data(new_rx_data),
    .rx_data(rx_data),
	 //.byte_out_q(bytes)
	 .state(state),
	 .addr(addr),
	 .bytes(bytes),
	 .counter(counter)


  );


message_ram DUT1 (
	//.clk(clk),
   .data(data)
  //.byte_in(bytes),
  //.addr(addr),
  //.counter(counter)
    );






endmodule