module NAND_DLatch_tb();
	reg PR, CR, CLK,D;
	wire Q,QN;
	NAND_DLatch uut (.PR(PR), .CR(CR), .CLK(CLK),.D(D), .Q(Q), .QN(QN));
	
	initial begin 
	 D = 0; PR = 1; CR = 1;
	#20;
	 D = 1; PR = 0; CR = 0;
	#20;
	 D = 1; PR = 1; CR = 1;
	#20;
	 D = 1; PR = 0; CR = 0;
	#20;
	 D = 0; PR = 0; CR = 0;
	#20;
	$finish;
	end 
always begin 
	#10;
		CLK = ~CLK;
   end 
endmodule 