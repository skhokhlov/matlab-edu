function  c = compare(a,b)

    
    sizeA = length(a);
    sizeB = length(b);
    size = sizeA + sizeB;
    j = 1;
    k = 1;
    c = zeros(1, size);
    
    for i = 1:size
        if j > sizeA
            c(i) = b(k);
            k=k+1;
        elseif k > sizeB
            c(i) = a(j);
            j=j+1;
        else
        if a(j) < b(k)
            c(i) = a(j);
            j = j+1;
        else
            c(i) = b(k);
            k = k+1;
        end
        end
    end
end