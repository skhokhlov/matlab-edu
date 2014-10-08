function diag_mark(r)    
    marker(r,'w','s')

    returner(r,'o','n')
    
    marker(r,'o','n')
    
    returner(r,'s','w')
    
    marker(r,'w','n')
    
    returner(r,'s','o')
    
    marker(r,'o','s')
    
    returner(r,'w','n')
   
    r.mark()
    
    function steper(r,a,b)
        if a
            r.step(a)
        end
        if b
            r.step(b)
        end
       
    end

    function returner(r,a,b)
        while r.is_mark()
            steper(r,a,b)
        end
    end

    function marker(r,a,b)
        while ~r.is_bord(a) && ~r.is_bord(b)
            steper(r, a, b)
            r.mark()
        end
    end
end
        