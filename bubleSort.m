function a=bubleSort(a)

    for i = 1:length(a)
        for j = 1:length(a)-i
            if a(j) > a(j+1)
%                 swap(a(j), a(j+1));
                temp = a(j+1);
                a(j+1) = a(j);
                a(j) = temp;
            end
        end
    end
    
end