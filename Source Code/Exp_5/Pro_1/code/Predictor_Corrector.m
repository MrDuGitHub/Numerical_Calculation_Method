function [x,y] = Predictor_Corrector(a,b,h,y0,f)
%Predictor_Corrector Method for Solving Initial Value Problems of Ordinary Differential Equations
%Use the fourth-order Runge-Kutta method to find the initial value,
%the fourth-order Adams-Bashforth method as a prediction,
%an iteration of the Adams-Moulton method as a correction.
%   Paramters Specification
%       a,b :data interval       h   :step length
%       y0  :the initial value   f   :derivative function                  
%   Result Specification
%       x,y:arrays of values of the solution function at the grid point
%   Example
%       dy = @(x,y)y-2*x/y;
%       [x1,y1] = Predictor_Corrector(0,1,0.1,1,dy);
N = (b - a) / h + 1; x = zeros(1,N); y = zeros(1,N);
x(1) = a; y(1) = y0;
for i = 1:1:3
    K1 = h * f(x(i),y(i));
    K2 = h * f(x(i) + h / 2 , y(i) + K1 / 2);
    K3 = h * f(x(i) + h / 2 , y(i) + K2 / 2);
    K4 = h * f(x(i) + h , y(i) + K3);
    y(i+1) = y(i) + (K1 + 2 * K2 + 2 * K3 + K4)/6;
    x(i+1) = a + i * h;
end
for i = 4:1:N-1
    x(i+1) = a + i * h;
    y(i+1) = y(i) + h * (55 * f(x(i),y(i)) - 59 * f(x(i-1),y(i-1)) ...
                + 37 * f(x(i-2),y(i-2)) - 9 * f(x(i-3),y(i-3)))/24;
    y(i+1) = y(i) + h * (9 * f(x(i+1),y(i+1)) + 19 * f(x(i-1),y(i-1)) ...
                - 5 * f(x(i-2),y(i-2)) + f(x(i-3),y(i-3)))/24;
end
end