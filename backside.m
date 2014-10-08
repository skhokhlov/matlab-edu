function backside = backside( side )
%Дано: Направление
%Результат: Направление противоположное данному
    if side == 'n'
        backside = 's';
    elseif side == 'o'
        backside = 'w';
    elseif side == 's'
        backside = 'n';
    elseif side == 'w'
        backside = 'o';
    end
end

