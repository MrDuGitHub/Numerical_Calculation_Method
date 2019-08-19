function X = Gauss_Seidel(A,B,X0,N,TOL,L_norm)
%Solving Linear Equations by Gauss_Seidel iterative method.
%   Paramters Specification
%       [A|B] :augmented matrix      X0    :initial solution vector
%       TOL   :tolerate              N     :maximum number of iterations 
%       L_norm:Norm used to estimate the error
%   Result Specification
%       X     :solution of linear equations
%   Example
%       A = [4,3,0;3,4,-1;0,-1,4]; B = [24,30,-24];
%       X0 = [1,1,1]; L2 = @(X)sqrt(sum(X.*X));
%       X = Gauss_Seidel(A,B,X0,100,10^-5,L2);
n = length(A);
X = zeros(1,n);
for k = 1:1:N
    for i = 1:1:n
        tem = 0;
        for j=1:1:i-1
            tem = tem + A(i,j) * X(j);
        end
        for j = i+1:1:n
            tem = tem + A(i,j) * X0(j);
        end     
        X(i) = (-tem + B(i))/A(i,i);
    end
    if L_norm(X - X0)<TOL
        disp(k);
        return;
    end
    for i = 1:1:n
        X0(i) = X(i);
    end
end
disp('Maximum number of iterations exceeded');
end