function ret = rot(axis, q) 

    if axis == 'x'
    
        ret = [ 1 0 0 0;
               0 cos(q) -sin(q) 0;
                0 sin(q) cos(q) 0;
                            0 0 0 1] ;
    
    elseif axis == 'y'

        ret = [cos(q) 0 sin(q) 0;
                           0 1 0 0;
              -sin(q) 0 cos(q) 0;
                           0 0 0 1] ;
    
    elseif axis == 'z'

        ret = [cos(q) -sin(q) 0 0;
                sin(q) cos(q) 0 0;
                            0 0 1 0;
                            0 0 0 1] ;
    else
    error(msg)
end
