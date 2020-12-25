% Name: Varun Jani

function [I] = trapezoid(f,a,b,k,p)

I = 0;

% declare difference of b - a as a variable 
ab_diff = b - a;

% If condition for when k's value is equal to 1
% Update value of I according to the calculation

% Basically f here is one of the three function given to us
% and we call a and b on those functions to calculate the value
if k == 1
	I = (ab_diff / 2) * (f(a) + f(b));
else
    % For loop to iterate through the condition when k != 1
	for i = 1:2^(k-2)
		I = I + f(a + (2*i-1) * ab_diff / (2^(k-1)));
	end
	I = 0.5 * p + (ab_diff / (2^(k-1))) * I;
end
end