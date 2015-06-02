function n = connectedComp(g)
%Считает число компонентов связности
	mark = zeros(size(g));

	s = find(mark == 0);
	n = 0;
	while ~isempty(s)
		s = s(1);
		mark = breadthSearch(g, s);
		n = n + 1;
		s = find(mark == 0);
	end
end
