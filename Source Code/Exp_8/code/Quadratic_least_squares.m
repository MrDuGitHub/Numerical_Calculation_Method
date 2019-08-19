function [a,b,c] = Quadratic_least_squares(X,Y)
%Find quadratic least squares polynomial.
%   Paramters Specification
%       X,Y:data
%   Result Specification
%       a,b,c:quadratic polynomial parameter
%   Example
%       X = [1,2,3]; Y = [1,4,9];
%       [a,b,c] = Primary_least_squares(X,Y);
n = length(X);
x = 0; y = 0; xx = 0; xy = 0; 
x3 = 0; x4 = 0; xxy = 0;
for i = 1:1:n
    x = x + X(i);
    y = y + Y(i);
    xx = xx + X(i) * X(i);
    xy = xy + X(i) * Y(i);
    x3 = x3 + X(i)^3;
    x4 = x4 + X(i)^4;
    xxy = xxy + X(i) * X(i) * Y(i);
end
A = [n,x,xx;x,xx,x3;xx,x3,x4];
B = [y;xy;xxy];
ans = A\B;
b = exp(ans(1));
a = ans(2);
c = ans(3);
end