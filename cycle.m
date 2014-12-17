function [ a ] = cycle( a, k )

    size = length(a);
    b = a;
    l = 0;
    
    for i=0:size-1
        a(k+i) = a(i+1);
        a(i+1) = b(k+i);
    end
        
end

