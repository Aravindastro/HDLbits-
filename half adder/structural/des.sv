module addr_s(in1,in2,sum,carry);
  input in1,in2;
  output sum,carry;
  and g0(carry,in1,in2);
  xor g1(sum,in1,in2);
endmodule
  
