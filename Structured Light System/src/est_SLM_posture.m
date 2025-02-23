function T_s_m = est_SLM_posture(x_0, bar_a, pts_tilde, lambda_arr)  

    Jacobi = configure_Jacobian();

    alp_step = Jacobi.epsilon_trans;
    n_max = Jacobi.N_interation;
    err_sq_bnd = Jacobi.epsilon;

	x_k = x_0;
	for k = 1:n_max
		
		T_s_m_k = covert_to_DH(x_k);
		
		pts_tmp = comp_lpts(T_s_m_k, bar_a, lambda_arr);
		pts_k = pts_tmp(:);
		err_k = pts_tilde - pts_k;
		err_sq = err_k'*err_k;
		
		if err_sq < err_sq_bnd
			x_esti = x_k;
			T_s_m = T_s_m_k;
			pts = pts_k;
			% fprintf("solved with %d th iteration\n", k);
			return;
        end

		Jac = comp_Jacobian(T_s_m_k, bar_a, lambda_arr);

		cx = cos(x_k(4));
		sx = sin(x_k(4));
		cy = cos(x_k(5));
		sy = sin(x_k(5));
		Jan = [1 0 sy;
			   0 cx -sx*cy;
			   0 sx cx*cy];
		Jslm = [Jac(:,1:3) Jac(:,4:6)*Jan];   
		Jslm_rank = rank(Jslm);

		% x_kp1 = x_k + alp_step * (Jslm\err_k);				
		% x_k = x_kp1;

        if err_sq > alp_step
            alpha = ((Jslm*Jslm'*err_k)'*err_k)/((Jslm*Jslm'*err_k)'*(Jslm*Jslm'*err_k));
		    x_kp1 = x_0 + alpha*Jslm'*err_k;  
            x_k = x_kp1;
        else
            x_kp1 = x_k + alp_step * (Jslm\err_k);				
	        x_k = x_kp1;
        end
	end
	% fprintf("maximum iteration reached!\n")
	T_s_m = T_s_m_k;
	pts = pts_k;

end