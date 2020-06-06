function p = predictOneVsAll(Theta, X)
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions

X = [ones(size(X),1) X];

_ = X* Theta';

[_, p] = max(_, [], 2);



end
