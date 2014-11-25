function four (t, T0)
A = 1;
T = 1;
a0 = 2*A/pi;

%detected_cos(A, T, t)
draw_furie(A, a0, T, t)

end

function detected_cos(A, T, t)
p=Pero(-t,A*cos(2*pi/T*t));
i=-t;
for i=-t:pi/30:t
    if cos(2*pi*i/T) >= 0
        p.punct(i, A*cos(2*pi*i/T))
    else
        p.punct(i,0);
    end
end
p.draw()
end

function a=get_param_a(k,A)
    a=A/2*(sin((k-1)*pi/2)/(k-1)*pi/2+sin((k+1)*pi/2)/(k+1)*pi/2);
end


function draw_furie(A, a0, T, t)
p=Pero(-t,0);
i=-t;
for i=-t:pi/30:t
    sum=get_sum(A, T, i);
    p.punct(i, a0/2+sum)
end
p.draw()
end

function sum=get_sum(A, T, t)
        n=10;
        sum=0;
        a=0;
        for k=1:n
            a=get_param_a(k,A);
            sum=sum+a*cos(2*pi*k*t/T);
        end
end