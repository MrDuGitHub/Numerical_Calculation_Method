function x = Inverse(TOL,N,A,X)
%Find the closest eigenvalue and eigenvector by inverse method.
%   Paramters Specification
%       TOL:tolerate        N:the maximum number of iterations
%       A  :the matrix      X:initial vector
%   Result Specification
%       X:the eigenvector of the closest eigenvalue
%   Example
%       A = [4,-1,1;-1,3,-2;1,-2,3]; X = [1;-2;1];
%       X = Inverse(TOL,N,A,X);
q = X' * A * X / (X' * X);
disp(q);
k = 1;
[p,~] = L_infinite_norm(X);
X = X / X(p);
n = length(X);
while k <= N
    Y = (A - q * eye(n))^(-1) * X;
    if rank(A - q * eye(n)) ~= rank([A - q * eye(n),X])
        disp(['q is an eigenvalue ',num2str(q)]);
        return;
    end
    u = Y(p);    x(k) = u;
    [p,~] = L_infinite_norm(Y);
    [~,ERR] = L_infinite_norm(X - Y / Y(p));
    X = Y / Y(p);
    if ERR < TOL
        u = (1/u) + q;
        disp([num2str(k),' ',num2str(u)]);
        disp(x);
        x = 1./x +q;
         disp(x);
        return;
    end
    k = k + 1;
end
disp('Maximum number of intertions execcded');