function J = comp_Jacobian(T_s_m, bar_a, lambda_arr)
	
    R_s_m = T_s_m(1:3,1:3);
	d_s_m = T_s_m(1:3,4);
	J = zeros(6,6);
	for idx = 1:3
	
		lambda = lambda_arr(:,idx);
		T_m_l = covert_to_DH(lambda);
		R_m_l = T_m_l(1:3,1:3);
				
		a = R_s_m*R_m_l*bar_a(:,idx);
		ax = a(1); 
		ay = a(2);
		az = a(3);
		alp_x = ax/az;
		alp_y = ay/az;
		
		d_m_l = [lambda(1:2); 0];
		del = R_s_m*d_m_l;
		del_x = del(1);
		del_y = del(2);
		del_z = del(3);
		
		u = d_s_m + R_s_m*d_m_l;
% 		ux = u(1);
% 		uy = u(2);
		uz = u(3);
		
		Jl = [1, 0, -alp_x, -alp_x*del_y+alp_x*alp_y*uz, del_z+alp_x*del_x-(1+alp_x^2)*uz, -del_y+alp_y*uz;
		 	  0, 1, -alp_y, -(del_z+alp_y*del_y)+(1+alp_y^2)*uz, alp_y*del_x-alp_x*alp_y*uz, del_x-alp_x*uz];
		J(2*idx-1:2*idx,:) = Jl;		
	end
end