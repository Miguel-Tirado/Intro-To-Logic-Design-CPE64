module lab4part4_tb;
	reg D, CLK, PR, CR;
	wire Q, QN;
	
	lab4part4 DUT(PR, CR, CLK, D, Q, QN);
	
	initial 
	begin 
		PR = 0; CR = 0; CLK = 0; D = 0;
		#10;
		PR = 0; CR = 0; CLK = 0; D = 1;
		#10;
		PR = 0; CR = 0; CLK = 1; D = 0;
		#10;
		PR = 0; CR = 0; CLK = 1; D = 1;
		#10;
		PR = 0; CR = 1; CLK = 0; D = 0; // 5
		#10;
		PR = 0; CR = 1; CLK = 0; D = 1;
		#10;
		PR = 1; CR = 1; CLK = 1; D = 0;
		#10;
		PR = 1; CR = 1; CLK = 1; D = 1; // 8
		#10;
		PR = 1; CR = 0; CLK = 0; D = 0;
		#10;
		PR = 1; CR = 0; CLK = 0; D = 1;
		#10;
		PR = 1; CR = 0; CLK = 1; D = 0; // 11
		#10;
		PR = 1; CR = 0; CLK = 1; D = 1;
		#10;
		PR = 1; CR = 1; CLK = 0; D = 0;
		#10;
		PR = 1; CR = 1; CLK = 0; D = 1;
		#10;
		PR = 1; CR = 1; CLK = 1; D = 0;
		#10;
		end
	initial 
	begin 
		#100;
		$stop;
	end 
endmodule 