`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2016 11:37:49 AM
// Design Name: 
// Module Name: top
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



module top #(
parameter M = 2,
parameter N = 4
) (
    input PBen, CLK, PBrst,
    output [3:0] OUT,
           [1:0] Cout,  
    //ports for counter
    input Din, CE,
    input [1:0] Mu,
    output Dout
    );
    
    wire EN;
    wire PBdb;
    
Counter Counter (
    .clk(CLK),
    .rst(RST),
    .CE(CE),
    .Din(Din),
    .Dout(Dout),
    .M(Mu)
    
    );
        
    
Moore Moore (
    .CLK(CLK),
    .RST(PBrst),
    .OUT(OUT),
    .Cout(Cout),
    .EN(ENos)
    );
    
One_shot One_shot (
    .CLK(CLK),
    .PB(PBdb),
    .ENos(ENos)
    );
    
Debounce Debounce (
    .PB(PBen),
    .CLK(CLK),
    .PBdb(PBdb)
    );
endmodule
