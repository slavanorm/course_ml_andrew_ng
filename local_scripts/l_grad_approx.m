function retval=grad_approx(value,eps)

	% hard grad approx

	up = in_func(value + eps)- in_func(value - eps);
	down=2*eps;
	retval=up/down;

	function retval1=in_func(value1)
		retval1=3 * value1^4 + 4;

	endfunction

endfunction