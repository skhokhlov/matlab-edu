function d=degree(t)
    %Дано:t-дерево
    %рез: d-степень дерева
    d=length(t)-1;
    for i=1:length(t)-1
        s=degree(t{i});
        if (s>d)
            d=s;
        end
    end
end
