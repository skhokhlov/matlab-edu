function res = longest_bord(r)
    m=-inf;
    k=0;
    while r.is_bord('o') == 0
        a=dlina_per(r);
        if a>m
            m=a;
            k=1;
        elseif  a==m
            k=k+1;
        end
      
            
    end
end
function res=dlina_per(r)
    res=1;
    while r.is_bord('n') == 1 && r.is_bord('o') == 0
        res=res+1;
            r.step('o')
    end
end

