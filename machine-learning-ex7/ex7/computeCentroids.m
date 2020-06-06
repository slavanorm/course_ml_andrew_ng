function centroids = computeCentroids(X, idx, K)

[m n] = size(X);


for i = [1:K]
	centroids(i,:)=mean(X(idx ==i,:));
end
