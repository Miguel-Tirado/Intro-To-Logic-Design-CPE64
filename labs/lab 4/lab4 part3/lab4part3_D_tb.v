module lab4part3_D_tb();
	reg R,S,D,CLK;
	wire Q,QN;
	
	lab4part3_D uut (.D(D), .Q(Q), .QN(QN), .CLK(CLK));
	initial begin 
		CLK = 1; D= 0; S = 1; R = 0;
		#20;
		CLK = 0; D= 1; S = 0; R = 1;
		#20;
		CLK = 1; D= 1; S = 0; R = 0;
		#20;
		CLK = 0; D= 0; S = 0; R = 1;
		#20;		
		
	end 
endmodule 