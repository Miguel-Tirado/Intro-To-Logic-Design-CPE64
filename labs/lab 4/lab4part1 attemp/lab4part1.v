module lab4part1 (R,S,Q, NQ);
	input R, S;
	output Q, NQ;
	assign Q = ~( S & NQ); // S (SET) is active low
	assign NQ = ~(R & Q); // R (RESET) is active low
endmodule 