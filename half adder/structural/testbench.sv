`timescale 1ns / 1ps

module addr_s_tb;
  reg in1, in2;
  wire sum, carry;

  // Instantiate the DUT
  addr_s uut (
    .in1(in1),
    .in2(in2),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    // VCD dump setup
    $dumpfile("dump.vcd");      // VCD output filename
    $dumpvars(0, addr_s_tb);    // Dump all variables in this module

    $display("Time\tin1 in2 | sum carry");
    $monitor("%g\t%b   %b  |  %b    %b", $time, in1, in2, sum, carry);

    // Stimulus
    in1 = 0; in2 = 0; #10;
    in1 = 0; in2 = 1; #10;
    in1 = 1; in2 = 0; #10;
    in1 = 1; in2 = 1; #10;

    $finish;
  end
endmodule
