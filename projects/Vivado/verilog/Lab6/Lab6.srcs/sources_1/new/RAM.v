`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2016 08:35:25 PM
// Design Name: 
// Module Name: RAM
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


module RAM # (
parameter M = 2,
parameter N = 3
)(
    input [N:0] Din,
    output [N:0] Dout,
    input [M:0] WEA,
    input [M:0] REA,
    input WEn
    );
    
 integer i;
    
reg [2**M:0] mem_d [N:0], mem_q [N:0];

assign Dout = mem_d[REA];
    
always @(posedge WEn) begin
mem_d[WEA] <= Din;
end

/*
always @(*) begin
//this may not be the most efficient method hardware and timing wise but it should work
for (i = 0; i < 2**M; i = i + 1) begin
mem_q[i] <= mem_d[i];
end
//mem_q[M-1+:M] <= mem_d[M-1+:M];// but they are packed.  How to deal with that? for loop?
end
*/

endmodule
