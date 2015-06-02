function [ a ] = g( a )

    size = numel(a);
    for i=2:size-1 
        a(i)=(a(i-1)+a(i)+a(i+1))/3;
    end

end

