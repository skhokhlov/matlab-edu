%Количество всех листьев дерева
function d=numb_list(t)
if length(t)==1
    d=1;
else
    d=0;
    for i=1:length(t)-1
        c=numb_list(t{i});
        d=d+c;
    end
end
end
