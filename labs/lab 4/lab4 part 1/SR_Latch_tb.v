module SR_Latch_tb();
	reg R,S;
	wire Q,NQ;
	
	SR_Latch uut (.R(R),.S(S),.Q(Q),.NQ(NQ));
	initial begin 
		S=1; R=0;
		#20;
		S=1; R=1;
		#20;
		S=0; R=1;
		#20;
		S=1; R=0;
		#20;
		S=0; R=1;
		#20;
		S=1; R=1;
		#20;
		S=1; R=0;
		#20;
		S=0; R=1;
		#20;
		S=0; R=0;
		#20;
		S=0; R=0;
		#20;
	end
endmodule 