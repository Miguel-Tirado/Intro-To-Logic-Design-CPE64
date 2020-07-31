module lab4part1_tb();
	reg R,S;
	wire Q,NQ;
	
	lab4part1 uut (.R(R),.S(S),.Q(Q),.NQ(NQ));
	initial begin 
		R=0; S=1;
		#20;
		R=0; S=0;
		#20;
		R=1; S=0;
		#20;
		R=0; S=1;
		#20;
		R=1; S=0;
		#20;
		R=0; S=0;
		#20;
		R=0; S=1;
		#20;
		R=1; S=0;
		#20;
	end
endmodule 