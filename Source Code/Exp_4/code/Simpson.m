function inte = Simpson(a,b,h,f)
%Compound Simpson formula for integration
%   Paramters Specification
%       a,b :integral interval       h   :step length
%       f   :the function                      
%   Result Specification
%       inte:the integral of the function over the interval [a,b]
%   Example
%       f = @(x)exp(sin(x));
%       inte = Simpson(0,pi/2,pi/8000,f);
format long; 
inte = 0;
for i = a:2*h:b-2*h
    inte = inte + h / 3 * (f(i) + 4 * f(i + h) + f(i + 2*h));
end
end