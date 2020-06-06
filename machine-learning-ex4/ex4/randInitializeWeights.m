function W = randInitializeWeights(L_in, L_out)
%RANDINITIALIZEWEIGHTS Randomly initialize the weights of a layer with L_in
%incoming connections and L_out outgoing connections

%   the first column of W handles the "bias" terms

eps = 0.12;
W = rand(L_out, 1 + L_in)*2*eps - eps;


end
