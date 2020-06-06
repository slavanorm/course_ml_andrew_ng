function [J grad] = nnCostFunction(nn_params, input_layer_size,hidden_layer_size,num_labels,X, y, lambda)

Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end),num_labels, (hidden_layer_size + 1));
m = size(X, 1);


% Part 1: Feedforward nn and return cost J
% feedfwd
X = l_prepend(X);
_ = sigmoid(X * Theta1');
Layer1 = l_prepend(_);
Layer2 = sigmoid(Layer1 * Theta2');
[y_prob, y_predict] = max(Layer2, [], 2);
y_fact_matrix = eye(num_labels)(y,:);

[J Theta1_grad Theta2_grad] = Cost_lr(
		y_fact_matrix,
		X,
		Layer1,
		Layer2, 
		Theta1,
		Theta2,
		lambda);

grad = [Theta1_grad(:) ; Theta2_grad(:)];

end
