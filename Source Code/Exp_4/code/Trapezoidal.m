function inte = Trapezoidal(a,b,h,f)
%Compound trapezoidal formula for integration
%   Paramters Specification
%       a,b :integral interval       h   :step length
%       f   :the function                      
%   Result Specification
%       inte:the integral of the function over the interval [a,b]
%   Example
%       f = @(x)exp(sin(x));
%       inte = Trapezoidal(0,pi/2,pi/8000,f);
format long; 
inte = 0;
for i = a:h:b-h
    inte = inte + h / 2 * (f(i) + f(i + h));
end

