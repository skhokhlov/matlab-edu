function rose(n)
    T=360/n;
    t=0;
    while t<360
        t=t+T;
        draw_rose(t);
    end
end

function draw_rose(t)
    p=Pero(1,0);
    
    
    while (t<360)
        t=t+360/30;
        r=cos(3*t + 30);
        x=r*cos(t + 30); 
        y=r*sin(t + 30);
        p.punct(x, y)
    end
    
    
    p.draw();
    pause(0.01);
end