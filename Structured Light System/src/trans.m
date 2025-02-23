function ret = trans(axis, d)
 
    if axis == 'x'
        d_x = d;
       ret = [1 0 0 d_x;
              0 1 0 0;
              0 0 1 0;
              0 0 0 1] ;
    elseif axis == 'y'
        d_y = d;
        ret = [1 0 0 0; 
               0 1 0 d_y;
               0 0 1 0;
               0 0 0 1] ;
    elseif axis == 'z'
        d_z = d;
        ret = [1 0 0 0;
               0 1 0 0;
               0 0 1 d_z;
               0 0 0 1] ;
    else 
        error(msg)
        
    end
end
    