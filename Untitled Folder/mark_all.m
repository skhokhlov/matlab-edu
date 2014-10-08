function mark_all(r)
    %Дано: Перегородок нет
    %Рез:закрашено всё
    

    
    while ~r.is_bord('s')
        r.step('s')
    end

    while ~r.is_bord('w')
        r.step('w')
        r.mark()
    end
    
    while ~r.is_bord('o')
        r.mark()
        while ~r.is_bord('n')
            r.step('n')
            r.mark()
        end
        r.mark()
        r.step('o')
        r.mark()
        while ~r.is_bord('s')
            r.step('s')
            r.mark()
        end
        if ~r.is_bord('o')
            r.step('o')
        end
    end
    
    
  