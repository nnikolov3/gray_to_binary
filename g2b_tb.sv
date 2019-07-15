`timescale 1ns/1ps
module tb;
 
  parameter N = 4;
 
  reg   [N-1:0]   gray;
  wire  [N-1:0]   bi;
 
  initial begin
    gray = 0;
    repeat (2**N) begin
      #10;
      gray = gray + 1;
    end
  end
 
  GB_Param  #(
    .n   (N)
  ) UUT (
    .gray   (gray),
    .bi   (bi)
  );
  
  initial begin
    $monitor ("gray = %b, bi = %b ", gray, bi);
  end
 
endmodule