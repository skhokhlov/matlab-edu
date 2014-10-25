function concentric_circles(count)
%Результат: концентрические окружности

    color=['b' 'r' 'g' 'y' 'k' 'm'];
    width=0.5;
    n=1;
    k=sqrt(2);
    for i=1:count
        draw_circle(20*i, color(n), width);
        if (n<6) 
            n=n+1; 
        else
            n=1; 
        end
        width=width*k;
    end
end

function draw_circle(r, color, width)
    twopi=2*pi;
    p=Pero(r, 0);
    p.set('lineColor', color, 'lineWidth', width)
    t=0;
    
    while (t<twopi)
        t=t+twopi/360;
        x=r*cos(t); 
        y=r*sin(t);
        p.punct(x, y)
    end
    p.draw
    pause(0.2)
end