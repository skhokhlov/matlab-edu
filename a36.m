function res=a36(a)
  size = length(a);
  res=zeros(size);

  for i=1:size
    for j=1:size
      res(j,i)=a(i,j);
    end
  end
end
