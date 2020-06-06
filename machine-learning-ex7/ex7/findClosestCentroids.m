function idx = findClosestCentroids(X, centroids)

diff=zeros(size(X,1), size(centroids,1));

for i =[1:size(centroids, 1)]
	a = X - centroids(i,:);
	diff(:,i) = sum(a.^2,2);
	
end

[_ idx] = min(diff,[],2);

end
