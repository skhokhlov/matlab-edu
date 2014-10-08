function mark_to_side(r, side)
%Дано: Поле с роботом, направление
%Результат: Все клетки по направлению замаркированы
    while r.is_bord(side) == 0
        r.step(side)
        r.mark()
    end
    while r.is_mark() == 1
        r.step(backside(side))
    end
end
    