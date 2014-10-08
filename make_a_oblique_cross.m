function make_a_oblique_cross(r)
%Дано: Поле с роботом
%Результат: Косой крест
    make_a_part_of_oblique_cross(r, 's', 'w')
    make_a_part_of_oblique_cross(r, 'w', 'n')
    make_a_part_of_oblique_cross(r, 'n', 'o')
    make_a_part_of_oblique_cross(r, 'o', 's')
    r.mark()
end

function make_a_part_of_oblique_cross(r, side1, side2)
    counter = 0;
    while r.is_bord(side1) == 0 && r.is_bord(side2) == 0
        r.step(side1)
        r.step(side2)
        r.mark()
        counter = counter + 1;
    end
    while counter ~= 0
        r.step(backside(side2))
        r.step(backside(side1))
        counter = counter - 1;
    end
end