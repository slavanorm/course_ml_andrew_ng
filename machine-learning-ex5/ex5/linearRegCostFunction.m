function [J, grad] = linearRegCostFunction(X, y, theta, lambda)


h = (X*theta); % main function
m = length(y);

A = mean((h - y) .^2);
T0=theta(2:end);
B = sum(T0.^2)*lambda / m; 
J = (A + B) / 2;


T1= [0;T0]; % thet fo lambda
Cd = lambda / m * T1;
Jd=X' * (h - y)/m + Cd;


grad = Jd;


end
