i = 1; a = 0; b = pi/2;
h = pi / 8000;
f = @(x)exp(sin(x));
int1(1) = Trapezoidal(a,b,h/10,f);
int1(2) = Trapezoidal(a,b,h*10,f);
int1(3) = Trapezoidal(a,b,h*100,f);
int2(1) = Simpson(a,b,h,f);
int2(2) = Simpson(a,b,h*10,f);
int2(3) = Simpson(a,b,h*100,f);
disp(3.104379017855555);
disp(int1);
disp(int2);

%3.104379017855555