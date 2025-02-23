function T = covert_to_DH(parameter)

    size_DH = size(parameter, 1);

    if size_DH == 4

        del_x = parameter(1);
        del_y = parameter(2);
        psi_x = parameter(3);
        psi_y = parameter(4);
        
        T = trans('x', del_x) * trans('y', del_y) ...
            * rot('x', psi_x) * rot('y', psi_y);

    elseif size_DH == 6

        d_x = parameter(1);
        d_y = parameter(2);
        d_z = parameter(3);
        qx  = parameter(4);
        qy  = parameter(5);
        qz  = parameter(6);
    
        T = trans('x', d_x) * trans('y', d_y) * trans('z', d_z) ... 
            * rot('x', qx) * rot('y', qy) * rot('z', qz);

    end

end