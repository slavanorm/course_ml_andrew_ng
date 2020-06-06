function X_rec = recoverData(Z, U, K)

%Z = X*U(:,1:K)

X_rec = Z * U(:,1:K)';
