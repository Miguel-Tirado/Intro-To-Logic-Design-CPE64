module comparator_both_tb();
	reg [2:0] A,B;
	reg us_bit;
	wire G,E,L;
	
	comparator uut(.a0(A[0]), .a1(A[1]), .a2(A[2]), .b0(B[0]), .b1(B[1]), .b2(B[2]), .us_bit(us_bit), .G(G), .E(E), .L(L));
	initial begin 
		A[0] <= a0;A[1] <= a1;A[2] <= a2;
		B[0] <= b0;B[1] <= b1;B[2] <= b2;
		us_bit = 1'b0;
		A = 3b'000;
		B = 3b'111;
		#20
		us_bit = 1'b0;
		A = 3b'111;
		B = 3b'000;
		#20
		us_bit = 1'b0;
		A = 3b'010;
		B = 3b'010;
		#20
		us_bit = 1'b1;
		A = 3b'101;
		B = 3b'100;
		#20
		us_bit = 1'b1;
		A = 3b'100;
		B = 3b'101;
		#20
		us_bit = 1'b1;
		A = 3b'111;
		B = 3b'111;
		#20;
		end 
endmodule 