function [ a ] = negativeMove( a )

    b = a;
    k = 1;
    
    for i = 1:length(a)
        if a(i) < 0
            for j=i:length(a)-1
                a(j+1) = b(j);
            end
            a(k) = b(i);
            k = k+1;
        end
    end

end

