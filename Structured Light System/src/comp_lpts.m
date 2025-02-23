function pts = comp_lpts(T_s_m, a, lambda) % T : posture, a : lts vectors, lambda : misalignmet

  
    pts = zeros(6, 1);

    for idx = 1:3
        
        a_bar = a(:, idx);
        if size(lambda, 2) >= idx
            lambda_idx = lambda(:, idx);
            T_m_l = covert_to_DH(lambda_idx);
            T_s_l = T_s_m *T_m_l;
            
        end
 
        cur_index = 2 * idx - 1; 
        pts(cur_index:cur_index+1) = comp_lpt(T_s_l, a_bar); 

    end  

end