function make_a_cross(r)
%Дано: Поле с роботом
%Результат: Крест

    mark_to_side(r, 's')
    mark_to_side(r, 'w') 
    mark_to_side(r, 'n')
    mark_to_side(r, 'o')
    r.mark()
end