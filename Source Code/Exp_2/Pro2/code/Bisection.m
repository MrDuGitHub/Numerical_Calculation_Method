function [p] = Bisection(a,b,N,TOL,f)
%Bisection method to find the zero point of function f.
%   Paramters Specification
%       a,b:bisection interval      N  :maximum number of iterations
%       TOL:tolerate                f  :the function
%   Result Specification
%       p  :the zero point of function f
%   Example
%       p = Bisection(0,1,100,5*10^-4,@(x)2-3*x-sin(x));
i = 1; FA = f(a);
while i <= N
    p = a + (b - a)/2; FP = f(p);
    if FP == 0 || (b - a)/2 < TOL
        disp(['The Bisection method run ',num2str(i),' iterations.']);
        disp(['The answer is ',num2str(p),' .']);
        return;
    end
    i = i + 1;
    if FA * FP > 0
        a = p; FA = FP;
    else
        b = p;
    end
end
disp(['The Bisection method failed after N iterations,N=',num2str(N),'.']);
end