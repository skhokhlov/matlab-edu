function rose2()
   
    t=0;
    a=1;

for i=0:pi/6:2*pi
    t=t+i;
    p=Pero(a*cos(3*t)*cos(t),a*cos(3*t)*sin(t));
    %p=Pero(0,0);
    for j=0:0.01:pi
        x=a*cos(3*j + t)*cos(j + t); 
        y=a*cos(3*j + t)*sin(j + t);
        p.punct(x, y)
    end
    p.draw();
end

end