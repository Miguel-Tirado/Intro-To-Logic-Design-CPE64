module lab2part4(in_a,in_b,in_c,in_d,out,out1);
	input in_a, in_b, in_c, in_d;
	output out,out1;
	
	wire in_a, in_b, in_c, in_d, out,out1;
	wire notout, and1out, and2out,not2out,and3out,not3out,and4out,and5out,and6out,not4out,or1out,or2out;
	
	not n1(notout, in_b);
	not n2(not2out, in_c);
	not n3(not3out, in_a);
	not n4(not4out, in_d);
	
	or o1(or1out,and3out,and4out);
	or o2(or2out,and5out,and6out);
		
	and a1(and1out,in_a, notout);
	and a2(and2out,and1out,not2out);
	and a3(and3out,not2out,in_d);
	and a4(and4out,not3out,notout);
	and a5(and5out, notout,in_c);
	and a6(and6out,in_c,not4out);
	
	or o3(out,and2out,and3out);
	or o4(out1,or1out,or2out);
	
endmodule 
	
	
	
	