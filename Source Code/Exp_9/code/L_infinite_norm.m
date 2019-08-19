function [ii,x] = L_infinite_norm(X)
x = 0; ii = 1;
for i = 1:1:length(X)
    if abs(X(i))>x 
        x = abs(X(i));
        ii = i;
    end
end
