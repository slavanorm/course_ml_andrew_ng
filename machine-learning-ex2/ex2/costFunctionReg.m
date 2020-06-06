function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

grad = zeros(size(theta)); % gradient
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



% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
