function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
grad = zeros(size(theta)); % gradient
h = sigmoid(X*theta); % main function
m = length(y);
A =    y  .* log(  h);     % for y = 1
B = (1-y) .* log(1-h); % for y = 0
J = -sum(A+B)/m;

Jd=X' * (h - y)/m;


grad = Jd;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

end
