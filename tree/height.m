function h=heght(t)
%Дано: t-дерево, в виде вложенных отрезков
%Рез: h-высота
h=0;
for k=1:length(t)-1
    %length(t)-число всех поддеревьев
    hk=height(t{k});
    if hk>h
        h=hk;
    end
end
h=h+1;
%Утверждение: h=max{h1,..,hn}
end
