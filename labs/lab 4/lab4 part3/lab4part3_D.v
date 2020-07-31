module lab4part3_D (D,Q,QN,CLK);
	input D,CLK;
	output Q,QN;
	wire R, S;
	
	assign Q = ~(R|QN);
	assign QN = ~(S|Q);
	assign S = ~((~(D|S))|R|CLK);
	assign R = ~(CLK|~(R|~(D|S)));
	
endmodule 
	