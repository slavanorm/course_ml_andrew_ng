function [mu sigma2] = estimateGaussian(X)

[m, n] = size(X);

mu = mean(X);
sigma2 = mean((X - mu).^2);