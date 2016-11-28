`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Travis Keller
// 
// Create Date: 11/03/2016 11:37:49 AM
// Design Name: 
// Module Name: One-shot
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


module One_shot(
    input PB,
    input CLK,
    output ENos
    );

reg X, Y, Z;
assign ENos = (Y)&(~Z);

always @(posedge CLK) begin
    X <= PB;    
    Y <= X;
    Z <= Y;
end
    

endmodule
