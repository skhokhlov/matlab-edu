function c=treeLeaf(tree)
	c=0;
	for i=1:length(tree)-1
		%ddc=c+treeLeaf(tree{i});
		try
		%	c=c+1
		       	tree{i}+1
			c=c+1;
		catch
			c=c+treeLeaf(tree{i})
		end
			i	

	end
end
