function depthSearch(g, s)
	mark = zeros(size(g));
	mark(s) = 1;
	stack = [s];

	while ~isempty(stack)
		v = stack(end);
		stack(end) = [];
		disp(v);

		%for u = 1 : length(g{v})
		for u = g{v}
			if mark(u) == 0
				mark(u) = 1;
				stack(end+1) = u;
			end
		end
	end
end
