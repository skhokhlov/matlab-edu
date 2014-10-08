function bord2(r)
    
    goto_bord(r)
    crawler(r)
end
firstside = 's';
function goto_bord(r)
    if r.is_bord('n')==0
        inf_steper(r, 'n')
        firstside = 'n'
    elseif r.is_bord('w')==0
        inf_steper(r, 'w')
        firstside = 'w'
    elseif r.is_bord('o')==0
        inf_steper(r, 'o')
        firstside = 'o'
    else
        inf_steper(r, 's')
        firstside = 's'
    end
end

function inf_steper(r, side)
    while r.is_bord(side)==0
        r.step(side)
    end
end

function crawler(r) 
    while (r.is_bord('o') || r.is_bord('w')) && ~r.is_bord('s')
    	r.step('s')
    end
    while ~r.is_bord('o')
        r.step('o')
    end
end