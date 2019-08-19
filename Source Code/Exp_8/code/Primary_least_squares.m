function [a,b] = Primary_least_squares(X,Y)
%Find primary least squares polynomial.
%   Paramters Specification
%       X,Y:data
%   Result Specification
%       a,b:primary polynomial parameter
%   Example
%       X = [1,2,3]; Y = [1,4,9];
%       [a,b] = Primary_least_squares(X,Y);
n = length(X);
x = 0; y = 0; xx = 0; xy = 0; 
for i = 1:1:n
    x = x + X(i);
    y = y + Y(i);
    xx = xx + X(i) * X(i);
    xy = xy + X(i) * Y(i);
end
b = exp((xx*y-xy*x)/(n*xx-x*x));
a = (n*xy-x*y)/(n*xx-x*x);
end