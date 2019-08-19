a = 0; b = 30; h = 0.01; y1 = 1; y2 = 0; u = 0;
f1 = @(x,y1,y2)y2; 
f2 = @(x,y1,y2)10*(1-y1^2)*y2-y1;  [X,Y1,Y2] = Runge_Kutta(a,b,h,y1,y2,f1,f2);
f2 = @(x,y1,y2)1*(1-y1^2)*y2-y1;   [X,Y3,Y4] = Runge_Kutta(a,b,h,y1,y2,f1,f2);
f2 = @(x,y1,y2)0.1*(1-y1^2)*y2-y1; [X,Y5,Y6] = Runge_Kutta(a,b,h,y1,y2,f1,f2);