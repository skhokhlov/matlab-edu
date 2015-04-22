function [l, l2] = LnegativeRemove(l)
	l2 = struct.List();
	n = l.size;
	i=1;
	l.front();
	while i<=n
		val = l.get();
		if val < 0
			l2.add(val);
			l.front();
			for j = 2:i-1
				l.next();
			end
			l.del();
			l.next();
			n=n-1;
		else
			i= i+1;
			l.next();
		end

	end
	l.disp();
	l2.disp();
end
