function res=a23(a)
  size = length(a);
  L = zeros(size);
  N = zeros(size);
  for i=1:size
    for j=1:size
      if (i==j)
        L(i,j)=a(i,j)/2;
        N(i,j)=a(i,j)/2;
      elseif (i>j)
        L(i,j)=a(i,j);
      else
        N(i,j)=a(i,j);
      end
    end

  end
  res=[N,L];
end
