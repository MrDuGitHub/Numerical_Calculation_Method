function [x,y1,y2] = Runge_Kutta(a,b,h,yy1,yy2,f1,f2)
%Runge Kutta Method for Solving Initial Value Problems of Two Dimensional Ordinary Differential Equations
%Use the fourth-order Runge-Kutta method.
%   Paramters Specification
%       a,b    :data interval       h    :step length
%       yy1,yy2:the initial value   f1,f2:derivative functions                  
%   Result Specification
%       x,y1,y2:arrays of values of the solution function at the grid point
%   Example
%       f1 = @(x,y1,y2)y2; f2 = @(x,y1,y2)10*(1-y1^2)*y2-y1;  
%       [X,Y1,Y2] = Runge_Kutta(0,40,0.01,1,0,f1,f2);
N = (b - a) / h +1;
x = zeros(1,N); y1 = zeros(1,N); y2 = zeros(1,N);  
x(1) = a; y1(1) = yy1; y2(1) = yy2;
for i = 1:1:N-1
    K1(1) = h * f1(x(i),y1(i),y2(i));
    K1(2) = h * f2(x(i),y1(i),y2(i));
    K2(1) = h * f1(x(i) + h / 2 , y1(i) + K1(1) / 2, y2(i) + K1(2) / 2);
    K2(2) = h * f2(x(i) + h / 2 , y1(i) + K1(1) / 2, y2(i) + K1(2) / 2);
    K3(1) = h * f1(x(i) + h / 2 , y1(i) + K2(1) / 2, y2(i) + K2(2) / 2);
    K3(2) = h * f2(x(i) + h / 2 , y1(i) + K2(1) / 2, y2(i) + K2(2) / 2);
    K4(1) = h * f1(x(i) + h , y1(i) + K3(1),y2(i) + K3(2));
    K4(2) = h * f2(x(i) + h , y1(i) + K3(1),y2(i) + K3(2));
    y1(i+1) = y1(i) + (K1(1) + 2 * K2(1) + 2 * K3(1) + K4(1))/6;
    y2(i+1) = y2(i) + (K1(2) + 2 * K2(2) + 2 * K3(2) + K4(2))/6;
    x(i+1) = a + i * h;
end
end