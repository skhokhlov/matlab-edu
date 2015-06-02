%Count of leafs
function lis=listia(t)
lis=0;
lisk=0;
for i=1:(length(t)-1)
    if length(t{i})==1
        lis=lis+1;
    end
    lisk=listia(t{i});
    lis=lis+lisk;
end
end
