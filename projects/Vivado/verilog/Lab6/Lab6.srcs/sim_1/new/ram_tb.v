`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Auburn University
// Engineer: TravisKeller
// 
// Create Date: 11/21/2016 08:36:13 PM
// Design Name: 
// Module Name: ram_tb
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


module ram_tb #(
parameter N = 3,
parameter M = 2
)();

reg [N:0] Din;
reg [M:0] WEA;
reg [M:0] REA;
reg WEn;
wire [N:0] Dout;

integer i;
RAM DUT (
.WEn(WEn),
.WEA(WEA),
.REA(REA),
.Din(Din),
.Dout(Dout)
);

initial begin
    WEn = 1'b0;
    #5;
    //1. Write address
    for (i = 0; i < 2**M; i = i + 1) begin: loop_1
    WEA = i;
    WEn = 1'b1;
    Din = WEA;
    #5;
    WEn = 1'b0;
    #5;
    end
    #20;
    
   //2. Read address. Write inverted address
    for (i = 0; i < 2**M; i = i + 1) begin: loop_2
    REA = i;
    WEA = i;
    WEn = 1'b1;
    Din = ~WEA;
    #5;
    WEn = 1'b0;
    #5;
    end
    #20;
   //3. Read inverted address. Write address as data
   
   for (i = 0; i < 2**M; i = i + 1) begin: loop_3
    REA = i;
    WEA = i;
    WEn = 1'b1;
    Din = WEA;
    #5;
    WEn = 1'b0;
    #5;
    end
    #20;
    
   //4. Read address
   for (i = 0; i < 2**M; i = i + 1) begin: loop_4
     REA = i;
     #5;
     end
    
    #40;
    
     $finish;
 end

    
endmodule
