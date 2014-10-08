function a=size_of_map(r)
%Дано: Поле с роботом
%Результат: Размеры поля
    
    a=[1,1];
    b=[1,1];
    
    goto_corner(r)
    
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
        error('Panic!')
    end
end