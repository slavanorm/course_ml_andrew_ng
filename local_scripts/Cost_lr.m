function [J D1 D2] = Cost_lr(y_fact,X,Layer1,y_pred,Theta1,Theta2,lambda)

% Cost

A =    y_fact  .* log(y_pred);     % for y = 1
B = (1-y_fact) .* log(1-y_pred);   % for y = 0
C = -1*sum(mean(A+B));

% Regularization

T1 = Theta1(:,2:end);
T2 = Theta2(:,2:end);

D = lambda / 2 / size(X,1);
E = sum(sum(T1 .^ 2 )) + sum(sum(T2 .^2));

R = D*E;

J = C + R;

% Grad calc
% nested gradient!
% https://youtu.be/GlcnxUlrtek

Layer1_non_sigmoid = l_prepend(X*Theta1');
d3 = y_pred - y_fact;
d3 = d3';

d2 = Theta2' * d3 .* sigmoidGradient(Layer1_non_sigmoid)';
% 26x10 % 10x5k  % 26x5k
d2 = d2(2:end,:); 					% 25x5k


% Grad regular


D1 = (d2 * X + 
		[zeros(size(T1,1),1) lambda*T1]
		)./ size(X,1);			% 25x401
D2 = (d3 * Layer1 + 
		[zeros(size(T2,1),1) lambda*T2]
		)./size(X,1);		% 10x26

end
