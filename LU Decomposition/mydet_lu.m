% Name: Varun Jani

% Problem 5 - Part (b) - Showing the output with lu function for
% matrix A = [1 2 3; 4 5 6; 7 8 9] - Image submitted of output
function Determinant = mydet_lu(A)
    [rows, cols] = size(A);
    
    if rows ~= cols
        error('Input matrix is not a square matrix');
    end
    
    [L,U,p] = lu(A);
    Determinant = prod(diag(U));
    
    disp("Determinant of matrix A: ")
    disp(Determinant)
    disp("Lower Triangular")
    disp(L)
    disp("Upper Triangular")
    disp(U)
    disp("Permutation")
    disp(p)
end