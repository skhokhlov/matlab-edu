function s=let2rec(t, ind)
	
	s=obhod(ind);

	function s=obhod(root)
		s='';
		for k=1:length(t{root})
			sk=obhod(k);
			s=[s,sk];
		end
		s=[s, num2str(root)];
		s=['(',s,')'];
	end

end
