function polynomials(type, n)
if type == 1
    while n ~= 0
        first(n)
        n=n-1;
    end
elseif type == 2
    while n ~= 0
        second(n)
        n=n-1;
    end
end
end

function first(n)
    p=Pero(-1, 0);
    for x=-1:0.01:1
        y=(((x+sqrt((x^2)-1))^n)+((x-sqrt((x^2)-1))^n))/2;
        p.punct(x,y)
    end
    p.draw()
end

function second(n)
    p=Pero(-1,0);
    for x=-1:0.01:1
        y=(((x+sqrt((x^2)-1))^(n+1))-((x-sqrt((x^2)-1))^(n+1)))/2*sqrt((x^2)-1);
        p.punct(x,y)
    end
    p.draw()
end
