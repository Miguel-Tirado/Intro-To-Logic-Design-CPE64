module lab4part7 (clock, SI, PL, SL, SR, RR,RL,Q);
	input clock, SI, PL, SL, SR, RR, RL;
	output reg [7:0]Q = 8'b10101010;
	wire [7:0]PER;
	
	assign PER = 8'b10011001;
	
	always @(posedge clock)
	case ({PL, SL, SR,RR,RL})
	5'b10000: begin Q <= PER; end
	5'b01000: begin Q <= Q<<1; Q[0] <= SI; end
	5'b00100: begin Q <= Q>>1; Q[7] <= SI; end 
	5'b00010: begin Q <= Q>>1; Q[7] <= Q[0];end 
	5'b00001: begin Q <= Q<<1; Q[0] <= Q[7];end 
	endcase 
endmodule 