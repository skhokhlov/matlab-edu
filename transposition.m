function y = transposition(a,b)

    y = zeros(1, length(a));
    
    for i = 1:numel(a)
        y(b(i)) = a(i);
    end
end