function [ b ] = repeatRemove( a )
    
%     size = length(a);
    b = a;
%     i=1;
%     while i<numel(a)-1
%         if a(i) == a(i+1)
%             b(i) = [];
%         end
%         i=i+1;
%     end
    
     for i = 1:length(a)-1
         if a(i) == a(i+1)
             b(i)=[];
         end
     end
            
end

