function find_mark(r)
    a=1;
    while r.is_mark() == 0
        if steper(r, a, 's') == 1
            break
        end
        
        if steper(r, a, 'w') == 1
            break
        end
        
        if steper(r, a+1, 'n') == 1
            break
        end
        
        if steper(r, a+1, 'o') == 1
            break
        end
        a=a+2;
    end
end


function y=steper(r, count, side)
    y=0;
    for i=1:count
        r.step(side)
        if r.is_mark() == 1
            y=1;
            break
        end
    end
end  