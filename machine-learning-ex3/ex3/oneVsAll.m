function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

m = size(X, 1);
n = size(X, 2);
X = [ones(m, 1) X];
theta0 = zeros(n + 1, 1);
options = optimset(
	'GradObj', 'on',
	'MaxIter', 50);

for i = 1:num_labels
	yi = (y == i);
	all_theta(i,:) = fmincg(@(t)(lrCostFunction(t, X, yi, lambda)), theta0, options);


end

% y =[1:10], (y == i) = [0100], i = 2

end
