function [p] = Newton(p0,N,TOL,F,f)
%Newton method to find the zero point of function F.
%   Paramters Specification
%       p0 :initial vlaue           N  :maximum number of iterations
%       TOL:tolerate                F  :the function
%       f  :the derivative
%   Result Specification
%       p  :the zero point of function f
%   Example
%       F = @(x)(1/2+1/4*x^2-x*sin(x)-1/2*cos(2*x));
%       f = @(x)(1/2*x-sin(x)-x*cos(x)+sin(2*x));
%       p = Newton(pi/2,100000,10^-5,F,f);
i = 1;
while i <= N
    x(i) = p0;
    p = p0 - F(p0) / f(p0);
    if abs(p - p0) < TOL
        disp(['The Newton method run ',num2str(i),' iterations.']);
        disp(['The answer is ',num2str(p),' .']);
        return;
    end
    i = i + 1;
    p0=p;
end
disp(['The Newton method failed after N iterations,N=',num2str(N),'.']);
end