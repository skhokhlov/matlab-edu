function [ c ] = checkNumberSystem( a, b )
    
    i = 10;
    j = 1;
    d = a;

    while i < d
        if mod(a, 10) < b
            c(j) = mod(a, 10);
            j = j+1;
        end
        a = fix(a/i);
        i = i*10;
        
    end

end

