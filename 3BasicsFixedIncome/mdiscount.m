function [pv]=mdiscount(payments,rate)

% This function takes vectors as input
% The discount rate needs to be quoted in monthly frequencies


if ~isvector(payments)
   error('The payment input needs be vectors')
elseif iscolumn(payments)
    payments=payments';
else
end
discount=1/(1+rate)*ones(1,length(payments));
discount=discount.^([1:1:length(payments)]);
pv=sum(discount.*payments);

end



