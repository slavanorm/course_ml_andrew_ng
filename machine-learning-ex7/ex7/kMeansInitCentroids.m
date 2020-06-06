function centroids = kMeansInitCentroids(X, K)

centroids = zeros(K, size(X, 2));

% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X

for i = [1:K]
	centroids(i,:) = X(randi(size(X,1)),:);
end
