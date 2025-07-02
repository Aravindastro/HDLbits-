`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 00:06:54
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;
  reg x, y, z;
  wire s, c;

  // Instantiate Full Adder
  FA uut (
    .s(s),
    .c(c),
    .x(x), 
    .y(y),
    .z(z)
  );

  initial begin
    $display ("Time\t x y z | s c");
    $monitor("%g\t %b %b %b | %b %b", $time, x, y, z, s, c);

    x = 0; y = 0; z = 0; #10;
    x = 0; y = 0; z = 1; #10;
    x = 0; y = 1; z = 1; #10;
    x = 1; y = 1; z = 1; #10;

    $finish;
  end
endmodule

