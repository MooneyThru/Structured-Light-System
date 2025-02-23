function pt = comp_lpt(T_stol, bar_a)
	
	R_stol = T_stol(1:3,1:3);
	a = R_stol*bar_a;
	u = T_stol(1:3,4);
	alpha_x = a(1)/a(3);
	alpha_y = a(2)/a(3);
	
	pt = -[alpha_x; alpha_y]*u(3) + [u(1); u(2)];

end