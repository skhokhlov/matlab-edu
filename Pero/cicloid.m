function cicloid(a)
    twopi=2*pi;
    p=Pero(0, 0);
    t=0;
    
    while (t<=twopi*10)
        t=t+twopi/360;
        x=a*(t-sin(t)); 
        y=a*(1-cos(t));
        p.punct(x, y);
    end
    p.draw();
end