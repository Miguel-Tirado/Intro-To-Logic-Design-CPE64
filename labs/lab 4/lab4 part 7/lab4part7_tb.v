module lab4part7_tb();
	reg clock=1'b0, SI=1'b0, PL=1'b1, SL=1'b0, SR=1'b0, RR=1'b0, RL=1'b0;
	wire [7:0] Q;
	integer i,j,k,l,m,n,o;
	
	lab4part7 DUT(clock,SI,PL,SL,SR,RR,RL,Q);
	
	initial begin
	for(i=0;i<160;i=i+1) begin
	#20
	clock<=~clock;
	end
	$stop;
	end
	
	initial begin 
	for(j=0;i<107;j=j+1) begin
	#30;
	SI<=~SI;
	end
	$stop;
	end 
	
	initial begin 
	for(k=0;k<80;k=k+1) begin
	#40;
	PL<=~PL;
	end
	$stop;
	end 
	
	initial begin 
	for(l=0;l<64;l=l+1) begin
	#50;
	SL<=~SL;
	end
	$stop;
	end 
	
	initial begin 
	for(m=0;m<54;m=m+1) begin
	#60;
	SR<=~SR;
	end
	$stop;
	end 
	
	initial begin 
	for(n=0;n<46;n=n+1) begin
	#70;
	RR<=~RR;
	end
	$stop;
	end 
	
	initial begin 
	for(o=0;o<40;o=o+1) begin
	#80;
	RL<=~RL;
	end
	$stop;
	end 

	endmodule