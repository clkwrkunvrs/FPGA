`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2016 04:25:06 PM
// Design Name: 
// Module Name: One_shot_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module One_shot_tb #();
reg PB;
reg clk;
wire ENos;

One_shot DUT (
  .CLK(clk),
  .PB(PB),
  .ENos(ENos)
  );
  

  initial begin
    clk = 1'b0;
    PB = 1'b0;
    repeat(4) #5 clk = ~clk;
    PB = 1'b1;
    forever #10 clk = ~clk;
     
	$finish;
	 end
	 
initial begin   
  @(posedge PB);
  #100;
  $finish;
  end

endmodule
