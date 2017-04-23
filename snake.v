module snake();

input master_clk;
input up;
input down;
input left;
input right;
input reset;
input start;
output VGA_vsync;
output reg [7:0]VGA_R, VGA_G, VGA_B;
wire xloc;
wire yloc;
wire [9:0] rand_x;
wire [9:0] rand_y;
wire VGA_clk;//figure out how to use VGA clk
wire R, G, B;
wire direction; //may not need this;
integer i = 0;
reg body_collision;
reg border_collision;
reg [9:0] snakeX[0:127]; //why are these multidimensional?
reg [9:0] snakeY[0:127];
/*reg sankeHeadX; //what's the point of these?
  reg snakeHeadY;
*/
reg  [9:0] appleX;
reg  [9:0] appleY;
localparam BORDERX1 = 0;
localparam BORDERX2 = 11;
localparam BORDERX3 = 630;
localparam BORDERX4 = 641;
localparam  BORDERY1 = 0;
localparam  BORDERY2 = 11;
localparam  BORDERY3 = 470;
localparam  BORDERY4 = 481;
reg apple_collision, bad_collision, game_over;
integer roundcount = 0;

assign rand_x = $urandom%640; //RNG function;
assign rand_y = $urandom%480;


always@(posedge VGA_clk) //module to determine apple position
  begin
if (~bad_collision) begin //so long as snake hasn't hit a border or itself, execute logic
if (start)
  begin
  appleX <= 40;
  appleY <= 40;
  end
else if (apple_collision)
begin
if((rand_x<BORDERX1) || (rand_x>BORDERX4) || (rand_y<BORDERY1) || (rand_y>BORDERY4))
  begin
  appleX <= 360; //just random numbers to handle edge cases
  appleY <= 420;
  end
else begin
  appleX <= rand_x;
  appleY <= rand_y;
      end
    end
else begin
  appleX <= appleX;
  appleY <= appleY;
  end
  end
end

always@(posedge VGA_clk) //move.  may need debounce and one_shot circuit for each button
if (~bad_collision) begin
  if (up) begin
    for (i = 0; i < roundcount; i = i + 1) begin
      snakeY[i] <= snakeY[i] + 1;
    end
  end
  else if(down) begin
    for (i = 0; i < roundcount; i = i + 1) begin
      snakeY[i] <= snakeY[i] - 1;
    end
  end
  else if(left) begin //what about when it hits borders?
    for (i = 0; i < roundcount; i = i + 1) begin
      snakeX[i] <= snakeX[i] - 1;
      end
    end
  else if(right) begin
    for (i = 0; i < roundcount; i = i + 1) begin
     snakeX[i] <= snakeX[i] + 1;
     end
   end
  else begin
  for (i = 0; i < 127; i = i + 1) begin
   snakeX[i] <= snakeX[i];
   snakeY[i] <= snakeY[i];
  end
  end
end

always@(*) //what to do when reset is pressed???
if (reset) begin
//*****************************
end

always@(posedge VGA_clk) //border collisions
if (~bad_collision) border_collision <= (snakeX[0] > BORDERX1 && snakeX[0] < BORDERX2 || snakeX[0] > BORDERX3 && snakeX[0] < BORDERX4 || snakeY[0] > BORDERY1 && snakeY[0] < BORDERY2 || snakeY[0] > BORDERY3 && snakeY[0] < BORDERY4);

always@(posedge VGA_clk) //body collisions
begin
if (~bad_collision) begin
  for (i = 1; i < roundcount; i = i + 1) begin
  body_collision <= (snakeX[0] > snakeX[i] && snakeX[0] < snakeX[i] + 10);
  end
  end
end

always @ (posedge VGA_clk) //test for any bad collisions
if (~bad_collision) bad_collision <= (body_collision || border_collision);

always @ (posedge VGA_clk) //test for apple_collision
if (~bad_collision) apple_collision <= (snakeX[0] > appleX && snakeX[0] < appleX + 10 && snakeX[0] > appleY && snakeY[0] < appleY + 10);

always @ (*)  //what to do when game_over???
game_over <= bad_collision;

always@ (*)
if (game_over) begin//do what??? **********
end

always@(posedge VGA_clk) //i don't quite understand waht this does. How does the VGA know WHERE to display?
begin
  VGA_R = {8{R}};
  VGA_G = {8{G}};
  VGA_B = {8{B}};
end


endmodule
