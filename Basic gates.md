//source code
module and(a,b,q);
input a,b;
output q;
assign q=a&b;
endmodule

//testbench code 

module tb_and;
  reg a, b;
  wire q;
  // Instantiate the AND gate
  and uut (
    .a(a),
    .b(b),
    .q(q)
  );
  // Stimulus block
  initial begin
    // Monitor signal changes
    $monitor("Time = %0t | a = %b, b = %b, q = %b", $time, a, b, q);
    // Apply test vectors
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end
endmodule
