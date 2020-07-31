module Rlab3(in_a,in_b,in_c,in_d,out1,out2,out3,out4,out5);
	input in_a,in_b,in_c,in_d;
	output out1,out2,out3,out4,out5;
	
	wire in_a, in_b, in_c, in_d, out1, out2, out3, out4, out5;
	wire and1out,and2out,and3out,and4out,and5out,and6out,and7out,not1out,not2out,not3out,or1out,or2out,or3out,or4out;
	
	and a1(and1out, in_b, in_c);
	and a2(and2out, not1out, not2out);
	and a3(and3out, not1out, not3out);
	and a4(and4out, in_a, in_b);
	and a5(and5out, and4out,in_c);
	and a6(and6out, in_b,not3out); 
	and a7(and7out, not2out, in_c);

	
	not n1(not1out, in_a);
	not n2(not2out, in_b);
	not n3(not3out, in_c);
	
	or o1(out1, in_a, and1out);  
	or o2(or2out, and2out, and3out);
	or o3(out2, or2out, and5out);
	or o4(out3, and6out, and7out);
	
	assign out4 = not3out;
	assign out5 = in_d;
	
endmodule 