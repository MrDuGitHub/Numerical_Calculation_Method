function [L,U] = my_LU(A)
%Matrix LU decomposition
%   Paramters Specification
%       A:Decomposed matrix
%   Result Specification
%       L:matrix L           U:matrix U
%   Example
%       A = [2,-1,1;3,3,9;3,3,5];
%       [L,U] = LU(A);
n = length(A);
if (A(1,1) == 0)
    disp('Factoiaztion impossible');
    return;
else
    L(1,1) = 1; U(1,1) = A(1,1);
end
for j = 2:1:n
    U(1,j) = A(1,j)/L(1,1);
    L(j,1) = A(j,1)/U(1,1);
end
for i = 2:1:n-1
    L(i,i) = 1; tem = 0;
    for k = 1:1:i-1
       tem = L(i,k) * U(k,i);
    end
    U(i,i) = A(i,i) - tem;
    if U(i,i) == 0
        disp('Factoiaztion impossible');
        return;
    end
    tem1 = 0; tem2 = 0;
    for j = i+1:1:n
        for k = 1:1:i-1
            tem1 = tem1 + L(i,k) * U(k,j);
            tem2 = tem2 + L(j,k) * U(k,i);
        end
        U(i,j) = (A(i,j) - tem1)/ L(i,i);
        L(j,i) = (A(j,i) - tem2)/ U(i,i);
    end
end
L(n,n) = 1; tem = 0;
for k = 1:1:n-1
   tem = tem + L(n,k) * U(k,n);
end
U(n,n) = A(n,n) - tem;