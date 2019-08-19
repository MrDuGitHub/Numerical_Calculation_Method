function [x,y] = Runge_Kutta(a,b,h,y0,f)
%Runge_Kutta Method for Solving Initial Value Problems of Ordinary Differential Equations
%Use the fourth-order Runge-Kutta method.
%   Paramters Specification
%       a,b :data interval       h   :step length
%       y0  :the initial value   f   :derivative function                  
%   Result Specification
%       x,y:arrays of values of the solution function at the grid point
%   Example
%       dy = @(x,y)y-2*x/y;
%       [x1,y1] = Runge-Kutta(0,1,0.1,1,dy);
N = (b - a) / h + 1; x = zeros(1,N); y = zeros(1,N);
x(1) = a; y(1) = y0;
for i = 1:1:N-1
    K1 = h * f(x(i),y(i));
    K2 = h * f(x(i) + h / 2 , y(i) + K1 / 2);
    K3 = h * f(x(i) + h / 2 , y(i) + K2 / 2);
    K4 = h * f(x(i) + h , y(i) + K3);
    y(i+1) = y(i) + (K1 + 2 * K2 + 2 * K3 + K4)/6;
    x(i+1) = a + i * h;
end
end