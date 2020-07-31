module fourgates(in1,in2,out1,out2,out3,out4);
	input in1,in2;
	output out1,out2,out3,out4;
	
	wire in1,in2,out1,out2,out3,out4;

	and g1(out1,in1,in2);
	or g2(out2,in1,in2);
	nand g3(out3,in1, in2);
	not g4(out4,in1);
	
endmodule 