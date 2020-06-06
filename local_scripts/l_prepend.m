function Ret = l_prepend(A)
% prepend column of 1es
s = size(A,1);
Ret = [ones(s,1) A];

end