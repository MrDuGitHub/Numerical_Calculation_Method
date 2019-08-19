function [x] = L2_norm(X)
tem = 0;
for i = 1:1:length(X)
    tem = tem + X(i) * X (i);
end
x = sqrt(tem);