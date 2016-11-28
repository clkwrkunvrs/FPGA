`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2016 11:25:08 AM
// Design Name: 
// Module Name: octal_decoder
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


module octal_decoder_top(
    input Din2,
    input Din1,
    input Din0,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G,
    output Dp
    );
    
    assign A= ~(Din1 | (~Din2 & ~Din0) | (Din2 & Din0));
    assign B= ~(~Din2 | (Din1 & Din0) | (~Din1 & ~Din0));
    assign C= ~(Din1 | Din0 | Din2);
    assign D= ~((~Din2 & Din1) | (~Din2 & ~Din0) | (Din1 & ~Din0) | (Din2 & ~Din1 & Din0));
    assign E= ~((~Din2 & ~Din0) | (Din1 & ~Din0));
    assign F= ~((~Din1 & ~Din0) | (Din2 & ~Din1) | (Din2 & ~Din0));
    assign G= ~((~Din2 & Din1) | (Din1 & ~Din0) | (Din2 | ~Din1));
    assign Dp= 1'b1;
endmodule
