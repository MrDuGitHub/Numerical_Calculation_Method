function x = my_Power(TOL,N,A,X)
%Find the Maximum eigenvalue and eigenvector by power method.
%   Paramters Specification
%       TOL:tolerate        N:the maximum number of iterations
%       A  :the matrix      X:initial vector
%   Result Specification
%       X:the eigenvector of Maximum eigenvalue
%   Example
%       A = [4,-1,1;-1,3,-2;1,-2,3]; X = [1;1;1];
%       X = Power(TOL,N,A,X);
k = 1;
[p,~] = L_infinite_norm(X);
X = X / X(p);
while k <= N
    Y = A * X;
    u = Y(p);x(k)=u;
    [p,~] = L_infinite_norm(Y);
    if Y(p) == 0
        disp(['Eigenvalue ',num2str(u)]);
        disp('A has the eigenvalue 0,select a new vector x and restart.');
        return;
    end
    [~,ERR] = L_infinite_norm(X - Y / Y(p));
    X = Y / Y(p);
    if ERR < TOL
        disp([num2str(k),' ',num2str(u)]);
        disp(X);
        return;
    end
    k = k + 1;
end
disp('Maximum number of intertions execcded');