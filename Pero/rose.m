function rose()
    a=1;
    t=0;
    
    for i=0:pi/6:2*pi
        draw_rose(a,t)
        t=t+i;
    end
    
end

function draw_rose(a,t)
    p=Pero(a*cos(3*t)*cos(t),a*cos(3*t)*sin(t));
    for j=0:pi/100:pi
        x=a*cos(3*j + t)*cos(j + t); 
        y=a*cos(3*j + t)*sin(j + t);
        p.punct(x, y)
    end
    p.draw();
end