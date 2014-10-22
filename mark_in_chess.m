function counter=mark_in_chess(r)

%Дано: Поле с роботом
%Результат: поле замаркировано в шахматном порядке

    goto_corner(r,'s','w')
    
    setGlobal(0)
    while r.is_bord('n') == 0
       mark_line(r);
    end
    mark_line(r);
    counter = getGlobal();
end

function mark_line(r)
%Дано: Робот, направление
%Результат: робот закрасил линию и перешел на следующую, если возможно
    c=getGlobal();
    if r.is_bord('o')==0
        side='o';
    elseif r.is_bord('w')==0
        side='w';
    end
    
    while r.is_bord(side) == 0
        marker(r,c)
        c = c + 1;
        r.step(side)
        marker(r,c)
    end
    if r.is_bord('n') == 0
        
        marker(r,c)
        c = c + 1;
        r.step('n')
        marker(r,c)
    end
    %marker(r,c)
    setGlobal(c);
end

function marker(r,c)
    if rem(c,2) == 0
        r.mark
    end
end

function setGlobal(val)
global counter
counter = val;
end

function r = getGlobal
global counter
r = counter;
end