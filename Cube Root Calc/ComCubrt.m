% Name: Varun Jani

function [z, niter] = ComCubrt(a)

% Represent the complex number a as the vector avec
avec = [real(a); imag(a)];

% Just make a the initial guess for its cube root
zvec = avec; 

% Define variables z^k, tol and number of iterations as count_iter
z_raised_to_k = zvec;

tol = 10 * eps * max(norm(z_raised_to_k, 2), 10 * eps);
count_iter = 0;

% G is calling the function/file Gcubrt
G = Gcubrt(z_raised_to_k, avec);

while norm(G, 2) >= tol 
    % J here is calling the function/file Jcubrt
	J = Jcubrt(z_raised_to_k);
    
    % Updating z^k everytime as follows
	z_raised_to_k = z_raised_to_k - J \ G;
    
    % Updating G and tol based on updated z^k
	G = Gcubrt(z_raised_to_k, avec);
	tol = 10 * eps * max(norm(z_raised_to_k, 2), 10 * eps);
    
    % For every loop we do iterations + 1 and keep a count
	count_iter = count_iter + 1;
    
    % Condition to check if number of iterations are less than 25
    if(count_iter > 25)
		break;
    end
end

% Finally returning no. of iterations and z^k as zvec
niter = count_iter;
zvec = z_raised_to_k;

% Below is the last line asked to be put
z = complex(zvec(1), zvec(2));

end