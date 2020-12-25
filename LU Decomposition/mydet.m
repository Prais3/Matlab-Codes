% Name: Varun Jani

% Problem 3 - This is the function mydet which calls the lutx function for
% the 3rd problem and modified_lutx for the 4th problem if you need to
% check the output with modified, replace lutx with modified_lutx
function Determinant = mydet(A)
    [rows, cols] = size(A);
    
    if rows ~= cols
        error('Input matrix is not a square matrix');
    end
    
    [L,U,p] = lutx(A);
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