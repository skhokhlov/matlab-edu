function shakhmaty(r)
    a=1;
    %goto_bord(r)
    while ~r.is_bord('n')
        mark_line(r, 'w', a)
        mark_line(r, 'o', a)
    end
    if r.is_bord('w')
        mark_line(r, 'o', a)
    else
        mark_line(r, 'w', a)
    end
    
end

function mark_line(r, side, a)
    while ~r.is_bord(side)
        r.step(side)
        a=a+1;
        marker(r, a)
    end
    if ~r.is_bord('n')
        r.step('n')
        a=a+1;
        marker(r, a)
    end
end

function marker(r, a)
    if ~rem(a,2)
        r.mark
    end
end