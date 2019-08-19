function [L,D] = LDLt(A)
%Matrix LDLt decomposition
%   Paramters Specification
%       A:Decomposed matrix
%   Result Specification
%       L:matrix L      D:matrix D
%   Example
%       A = [2,-1,1;3,3,9;3,3,5];
%       [L,D] = LDLt(A);
n = length(A);
D(1,1) = A(1,1);
L = zeros(n,n);
for i= 1:1:n
    L(i,i) = 1;
end
for j = 2:1:n
    L(j,1) = A(1,j) / D(1,1);
end
for i = 2:1:n
   tem = 0;
   for j = 1:1:i-1
       tem = tem + L(i,j) * L(i,j) * D(j,j);
   end
   D(i,i) = A(i,i) - tem;
   for j = i+1:1:n
      tem = 0;
      for k = 1:1:i-1
        tem = tem + L(i,k) * L(j,k) * D(k,k);
      end
      L(j,i) = (A(i,j) - tem)/D(i,i);  
   end
end
end