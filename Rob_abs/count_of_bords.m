function n=count_of_bords (r)
%Дано: Поле с роботом и прергородками, не пересекающимеся и не касающимеся внешней границы
%Результат: n=число перегородок
    
    mapsize = size_of_map(r);
    
    n=0;
    while r.is_bord('n') == 0
        if r.is_bord('w') == 0
            n=n + count_of_bords_in_line(r, 'w', mapsize);
        else 
            n=n + count_of_bords_in_line(r, 'o', mapsize);
        end
        r.step('n')
    end

end



function n=count_of_bords_in_line(r, side, mapsize)
%Дано: Робот и направление
%Результат: количество перегородок сверху строки
    n=0;
    while r.is_bord(side) == 0
      walk(r, side, 0, mapsize)
      if r.is_bord('n')
          n=n+1;
          walk(r,side,1,mapsize)
      end
    end
end




function walk(r, side, logical, mapsize)
    count_of_steps = 1;
    while r.is_bord('n') == logical && r.is_bord(side) == 0
            r.step(side)
            count_of_steps = count_of_steps +1;
    end
    %
    %if r.is_bord(side) == 1 && count_of_steps < mapsize(1)
    %    crawl(r)
    %    walk(r,side,logical, mapsize)
    %end
    %
end


%{
function crawl(r)
     %Дано:Робот у перегородки
     %Результат: Робот с другой стороны перегородки
    side=0;
    if r.is_bord('w')
        side='w';
    elseif r.is_bord('o')
        side='o';
    else
        warning('Нет пергородки')
    end
    
    c=0;
    while r.is_bord(side) == 1
        r.step('n')
        c=c+1;
    end
    
    if r.is_bord(side) == 0
        r.step(side)
    else
        error('wtf?')
    end
    
    while c ~= 0
        r.step('s')
        c=c-1;
    end
        
end
}%