`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 23:25:12
// Design Name: 
// Module Name: ha_tb
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

`timescale 1ns / 1ps

module ha_tb;

  reg x, y;
  wire s, c;

  ha uut (
    .s(s),
    .c(c),
    .x(x),
    .y(y)
  );

  initial begin
    $display("Time\t x y | s c");
    $monitor("%g\t %b %b | %b %b", $time, x, y, s, c);

    x = 0; y = 0; #10;
    x = 0; y = 1; #10;
    x = 1; y = 0; #10;
    x = 1; y = 1; #10;

    $finish;
  end
endmodule

