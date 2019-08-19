s = dsolve('Dy = y - 2*x/y','y(0) ==1','x');

a = 0; b = 1; h = 0.1; y0 = 1;
dy = @(x,y)y-2*x/y;
f = @(x)(2*x+1)^0.5;

[x1,y1] = Euler(a,b,h,y0,dy);
[x2,y2] = Euler(a,b,h/2,y0,dy);
[x3,y3] = Euler(a,b,h/10,y0,dy);
[x4,y4] = Euler(a,b,h/100,y0,dy);
[x5,y5] = Predictor_Corrector(a,b,h,y0,dy);
[x6,y6] = Predictor_Corrector(a,b,h/2,y0,dy);
[x7,y7] = Predictor_Corrector(a,b,h/10,y0,dy);
[x8,y8] = Predictor_Corrector(a,b,h/100,y0,dy);
[x9,y9] = Runge_Kutta(a,b,h,y0,dy);
[x10,y10] = Runge_Kutta(a,b,h/2,y0,dy);
[x11,y11] = Runge_Kutta(a,b,h/10,y0,dy);
[x12,y12] = Runge_Kutta(a,b,h/100,y0,dy);

disp(['Euler:              ',num2str(abs(y1(11)-f(x1(11)))),' ',num2str(abs(y2(21)-f(x2(21)))),' ',num2str(abs(y3(101)-f(x3(101)))),' ',num2str(abs(y4(1001)-f(x4(1001))))]);
disp(['Predictor_Corrector:',num2str(abs(y5(11)-f(x5(11)))),' ',num2str(abs(y6(21)-f(x6(21)))),' ',num2str(abs(y7(101)-f(x7(101)))),' ',num2str(abs(y8(1001)-f(x8(1001))))]);
disp(['Runge_Kutta:        ',num2str(abs(y9(11)-f(x9(11)))),' ',num2str(abs(y10(21)-f(x10(21)))),' ',num2str(abs(y11(101)-f(x11(101)))),' ',num2str(abs(y12(1001)-f(x12(1001))))]);