`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Travis Keller
//
// Create Date: 09/01/2016 11:25:08 AM
// Design Name:
// Module Name: seven_seg_rtc
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Makes a 7-seg decoder count up to 7 and back down one digit per second
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module seven_seg_rtc(
    input rst,
    input clk,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G,
    output Dp
    //output [3:0] state,
    //output [26:0] counter
    );
    //this register determines whether the display is counting up or down
    reg direction_state_d, direction_state_q;
    //8 states, 1 for each of the numbers 0-7
    reg [4:0] state_d, state_q;
    //figure out how large this counter needs to be
    reg [26:0] counter_d, counter_q;
    reg [6:0] segments_d, segments_q;
    
    localparam UP = 1'b0, DOWN = 1'b1; //counting up or down
    localparam ZERO = 5'd0, ONE = 5'd1, //current number output
               TWO = 5'd2, THREE = 5'd3,
               FOUR = 5'd4, FIVE = 5'd5,
               SIX = 5'd6, SEVEN = 5'd7,
               EIGHT = 5'd8, NINE = 5'd9,
               TEN = 5'd10, ELEVEN = 5'd11,
               TWELVE = 5'd12, THIRTEEN = 5'd13,
               FOURTEEN = 5'd14, FIFTEEN = 5'd15,
               SIXTEEN = 5'd16;

    always @(*) begin
    
      if (counter_q == 27'd100000000) begin //assuming a 100 MHz clock rate, the counter should reach this value once a second
        if (state_q < SIXTEEN && direction_state_q == UP) begin
         direction_state_d = direction_state_q;
         state_d = state_q + 5'd1;
         counter_d = 27'd0;
         end
        else if (state_q == ZERO && direction_state_q == DOWN) begin
        direction_state_d = UP;
        state_d = state_q + 5'd1;
        counter_d = 27'd0;
        end
        else begin //if the display is on 'F', change the state and start counting backwards
            if (direction_state_q == UP) direction_state_d = DOWN;
            
            else direction_state_d = direction_state_q;
        state_d = state_q - 5'd1;
        counter_d = 27'd0;
        end
        
      end
      
      else begin 
      //if (direction_state_q == 1'b1 && state_q == 5'd0) direction_state_d = 1'b0; //if the display reaches zero after counting backward, change direction state and count up again
      direction_state_d = direction_state_q;
      counter_d = counter_q + 27'd1;
      state_d = state_q;
      //direction_state_d = direction_state_q;
      end

      //states
      //make this into a switch statement
      case (state_q)
      ZERO: begin //'0'
        segments_d = 7'b1111110;
      end

      ONE: begin //'1'
        segments_d = 7'b0110000;
      end

      TWO: begin //'2'
        segments_d = 7'b1101101;
      end

      THREE: begin //'3'
        segments_d = 7'b1111001;
      end

      FOUR: begin //'4'
         segments_d = 7'b0110011;
      end

      FIVE: begin //'5'
        segments_d = 7'b1011011;
      end
      
      SIX: begin //'6'
          segments_d =7'b1011111;
      end
      
      SEVEN: begin //'7'
        segments_d = 7'b1110000;
      end
      
      EIGHT: begin //'8'
        segments_d = 7'b1111111;
       end
       
      NINE: begin //'9'
        segments_d = 7'b1110011;
       end
       
      TEN: begin //'A'
        segments_d = 7'b1110111;
       end
       
      ELEVEN: begin //'b'
       segments_d = 7'b0011111;
       end
       
      TWELVE: begin //'C'
       segments_d = 7'b1001110;
       end
       
      THIRTEEN: begin //'d'
       segments_d = 7'b0111101;
       end
       
      FOURTEEN: begin //'E'
       segments_d = 7'b1001111;
       end
       
      FIFTEEN: begin //'F'
       segments_d = 7'b1000111;
       end

      default: segments_d = segments_q;
    endcase
    end

    always @(posedge clk) begin
    if (rst) begin
    counter_q <= 26'd0;
    state_q <= ZERO;
    direction_state_q <= UP;
    segments_q <= 7'd0;
    end

    else begin
    counter_q <= counter_d;
    state_q <= state_d;
    direction_state_q <= direction_state_d;
    segments_q <= segments_d;
    end

    end


  assign A= segments_q[6];
  assign B= segments_q[5];
  assign C= segments_q[4];
  assign D= segments_q[3];
  assign E= segments_q[2];
  assign F= segments_q[1];
  assign G= segments_q[0];
  assign Dp= 1'b1;
  //assign counter = counter_d;
  //assign state = state_d;
    /*
    assign A= (Din1 | (~Din2 & ~Din0) | (Din2 & Din0));
    assign B= (~Din2 | (Din1 & Din0) | (~Din1 & ~Din0));
    assign C= (~Din1 | Din0 | Din2);
    assign D= ((~Din2 & Din1) | (~Din2 & ~Din0) | (Din1 & ~Din0) | (Din2 & ~Din1 & Din0));
    assign E= ((~Din2 & ~Din0) | (Din1 & ~Din0));
    assign F= ((~Din1 & ~Din0) | (Din2 & ~Din1) | (Din2 & ~Din0));
    assign G= ((~Din2 & Din1) | (Din2 & ~Din0) | (Din2 & ~Din1));
    assign Dp= 1'b1;*/
endmodule