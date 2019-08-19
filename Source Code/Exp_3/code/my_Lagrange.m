function y = my_Lagrange(n,a,b,f,N)
%Generating Lagrange polynomial grid point data to approximating function f. 
%   Paramters Specification
%       n  :order of the Lagrange polynomial  a,b:data interval
%       f  :the function                      N  :number of grid points
%   Result Specification
%       y  :The value of the Lagrange polynomial at the grid point
%   Example
%       f = @(x)1/(1+x*x);
%       y = my_Lagrange(2,-5,5,f,100);
y = zeros(1,N); 
xx = a:(b-a)/n:b; yy = zeros(1,n+1);
for i = 1:1:length(xx)
    yy(i) = f(xx(i));
end
for i = 1:1:N
    x = a+(i-1)*(b-a)/(N-1);
    y(i) = 0;
    for j = 1:1:n+1
        t = 1;
        for k = 1:1:n+1
            if (j~=k)
                t = t * (x-xx(k))/(xx(j)-xx(k));
            end
        end
        y(i) = y(i) + t * yy(j);
    end 
end
end