function mark = breadthSearch(g,s)
	mark = zeros(size(g));
	mark(s) = 1;
	turn = [s];

	while ~isempty(turn)
		v = turn(1);
		turn(1) = [];
		disp(v);

		for u = g{v}
			if  mark(u) == 0
				mark(u) = 1;
				turn(end+1) = u;
			end
		end
	end
end
