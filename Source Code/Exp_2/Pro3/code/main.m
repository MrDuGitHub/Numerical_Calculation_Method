N = 100000;  TOL = 10^-5;
F = @(x)(1/2+1/4*x^2-x*sin(x)-1/2*cos(2*x));
f = @(x)(1/2*x-sin(x)-x*cos(x)+sin(2*x));
disp('The function is 1/2+1/4*x^2-x*sin(x)-1/2*cos(2*x),tolerate is 10^-5.');
disp('If p0=pi/2,'); p = Newton(pi/2,N,TOL,F,f);
disp('If p0=5*pi,'); p = Newton(5*pi,N,TOL,F,f);
disp('If p0=10*pi,'); p = Newton(10*pi,N,TOL,F,f);
