function [NPV] = dcount(cashflow, r, varargin)
%����cashflow��PV
NPV = 0;
periods = length(cashflow);
for t = 1:1:periods
    if(nargin == 2 | varargin{1} == 'cp' )    
        NPV = NPV + cashflow(t) * exp(-r*t);
    else
        NPV = NPV + cashflow(t) /(1+r)^t;
    end
end


end

