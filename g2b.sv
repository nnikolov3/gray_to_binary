module GB_Param #(parameter n = 8) (input logic [n-1:0] gray, output logic [n-1:0] bi); //parameterized converter
 
 integer i;
   always_comb begin
     bi[n-1] = gray[n-1]; //Make initial first bit match
	for(i = n-2; i >= 0; i = i-1)begin //check every bit after
      bi[i] = gray[i]^bi[i+1]; //output the XOR equation from above
	end
  end
endmodule