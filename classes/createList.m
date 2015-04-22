function l = createList(a)
	l = struct.List();
	for i=1:length(a)
		l.add(a(i));
	end
end

