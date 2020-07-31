module comparator_both_tb();
	reg [2:0] A,B;
	reg s_bit;
	wire G,E,L;
	
	comparator uut(.a0(A[0]), .a1(A[1]), .a2(A[2]), .b0(B[0]), .b1(B[1]), .b2(B[2]), .G(G), .E(E); .L(L));
	initial begin 
		A[0] <= a0;A[1] <= a1;A[2] <= a2;
		B[0] <= b0;B[1] <= b1;B[2] <= b2;