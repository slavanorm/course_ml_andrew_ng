function [X_poly] = polyFeatures(X, p)
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];

X_poly = (X .^ [1:p]);

end
