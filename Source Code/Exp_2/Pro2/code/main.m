a = 0; b = 1; N = 100;  TOL = 5 * 10^-4;
disp('The function is 2-3*x-sin(x)=0,a=0,b=0,N=100,tolerate is 0.0005.');
Bisection(a,b,N,TOL,@(x)2-3*x-sin(x));