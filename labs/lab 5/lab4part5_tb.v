module lab4part5_tb;
	reg Y,W,Q,D,CLK;
	wire reset,clk,x;
	lab5part2 DUT(clk,reset,X,W,Y,Q);
	
	always@(posedge clk or posedge reset)
	begin // the register part of the machine
		if(reset) Q<=s0;
		else Q<=next_state;
	end

	 
	