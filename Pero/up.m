function up ()
a=0.5;
b=1;
p=Pero(-1,0.5);
for x=-1:0.1:1
    for i=1:11
        for j=1:20
            c=pi*(2*i-1)/(2^j);
            b=b*sin(c)/c;
        end
        a=a+b*cos(pi*(2i-1)*x);
    end
    p.punct(x,a)
end
p.draw()
end