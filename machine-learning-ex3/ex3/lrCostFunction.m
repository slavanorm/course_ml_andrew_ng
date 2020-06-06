function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

h = sigmoid(X*theta); % main function
m = length(y);

A =    y  .* log(  h);     % for y = 1
B = (1-y) .* log(1-h); % for y = 0
T0=theta(2:end);
C = sum(T0.^2)*lambda/2; 
J = (-sum(A+B)+ C) / m;


T1= [0;T0]; % thet fo lambda
Cd = lambda / m * T1;
Jd=X' * (h - y)/m + Cd;


grad = Jd;


grad = grad(:);

end
