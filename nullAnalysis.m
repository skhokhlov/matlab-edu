function [c] = nullAnalysis (a)
    
    size = length(a);
    l=1;
    k=0;
    
    for i=1:size
        
        if a(i) == 0
            k = k+1;
        end
        
        if a(i) ~= 0
            
            b(l) = a(i);
            
            %if a(i) == 0
                c(l) = k;
                k = 0;
            %end
            
            l = l+1; 
        end
    end
    
    
end
            