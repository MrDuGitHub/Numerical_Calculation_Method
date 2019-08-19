function [p] = False_Position(p0,p1,N,TOL,F)
%False position method to find the zero point of function F.
%   Paramters Specification
%       p0,p1:initial vlaues        N    :maximum number of iterations
%       TOL  :tolerate              F    :the function
%   Result Specification
%       p    :the zero point of function f
%   Example
%       F = @(x)(1/2+1/4*x^2-x*sin(x)-1/2*cos(2*x));
%       p = False_Position(0,1,100000,10^-5,F);
i = 2; q0 = F(p0); q1 = F(p1);
while i <= N
    p = p1 - q1 * (p1 - p0)/(q1 - q0);
    if abs(p - p1) < TOL
        disp(['The False Position method run ',num2str(i),' iterations.']);
        disp(['The answer is ',num2str(p),' .']);
        return;
    end
    i = i + 1;
    q = F(p);
    if q * q1 < 0
        p0 = p1;
        q0 = q1;
    end
    p1 = p; q1 = q;
end
disp(['The False Position method failed after N iterations,N=',num2str(N),'.']);
end