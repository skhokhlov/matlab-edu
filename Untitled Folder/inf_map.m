function inf_map(r)
   a=1;
   while ~r.is_mark()
        if step1(r, a, 's') == 1
            break
        end
        
        if step1(r, a, 'w') == 1
            break
        end
        
        if step1(r, a+1, 'n') == 1
            break
        end
        
        if step1(r, a+1, 'o') == 1
            break
        end
        a=a+1;
   end
  
end
    
    function y=step1(r, count, side)
    y=0;
    for i=1:count
        if r.is_bord(side) == 1
            obhod(r,side)
        else
            r.step(side)
        end
        if r.is_mark() == 1
            y=1;
            break
        end
    end
    
    end    
    
    
    
    function obhod(r,s)
    a=1;
        while r.is_bord(s) == 1
            if r.is_bord('o') ~= 1
                r.step('o')
            else
                r.step('w')
            end
        end
    end
%     
%         b=0;
%         while b~=count || ~r.is_mark()
%             while (count~=b && ~r.is_bord(side)) || ~r.is_mark()
%                 r.step(side)
%                 b=b+1;
%             end
%             if b~=count || ~r.is_mark()
%                 crawl(r, side)
%                 while (count~=b && ~r.is_bord(side)) || ~r.is_mark()
%                     r.step(side)
%                     b=b+1;
%                 end
%             end
%             
%         end
%         
%     end
%     
%     function crawl(r, side)
%         a1=1;
%         a2=1;
%         b1=1;
%         b2=1;
%         side1 = side;
%         side2 = side;
%         if side == 'n'
%             side1='w';
%             side2 = 'o';
%         elseif side=='o'
%             side1='n';
%             side2='s';
%         elseif side == 's'
%             side1 = 'o';
%             side2='w';
%         else
%             side1 = 's';
%             side2='n';
%         end
%         
%         while r.is_bord(side) && ~r.is_mark()
%             for i=0:a
%                 r.step(step1)
%             end
%             while b1<=2*a1
%                 r.step(side2)
%             end
%         end
%     end
%     
%     
    
    
    
    
    
    
    