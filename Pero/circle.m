function circle()
    p=Pero(0, 0);
    t=0;
    
    while (t<2*pi)
        t=t+2*pi/360;
        x=2*sin(t)*cos(t); 
        y=2*sin(t)*sin(t);
        p.punct(x, y)
    end
    
    p.draw()