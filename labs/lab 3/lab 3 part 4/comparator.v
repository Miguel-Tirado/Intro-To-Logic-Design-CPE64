module comparator (a0,a1,b0,b1,G,E,L);
input a0,a1,b0,b1;
output G,E,L;
reg G,E,L;
always@(a0 or a1 or b0 or b1)
 begin
 if ({a1,a0}<{b1,b0})
	L<= 1;
else 
	L<= 0;

 if ({a1,a0}>{b1,b0})
	G<= 1;
else
	G<= 0;

 if ({a1,a0} == {b1,b0})
	E<=1;
else 
	E<=0;
 end
 endmodule 