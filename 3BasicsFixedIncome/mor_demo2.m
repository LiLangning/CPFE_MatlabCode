% Consider the present value of the mortgage project for 
% different time to maturities ranging from 21 to 30 years
clear all
close all

pv=zeros(1,10);

for j=21:30
    
P=2e6; % Principal
r=6/100; % APR
T=j;  % Time to maturity
periods=T*12; 
rm=r/12;

C=P*rm*(1+rm)^(periods)/((1+rm)^periods-1);

interests=zeros(1,periods);
balance=zeros(1,periods);
for i=1:periods
   if i==1
       interests(1)=P*rm; balance(1)=P-(C-P*rm);
   else 
       interests(i)=balance(i-1)*rm;
       balance(i)=balance(i-1)-(C-interests(i));
   end
end
payments=C*ones(1,periods);
discountrate=1.1*rm;
pv(j-20)=P-mdiscount(payments,discountrate);

    
    
end

% Plot the NPV against mortgage length
ttm=[21:1:30];
plot(ttm,pv);
xlabel('Mortgage Length');
ylabel('Net Present Value');
title('NPV Analysis for Mortgage Time to Maturity');
