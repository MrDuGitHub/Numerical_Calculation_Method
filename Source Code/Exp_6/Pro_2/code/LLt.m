function L = LLt(A)
%Matrix LLt decomposition
%   Paramters Specification
%       A:Decomposed matrix
%   Result Specification
%       L:matrix L
%   Example
%       A = [2,-1,1;3,3,9;3,3,5];
%       [L,U] = LLt(A);
n = length(A);
L(1,1) = sqrt(A(1,1));
for j = 2:1:n
    L(j,1) = A(1,j)/L(1,1);
end
for i = 2:1:n-1
    tem = 0;
    for j = 1:1:i-1
        tem = tem + L(i,j) * L(i,j);
    end
    L(i,i) = sqrt(A(i,i) - tem);
    for j = i+1:1:n
        tem = 0;
        for k = 1:1:i-1
            tem = tem + L(i,k) * L(j,k);
        end 
        L(j,i) = (A(i,j) - tem)/L(i,i);
    end
end
tem = 0;
for k = 1:1:n-1
    tem = tem + L(n,k) * L(n,k);
end
L(n,n) = sqrt(A(n,n) - tem);

