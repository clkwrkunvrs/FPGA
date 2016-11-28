`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Travis Keller
// 
// Create Date: 11/07/2016 01:02:13 AM
// Design Name: 
// Module Name: Counter
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



module Counter #(
parameter N = 0
)( //put this in the top level
    input [N:0] Din,
    input CE,
    input [1:0] M,
    input rst,
    input clk,
    output [N:0] Dout
    );
integer i;    
reg [N:0] out_q, out_d;

assign Dout = out_d;
    
always @(posedge clk) begin
if (rst) begin
    out_d <= {N{1'b0}};
end

else if (CE) begin
    case (M) 
    
    2'b00: begin //hold
        out_d <= out_q;
        end
        
    2'b01: begin //shift //make a loop here
       
       //for loop to shift
       for (i = 0; i < N - 2; i = i + 1) begin
        out_d[i] <= out_q[i + 1];
        out_d[N-1] <= 1'd0;
        end
        
        
        end
    
    2'b10: begin
        out_d <= out_q + 1'd1; //count
        end    
    
    2'b11: begin    
        out_d <= Din; //load
        end 
        
    default: begin //default condition
        out_q <= out_d;
        end
        
     endcase                
  end
else begin
out_q <= out_d;
end
end

    
endmodule
