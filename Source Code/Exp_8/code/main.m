R = [0.154,0.296,0.363,0.531,2.23,3.58,3.52,2.40,0.23,0.357,...
     0.366,0.771,2.01,3.28,2.96,5.10,0.181,0.260,0.334,0.87,...
     3.59,3.40,3.88,0.180,0.299,0.428,1.15,2.83,4.14,0.234,...
     0.537,1.47,2.48,1.44,1.84,4.66,6.94];
W = [0.017,0.087,0.174,1.11,1.74,4.09,5.45,5.96,0.025,0.111,...
     0.211,0.999,3.02,4.28,4.58,4.68,0.020,0.085,0.171,1.29,...
     3.04,4.29,5.30,0.020,0.119,0.210,1.32,3.34,5.48,0.025,...
     0.233,0.783,1.35,1.69,2.75,4.83,5.53]; 
n = length(R); LnR = log(R); LnW = log(W);
[R0,I] = sort(R,2,'ascend'); W0 = zeros(1,n);
for i=1:1:n
   W0(i) = W(I(i));
end
LnR0 = log(R0); LnW0 = log(W0);

[a,b] = Primary_least_squares(LnR,LnW);
disp(['LnR = Ln(',num2str(b),')+',num2str(a),'*LnW']);
disp(['R = ',num2str(b),'*W^',num2str(a)]);
X1 =0:0.2:0.2*36; Y1 = b .* X1.^a;
X3 = -2:4/37:2; Y3 = log(b) + X3 .* a;
ERR = 0;
for i = 1:1:n
    ERR = ERR + (R(i) - b * W(i)^a)^2;
end
disp(['Error is ',num2str(ERR)]);

[a,b,c] = Quadratic_least_squares(LnR,LnW);
disp(['LnR = Ln(',num2str(b),')+',num2str(a),'*LnW',num2str(c),'*(LnW)^2']);
disp(['R = ',num2str(b),'*W^(',num2str(a),'',num2str(c),'*LnW))']);
X2 = 0:0.2:0.2*36; Y2 = b .* X2 .^(a+c*log(X2));
X4 = -2:4/36:2;
Y4 = log(b) + a .* X4 + c * X4.^2;
ERR = 0;
for i = 1:1:n
    ERR = ERR + (R(i) - b * W(i)^(a+c*log(W(i))))^2;
end
disp(['Error is ',num2str(ERR)]);
