% Name: Varun Jani

function [int,err,ier] = romberg(f,a,b,tol)

format long

% Declaring the variables as asked
level_max = 10;
tol = abs(tol);
level_max = abs(level_max);

% Checking for condition if the parameters are wrong
% Hence the input is not valid
if tol == 0 ||  tol >= 1 || level_max < 1
	error('Try again! Invalid Input!')
end

% Declaring more variables
matr_z  = zeros(1, level_max + 1);
k = 0;
err = 1;
h = 0;

% while loop to only stop if err value is less than tol times z
while (err > tol * h)
    
    % If k is equal to 0, we call trapezoid function with p = 0
    % If k not equal to 0, we send in the value of k as p = matrix(k)
	if k == 0
		matr_z(k + 1) = trapezoid(f, a, b, k + 1, 0);
	else
		matr_z(k + 1) = trapezoid(f, a, b, k + 1, matr_z(k));
    end

    % Simple for loop to iterate and update p accordingly
	for j = k:-1:1
		p = 4^(k - j + 1);
		matr_z(j) = (p * matr_z(j + 1) - matr_z(j)) / (p - 1);
	end

	I = matr_z(1);
    
    % Simple if condition to update err if k's value is greater than 1
	if k > 1
		err = abs(I - h);
    end

    % Assign I to z and update k since we one iteration is done
	h = I;
	k = k + 1;

    % If k's value is equal to maximum of 10 levels and
    % absolute of err value is greater than tol
    % Update value of ier accordingly
	if k == level_max && abs(err) > tol
		ier = 1;
		break;
	else
		ier = 0;
	end
end
int = I;
end