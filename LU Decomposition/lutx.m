% Name: Varun Jani

function [L,U,p] = lutx(A)
    [n,n] = size(A);
    p = (1:n)';
    
    for k = 1:n-1
        [r,c] = max(abs(A(k:n,k)));
        c = c+k-1;
        
        if(A(c,k) ~= 0)
            if(c ~= k)
                A([k c],:) = A([c k],:);
                p([k c]) = p([c k]);
            end
            
            i = k+1:n;
            A(i,k) = A(i,k)/A(k,k);
            
            j = k+1:n;
            A(i,j) = A(i,j) - A(i,k)*A(k,j);
        end
    end

L = tril(A,-1) + eye(n,n);
U = triu(A);