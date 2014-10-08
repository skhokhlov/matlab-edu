function goto_corner(r)
%Дано: Поле с роботом
%Результат: Робот в юго-западном угле
    while r.is_bord('s') == 0 || r.is_bord('w') == 0
        if r.is_bord('s') == 0
            r.step('s')
        end
        if r.is_bord('w') == 0
            r.step('w')
        end
    end
end