% combine nominal laser pointer axes
function bar_a = combine_lpt_axes(angle, s)

    a1 = comp_lpt_axis(1, angle, s);    %compute laser pointer axis's vector
    a2 = comp_lpt_axis(2, angle, s);
    a3 = comp_lpt_axis(3, angle, s);

    bar_a = [a1 a2 a3];

end

