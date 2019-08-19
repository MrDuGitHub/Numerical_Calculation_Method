A = [4,3,0;3,4,-1;0,-1,4]; B = [24,30,-24];
X0 = [1,1,1]; TOL = 10^-5; N = 100;
L2 = @(X)sqrt(sum(X.*X));
LI = @(X)max(X);
Jacobi(A,B,X0,N,TOL,L2)
Jacobi(A,B,X0,N,TOL,LI)
Gauss_Seidel(A,B,X0,N,TOL,L2)
Gauss_Seidel(A,B,X0,N,TOL,LI)