module lab5part2 (X,RES,CLK,MOR,MEL,Q,CS,D);
	input X,RES,CLK;
	output reg MOR,MEL;
	
	output [7:0] Q;
	output reg [2:0] CS,D;
	
	parameter s7 = 3'b111, s6=3'b110, s5=3'b101, s4=3'b100, s3=3'b011, s2=3'b010, s1=3'b001, s0=3'b000;
	
	always@ (X or CS)
	begin 	
		case(CS)
		s0 : begin 
					MOR <= 0;
					if (X==1)
					begin 
						D <= s2;
						MEL <= 0;
					end
					else begin 
						D <= s1;
						MEL <= 1;
					end
		end 
		s1 : begin 
					MOR <= 0;
					if(X==1)
					begin 
						MEL <= 0;
						D <= s2;
					end 
					else begin 
						MEL <= 1;
						D <= s3;
					end 
		end 
		s2 : begin 
					MOR <= 1;
					if(X==1)
					begin 
						MEL <= 1;
						D <= s7;
					end
					else begin 
						MEL <= 0;
						D <= s0;
					end
		end 
		s3 : begin 
					MOR <= 1;
					if(X==1)
					begin 
						MEL <= 1;
						D <= s7;
					end
					else begin
						MEL <= 0;
						D <= s0;
					end 
		end 
		s4 : begin 
			MOR <= 1;
					if(X==1)
					begin 
						MEL <= 1;
						D <= s7;
					end 
					else begin 
						MEL <= 0;
						D <= s0;
					end 
		end 
		s5 : begin 
					MOR <= 1;
					if(X==1)
					begin 
						MEL <= 1;
						D <= s7;
					end 
					else begin
						MEL <= 0;
						D <= s0;
					end 
		end 
		s6 : begin  
					MOR <= 1;
					if(X==1)
					begin 
						MEL <=1;
						D <= s7;
					end 
					else begin
						MEL <= 0;
						D <= s0;
					end
		end 
		s7 : begin
					MOR <= 0;
					if(X==1)
					begin
						MEL <= 0;
						D <= s1;
					end 
					else begin 
						MEL <= 0;
						D <= s2;
					end
		end 
		endcase 
end 		
	always@(posedge CLK or negedge RES)
	begin
		if (RES == 0)
			CS <= s4;
		else 
			CS <= D;
	end 
	assign Q[7:5] = CS;
	assign Q[4:2] = D;
	assign Q[1] = MEL;
	assign Q[0] = MOR;
endmodule 
	