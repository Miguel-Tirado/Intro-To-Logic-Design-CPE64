module lab4part4(PR, CR, CLK, D, Q,QN);
	input PR, CR, CLK, D;
	output Q, QN;
	reg S, R, Q, QN;
	wire n1out, n2out, n3out, n4out,n5out, n6out;
	
	nand n1(n1out, D, CR, n2out);
	nand n2(n2out, CLK, n1out, S);
	nand n3(n3out, CLK, CR, n4out);
	nand n4(n4out, PR, n1out, n3out);
	nand n5(n5out, n2out, CR, n6out);
	nand n6(n6out, n5out, PR, n3out);
	
	always @(D or CLK)
	begin 
		Q = n6out;
		QN = n5out; 
	end 
endmodule 