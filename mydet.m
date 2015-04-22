function res = mydet(A)

	k = length(A);

	L = zeros(k);
	U = eye(k);
	for idx1 = 1:k
			for idx2 = 1:k
					if idx1 >= idx2
							sumL = 0;
							for s = 1:idx2-1
									sumL = sumL + L(idx1, s) * U(s, idx2);
							end
							L(idx1, idx2) = A(idx1, idx2) - sumL;
					else
							sumU = 0;
							for s = 1:idx1-1
									sumU = sumU + L(idx1, s)*U(s, idx2);
							end
							U(idx1, idx2) = (1/L(idx1, idx1)) * (A(idx1, idx2) - sumU);
					end
			end
	end


	res=prod(diag(L)) * prod(diag(U))
