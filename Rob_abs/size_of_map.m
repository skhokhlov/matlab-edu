function a=size_of_map(r)
%Дано: Поле с роботом
%Результат: Размеры поля, робот в углу
    
    a=[1,1]; %a(1) - x; %a(2) - y
    b=[1,1];
    
    goto_corner(r,'s','w')
    
    while r.is_bord('o') == 0
        r.step('o')
        a(1)= a(1) + 1;
    end
    while r.is_bord('n') == 0
        r.step('n')
        a(2) = a(2) + 1;
    end
    while r.is_bord('w') == 0
        r.step('w')
        b(1) = b(1) + 1;
    end
    while r.is_bord('s') == 0
        r.step('s')
        b(2) = b(2) + 1;
    end
    if b ~= a
        error('The map is not a rectangle.')
    end
end
