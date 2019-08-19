function [X,Y] = Fixed_Point(N,TOL,p0,g)
%Fixed point iteration.
%   Paramters Specification
%       N  :maximum number of iterations   TOL:tolerate
%       p0 :initial vlaue                  g  :iterative function
%   Result Specification
%       X,Y:arrays of intermediate value during iteration.
%   Example
%       [X,Y] = Fixed_Point(100,10^-4,2,@(x)x-2*x*x);
i = 1; X = 1:1:N; Y = zeros(1,N);
while i <= N
    Y(i) = p0; p = g(p0);
    if abs(p - p0) < TOL
        Y(i+1) = p;
        disp(['The fixed point method with g(x)',func2str(g),' run ',num2str(i),' iterations.']);
        X = X(1:i); Y = Y(1:i);
        return;
    end
    i = i + 1; p0=p;
end
disp(['The fixed point method with g(x)',func2str(g),' failed after N iterations,N=',num2str(N),'.']);
end