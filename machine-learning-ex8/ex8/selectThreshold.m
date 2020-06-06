function [bestEpsilon bestF1] = selectThreshold(yval, pval)

bestF1 = 0;
stepsize = (max(pval) - min(pval)) / 1000;

for epsilon = min(pval):stepsize:max(pval)

	y_predict = pval < epsilon;

	tp = sum( y_predict  &  yval);
	fp = sum( y_predict  & !yval);
	tn = sum(!y_predict  & !yval);
	fn = sum(!y_predict  &  yval);

	F1 = 0;

	if tp >0
		r = tp / (tp + fn); % recall
		p = tp / (tp + fp); % precision
		F1 = 2*p*r/(p+r);
	endif
	
    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
