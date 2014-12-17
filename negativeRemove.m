function [ a ] = negativeRemove( a )

    size = length(a);
    
    for i=1:size
        if a(i) < 0
            for j=i:size-1
                a(j) = a(j+1);
                
                if j == size-1
                    a(j+1) = NaN;
                end
            end
        end
    end

end

