`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 23:48:32
// Design Name: 
// Module Name: FA
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


module FA(s,c,x,y,z);
output s,c;
input x,y,z;
wire s0,c0,c1;

//instantiate ha
ha ha1(
.s(s0),
.c(c0),
.x(x),
.y(y)
);

ha ha2(
.s(s),
.c(c1),
.x(s0),
.y(z)
);
or O(c,c0,c1);
endmodule
