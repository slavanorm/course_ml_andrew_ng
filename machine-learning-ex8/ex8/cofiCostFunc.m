function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)

X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), num_users, num_features);

% cost
Y_p = X*Theta';
diff = Y_p - Y;

A = diff .*R;

J = sum(sum(A.^2))/2;

% cost reg

J += lambda /2 * (sum(sum(Theta .^2)) + sum(sum(X .^2 )));

% grad
X_grad = A*Theta;
Theta_grad = A'*X;

% grad reg
X_grad += lambda*X;
Theta_grad += lambda*Theta;



grad = [X_grad(:); Theta_grad(:)];

end
