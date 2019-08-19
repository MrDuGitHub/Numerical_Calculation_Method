function x = Symmetric(TOL,N,A,X)
%Find the Maximum eigenvalue and eigenvector by symmetric method.
%   Paramters Specification
%       TOL:tolerate        N:the maximum number of iterations
%       A  :the matrix      X:initial vector
%   Result Specification
%       X:the eigenvector of Maximum eigenvalue
%   Example
%       A = [4,-1,1;-1,3,-2;1,-2,3]; X = [1;1;1];
%       X = Symmetric(TOL,N,A,X);
k = 1;
X = X / L2_norm(X);
while k <= N
    Y = A * X;
    u = X' * Y; x(k)=u;
    if L2_norm(Y) == 0
        disp(['Eigenvalue ',num2str(u)]);
        disp('A has the eigenvalue 0,select a new vector x and restart.');
        return;
    end
    ERR = L2_norm(X - Y / L2_norm(Y));
    X = Y / L2_norm(Y);
    if ERR < TOL
        disp([num2str(k),' ',num2str(u)]);
        disp(X);
        return;
    end
    k = k + 1;
end
disp('Maximum number of intertions execcded');