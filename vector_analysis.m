function res = vector_analysis( x )

    size = length(x);
    sum = 0;
    max = -inf;
    min = +inf;
    mul = 1;

    for i=1:size 
        
        sum = sum + x(i);
        
        mul = mul*x(i);
        
        if x(i) > max
            max = x(i);
        end
        
        if x(i) < min
            min = x(i);
        end
            
    end
    
    res = [ sum/size , max, min , sum , mul ];
end

