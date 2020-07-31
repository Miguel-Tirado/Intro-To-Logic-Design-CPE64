module lab4part5 (P_CLK, CLK, Q);

	input wire CLK, P_CLK;
	output reg[3:0] Q;
	
	wire [3:0] temp_D;
	
	assign temp_D[0] = ~Q[0]; // FF_0
	assign temp_D[1] = (Q[1] & ~Q[0])|(Q[0] & ~Q[1]); //FF_1
	assign temp_D[2] = (~Q[2] & Q[1] & Q[0]) | (Q[2] & ~Q[1])|(Q[2] & ~Q[0]);
	assign temp_D[3] = (~Q[3] & Q[2] & Q[0] & Q[1]) | (~Q[2] & Q[3])|(~Q[0] & Q[3])|(~Q[1] & Q[3]);
	
	always @ (posedge CLK)Q <= temp_D;
endmodule 