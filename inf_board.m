function inf_board(r)
%Дано: Робот у бесконечной перегородки с проходом
%Результат: Робот прощел через проход
    count=1;
    while r.is_bord('n') == 1
        if steper(r, count, 'o') == 1
            break
        end
        
        if steper(r, count, 'w') == 1
            break
        end 
        count=count+1;
    end
    if r.is_bord('n') == 0
        r.step('n')
    end
end

function y=steper(r, count, side)
    y=0;
    for i=1:count
        r.step(side)
        if r.is_bord('n') == 0
            y=1;
            break
        end
    end
end