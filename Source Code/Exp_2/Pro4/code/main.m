addpath('..\..\Pro2\code','..\..\Pro3\code');
N = 100;  TOL = 5 * 10^-5; a = 0; b = 1;
F = @(x)5*x-exp(x); f = @(x)5-exp(x);
disp('The function is 5*x-exp(x)=0,a=0,b=1,tolerate is 5*10^-5.');
Bisection(a,b,N,TOL,F);
Newton(a,N,TOL,F,f);
Secent(a,b,N,TOL,F);
False_Position(a,b,N,TOL,F);