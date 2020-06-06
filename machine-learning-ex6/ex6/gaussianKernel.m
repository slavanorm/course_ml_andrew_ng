function sim = gaussianKernel(x1, x2, sigma)

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.

A = (x1 - x2).^2;
A = sum(A);
sim = exp (- A / 2 / sigma ^2);

end
