module lab5part2_tb();
	reg X, RES,CLK;
	wire MOR,MEL;
	
	wire [7:0] Q;
	wire [2:0] CS,D;
	
	lab5part2 DUT (X,RES,CLK,MOR,MEL,Q,CS,D);
	
	initial begin 
	CLK = 1'b0;
	RES = 1'b1;
	X = 1'b1;
	
	#5;
	RES = 1'b0;
	
	#5;
	RES = 1'b1;
	
	#1000;
	$stop;
	end 
	always begin 
	#10;
	CLK = ~CLK;
	end 
endmodule 