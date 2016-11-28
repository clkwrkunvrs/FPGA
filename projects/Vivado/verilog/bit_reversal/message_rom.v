//version 2016-07-15
module message_rom (
    input clk,
    //keyboard input from message_printer module
    input [23:0] bits_in,
    input [2:0] addr,
    output [7:0] data
  );
 // wire [7:0] rom_data_q [9:0];
 //registers to store input
  reg [7:0] rom_data_d [0:2];
  reg [7:0] rom_data_q [0:2];
 //assign value of registers to wire
  wire [7:0] rom_wire [0:4];
  //internal counter for storing bytes
  reg [1:0] ctr_d, ctr_q;
  //this is the register used to store the current element to be output via "data" to message_printer
  reg [7:0] data_d, data_q;

  //THIS BLOCK KEEPS ADDING ALL SIGNALS TO SENSITIVITY LIST BUT I DON'T WANT THEM ALL IN SENSITIVITY LIST
  //when you get a keyboard value, increment a counter and assign those 8 bits (from bits_in) to a register
    always @(bits_in or ctr_q or ctr_d or ctr_d) begin
    
    if (ctr_d == ctr_q) begin
    //Default values just to prevent latches
    rom_data_d[2] = rom_data_q[2];
    rom_data_d[1] = rom_data_q[1];
    rom_data_d[0] = rom_data_q[0];
    //this is where you store keyboard input
    rom_data_d[ctr_q] = bits_in[8 * ctr_q + 7-:8];
    ctr_d = ctr_q + 2'd1; 
    end
    
    
    else if(ctr_d == 2'd3) begin
    ctr_d = 2'd0;
    rom_data_d[2] = rom_data_q[2];
    rom_data_d[1] = rom_data_q[1];
    rom_data_d[0] = rom_data_q[0];
    end
    
    else begin
    ctr_d = ctr_q;
    rom_data_d[2] = rom_data_q[2];
    rom_data_d[1] = rom_data_q[1];
    rom_data_d[0] = rom_data_q[0];
    //if the counter is full, reset it.  Otherwise, increment after each byte has been stored (3 keyboard bytes/inputs in the current design)
    //ctr_d = (ctr_d == 2'd3) ? 0 : ctr_q + 2'd1;
   end
 end
 
 
 
 //THIS IS WHERE THE BYTES GET REVERSED
 //continuously assign a value to the rom_wire.  When the full 3 bytes have been stored, message_printer shoudl signal this module to output them in reverse order
 assign rom_wire[0] = rom_data_d[2];
 assign rom_wire[1] = rom_data_d[1];
 assign rom_wire[2] = rom_data_d[0];
 assign rom_wire[3] = "\n";
 assign rom_wire[4] = "\r";

 //this is the element selector variable that the module needs to know which rom_wire element to output.
 assign data = data_q;
  
  always @(*) begin
    if (addr > 3'd4)
      data_d = " ";
    else
      data_d = rom_wire[addr];
  end
 
  always @(posedge clk) begin
    //can't assign a packed type to unpacked type so individual registers/elements must be selected for rom_data
    rom_data_q[2] <= rom_data_d[2];
    rom_data_q[1] <= rom_data_d[1];
    rom_data_q[0] <= rom_data_d[0];
    data_q <= data_d;
    ctr_q <= ctr_d;
 
  end
 
endmodule