% Name: Varun Jani

function [L,U,p] = modified_lutx(A)
    [rows, cols] = size(A); 
    L = eye(cols); 
    p = eye(cols); 
    U = A;
    
    for i = 1:rows-1
        pivot = max(abs(U(i:rows,i)));
        
        for j = i:rows
            if(abs(U(j,i)) == pivot)
                var = j;
                break;
            end
        end
        
        U([i,var],i:rows) = U([var,i],i:rows);
        L([i,var],1:i-1) = L([var,i],1:i-1);
        p([i,var],:) = p([var,i],:);
        
        for j = i+1:rows
            L(j,i) = U(j,i) / U(i,i);
            U(j,i:rows) = U(j,i:rows) - L(j,i)*U(i,i:rows);
        end
    end
end