function five(n)
    c=1;
    color=['b' 'r' 'g' 'y' 'k' 'm'];
    while n ~= 0
        draw_f(n, color(c));
        n=n-1;
        if (c<6) 
            c=c+1; 
        else
            c=1; 
        end
    end
    
    
    end
    
function draw_f(n, color)
    p2=Pero(-1,get_b(-1,1));
    p2.set('lineColor', color);
    
    for t=-1:0.1:1
        p2.punct(t,get_b(t, n))
    end
    
    p2.draw()
%     pause(0.5);
end    

function b=get_b(t, n)
    b=sin(pi/4*(1+t));
    
    if n>1
        b=get_b(t, n-1)*sin(pi*t/2);
    end
end
           