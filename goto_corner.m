function goto_corner(r, side1, side2)
%Дано: Поле с роботом
%Результат: Робот в юго-западном угле
    if side1 == 0 || side2 == 0
        side1 = 's';
        side2 = 'w';
    end
    while r.is_bord(side1) == 0 || r.is_bord(side2) == 0
        if r.is_bord(side1) == 0
            r.step(side1)
        end
        if r.is_bord(side2) == 0
            r.step(side2)
        end
    end
end