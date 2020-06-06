function [U, S] = pca(X)

[m, n] = size(X);

Sigma = X' *X / m; % cov matrix
[U S V] = svd(Sigma);

% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
