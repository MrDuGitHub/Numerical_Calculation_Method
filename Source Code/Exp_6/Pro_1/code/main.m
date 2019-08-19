n = 3;
A = [2,-1,1;3,3,9;3,3,5];
[L,U] = my_LU(A);
disp('L = ');disp(L);
disp('U = ');disp(U);
disp('L * U = ');disp(L * U);