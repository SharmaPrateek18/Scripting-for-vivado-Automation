module PGGen(output g, p, input a, b);
 
  and #(1) (g, a, b);
  xor #(2) (p, a, b);
 
endmodule
