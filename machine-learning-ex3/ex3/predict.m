function p = predict(Theta1, Theta2, X)

p = zeros(size(X, 1), 1);
X = l_prepend(X);

_ = sigmoid(X * Theta1');
Layer1 = l_prepend(_);
Layer2 = Layer1 * Theta2';
[_, p] = max(Layer2, [], 2);


end
