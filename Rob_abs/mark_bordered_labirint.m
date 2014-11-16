function mark_bordered_labirint(r)
%if r.is_bord('n')==0 || r.is_bord('s')==0 || r.is_bord('w')==0 || r.is_bord('o')==0
if r.is_mark==0
    r.mark()
    if r.is_bord('n') == 0
        r.step('n')
        mark_bordered_labirint(r)
        r.step('s')
    end
    
    if r.is_bord('s') == 0 
        r.step('s')
        mark_bordered_labirint(r)
        r.step('n')
    end
    
    if r.is_bord('o') == 0 
        r.step('o')
        mark_bordered_labirint(r)
        r.step('w')
    end
    
    if r.is_bord('w') == 0 
        r.step('w')
        mark_bordered_labirint(r)
        r.step('o')
    end
end
end