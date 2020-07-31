module lab2part3(in_a,in_b,in_c,in_d,out);
	input in_a, in_b, in_c, in_d;
	output out;
	
	wire in_a, in_b, in_c, in_d, out;
	wire notout, orout, and1out;
	
	not n1(notout, in_b);
	
	or o1(orout, and1out, in_c);
	
	and and1(and1out, in_a, notout);
	and and2(out, orout, in_d);
	
endmodule 