classdef Node < handle
	
	properties (Access = private)
		data
		handle
	end

	methods (Access = public)
		
		function obj = Node(value)
			obj.data = value;
		end

		function cob = copy(obj)
			cob = Node(obj.data);
			hNode = obj;
			while ~isempty(obj)
				obj = next(obj);
				hNode.handle = Node(obj.data);
				hNode = next(hNode);
			end
		end
	

