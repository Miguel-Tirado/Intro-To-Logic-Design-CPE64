module lab4part6_tb;
	reg CLK,I,RES;
	wire q0,q1,q2,q3,q4,q5,q6,q7;
	
	lab4part6 DUT (CLK, I, RES, q0,q1,q2,q3,q4,q5,q6,q7);
	initial 
	begin 
		CLK = 1'b0;
		forever #5 CLK = ~CLK;
	end 
	initial 
	begin 
		RES = 1'b0;
		#20;
		I = 1'b1;
		RES = 1'b1;
		#20;
		end 
		initial 
		begin 
			#500;
			$stop;
		end 	
endmodule 