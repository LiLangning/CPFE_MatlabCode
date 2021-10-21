function [NPV] = dcount(cashflow, r, indicator)
NPV = 0;
periods = length(cashflow);
for t = 1:1:periods
    if(nargin == 2 | indicator == 'cp' )    
        NPV = NPV + cashflow(t) * exp(-r*t);
    else
        NPV = NPV + cashflow(t) /(1+r)^t;
    end
end
end

