`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Travis Keller
// 
// Create Date: 11/20/2016 01:02:13 AM
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
parameter N = 3
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



 assign Dout = out_q;

    
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
       for (i = N - 1; i > 0; i = i - 1) begin
           out_d[i] <= out_d [i-1];
        end
        out_d[0] <= 1'b0;
        end
    
    2'b10: begin
       out_d <= out_q + 1; //count
      end    
    
    2'b11: begin    
        out_d <= Din; //load
        end 
        
    default: begin //default condition
        out_q <= out_d;
        end
        
     endcase                
  end
//else begin
out_q <= out_d;
//end
end

    
endmodule
