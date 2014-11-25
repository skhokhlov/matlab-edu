function limacon(a) 
    twopi=2*pi;
    p=Pero(a, 0);
    t=0;
    if a>1
        while a>1
            while (t<=twopi)
                t=t+pi/100;
                r=1-a*sin(t);
                x=r*cos(t); 
                y=r*sin(t);
                p.punct(x, y);
            end
            a=a-0.1;
        end
    end
    p.draw();
end