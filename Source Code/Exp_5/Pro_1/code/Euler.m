function [x,y] = Euler(a,b,h,y0,f)
%Euler Method for Solving Initial Value Problems of Ordinary Differential Equations
%   Paramters Specification
%       a,b :data interval       h   :step length
%       y0  :the initial value   f   :derivative function                  
%   Result Specification
%       x,y:arrays of values of the solution function at the grid point
%   Example
%       dy = @(x,y)y-2*x/y;
%       [x1,y1] = Euler(0,1,0.1,1,dy);
N = (b - a) / h + 1;
x = zeros(1,N);
y = zeros(1,N);
x(1) = a; y(1) = y0;
for i = 2:1:N
    y(i) = y(i-1) + h * f(x(i-1),y(i-1));
    x(i) = a + (i-1) * h;
end
end