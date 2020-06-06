function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve


m = size(X, 1);
error_train = zeros(m, 1);
error_val   = zeros(m, 1);

for i = [1:m]
	Xt=X(1:i,:);
	yt=y(1:i,:);
	theta = trainLinearReg(Xt,yt,lambda);
	error_train(i) = linearRegCostFunction(
			Xt,
			yt,
			theta,
			0);
	error_val(i) = linearRegCostFunction(
			Xval,
			yval,
			theta,
			0);
end
