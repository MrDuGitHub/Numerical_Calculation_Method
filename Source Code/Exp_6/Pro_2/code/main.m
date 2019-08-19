n = 3;
A = [2,-1,0;-1,2,-1;0,-1,2];
L = LLt(A);
disp('L = ');disp(L);
disp('L * L^T = ');disp(L * L');
[L,D] = LDLt(A);
disp('L = ');disp(L);
disp('D = ');disp(D);
disp('L * D * L^T');disp(L * D * L');