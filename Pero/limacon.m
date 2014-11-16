function limacon(a) 
    twopi=2*pi;
    p=Pero(a, 0);
    t=0;
    
    while (t<=twopi)
        t=t+twopi/360;
        r=1-a*sin(t);
        x=r*cos(t); 
        y=r*sin(t);
        p.punct(x, y);
    end
    p.draw();
end