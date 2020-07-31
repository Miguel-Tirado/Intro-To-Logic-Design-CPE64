module comparator_tb();
	reg a0,a1,b0,b1;
	wire G,E,L;
	
	comparator uut(.a0(a0),.a1(a1),.b0(b0),.b1(b1),.G(G),.E(E),.L(L));
	
	initial begin 
		a1= 1'b0;a0=1'b0;b1=1'b0;b0 =1'b0; //0
		#20
		a1= 1'b0;a0=1'b0;b1=1'b0;b0 =1'b1; //1
		#20
		a1= 1'b0;a0=1'b0;b1=1'b1;b0 =1'b0; //2
		#20
      a1= 1'b0;a0=1'b0;b1=1'b1;b0 =1'b1; //3
		#20
      a1= 1'b0;a0=1'b1;b1=1'b0;b0 =1'b0; //4
		#20
      a1= 1'b0;a0=1'b1;b1=1'b0;b0 =1'b1; //5
		#20
      a1= 1'b0;a0=1'b1;b1=1'b1;b0 =1'b0; //6
		#20
      a1= 1'b0;a0=1'b1;b1=1'b1;b0 =1'b1; //7
		#20;
		
	end
endmodule 
		


		

		