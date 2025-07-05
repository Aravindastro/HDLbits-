Full Adder Design Bundle

This document packages all related files and schematic for the Full Adder design, including:
- `FA.v` (Full Adder)
- `FA_tb.v` (Full Adder Testbench)
- `ha.v` (Half Adder)
- `ha_tb.v` (Half Adder Testbench)
- Schematic diagram

---

## 1. FA.v

```verilog
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

```

---

## 2. FA_tb.v

```verilog
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

```

---

## 3. ha.v

```verilog
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 23:21:57
// Design Name: 
// Module Name: ha
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


module ha(s,c,x,y);
output s,c;
input x,y;
xor X(s,x,y);
and Y(c,x,y);
endmodule

```

---

## 4. ha_tb.v

```verilog
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

```

---

## 5. Schematic Diagram

![Schematic](fa_rtl_schematic.png)

