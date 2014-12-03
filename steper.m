function y=steper(a,h,b)
    i=1;
    y(1)=a;
    while a <= b
        y(i)=a;
        i=i+1;
        a=a+h;
    end
end
