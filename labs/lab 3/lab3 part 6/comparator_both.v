module comparator_both (a0,a1,a2,b0,b1,b2,us_bit,G,E,L);
input a0,a1,a2,b0,b1,b2,us_bit;
output G,E,L;
reg G,E,L;
always@(a0 or a1 or a2 or b0 or b1 or a2 or us_bit)
 begin
	 if (us_bit == 1)
		begin 
			if ({a2,a1,a0}<{b2,b1,b0})
				L<= 1;
			else 
				L<= 0;
			if ({a2,a1,a0}>{b2,b1,b0})
				G <= 1;
			else 
				G <= 0;
			if ({a2,a1,a0}=={b2,b1,b0})
				E <= 1;
			else 
				E <= 0;
		end 
	 else 
		begin 
			if({$signed(a2),$signed(a1),$signed(a0)} < {$signed(b2),$signed(b1),$signed(b0)})	
				L <= 1;
			else 
				L <= 0;
			if({$signed(a2),$signed(a1),$signed(a0)} > {$signed(b2),$signed(b1),$signed(b0)})	
				G <= 1;
			else 
				G <= 0;
			if({$signed(a2),$signed(a1),$signed(a0)} == {$signed(b2),$signed(b1),$signed(b0)})	
				E <= 1;
			else 
				E <= 0;
		end 
 end 
 endmodule 