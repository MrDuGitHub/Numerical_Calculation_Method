TOL = 10^-5; N = 10000;
A = [4,-1,1;-1,3,-2;1,-2,3];
X = [1;1;1];
my_Power(TOL,N,A,X);
Symmetric(TOL,N,A,X);
Inverse(TOL,10,A,[1;1;1]);
Inverse(TOL,100,A,[1;-2;1]);
Inverse(TOL,100,A,[1;-2;2]);