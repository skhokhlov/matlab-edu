function res = mylength( x )
    i = 0;
    try
        while 1
            i=i+1;
            x(i);
        end
    catch
        i=i-1;
    end
    res=i;
end