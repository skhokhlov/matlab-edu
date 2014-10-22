function [temp,count]=average_temp(r)
    goto_corner(r,'s','w');
    temp = 0;
    %count=0;
   
    while r.is_bord('n') == 0
           %a=walker(r);
           temp=temp+walker(r);
           %count=count+a(2);
    end
    temp=temp+walker(r);
    
end

function [temp]=walker(r)
    temp=0;
    c=0;
    if r.is_bord('o')==0
        side='o';
    elseif r.is_bord('w')==0
        side='w';
    end
    while r.is_bord(side)==0
        if r.is_mark()
            c=c+1;
            temp=temp+r.get_tmpr();
        end
        r.step(side)
    end
    if temp
        temp=temp/c;
    end
    if r.is_bord('n') == 0
        r.step('n')
    end
end