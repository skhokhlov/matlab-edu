function mark_all(r)
%Дано: Поле с роботом
%Результат: Все клетки поля замаркированы
    goto_corner(r)
    
    while r.is_bord('n') == 0
        mark_line(r,'o')
        %r.step('n')
        mark_line(r,'w')
        %r.step('n')
    end
    
    if r.is_bord('w')
        mark_line(r,'o')
    elseif r.is_bord('o')
        mark_line(r,'w')
    end
end

function mark_line(r, side)
    while r.is_bord(side) == 0
        r.mark()
        r.step(side)
    end
    r.mark()
    if r.is_bord('n') == 0
        r.step('n')
    end
end