a = -5; b = 5; N = 100;
f = @(x)1/(1+x*x);
x = a:(b-a)/(N-1):b;
y = 1./(1.+x.*x);
y2 = my_Lagrange(2,a,b,f,N);
y4 = my_Lagrange(4,a,b,f,N);
y6 = my_Lagrange(6,a,b,f,N);
y8 = my_Lagrange(8,a,b,f,N);
y10 = my_Lagrange(10,a,b,f,N);
