function a = comp_lpt_axis(idx, angle, s)

    norm = 1./(s*sqrt(1/(2*(1-cos(angle)))));
    h = s * sqrt(1./(2.*(1 - cos(angle))) - 1/3); 
    a1 = norm * [h; s/2; -s*sqrt(3) / 6];
    a2 = norm * [h;   0; (s * sqrt(3)/3)];
    a3 = norm * [h; -s/2; -s * sqrt(3) / 6];

    a = [a1 a2 a3];

    if idx == 1
        a = a1;
    elseif idx == 2
        a = a2;
    elseif idx == 3
        a = a3;
    else
        error('wrong index');
    end



end