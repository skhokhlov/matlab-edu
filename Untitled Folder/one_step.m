function one_step(r)
    while ~r.is_bord('n')
        r.step('n')
        if ~r.is_bord('o')
            r.step('o')
        end
        if r.is_bord('n')
            r.step('w')
        end
    end


end