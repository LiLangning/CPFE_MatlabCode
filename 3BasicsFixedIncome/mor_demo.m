% Class Demo for mortgage payments analysis
% Yunting Liu 

clear all 
close all

P=2e6; % Mortgage Principal 2 Million
r=6/100; % APR 6%
T=25;  % Time to maturity 25 years
periods=T*12; % Number of months 
rm=r/12;   % Monthly interest rate = APR/12

%% Consider the Equal Installment Payments Options

C=P*rm*(1+rm)^(periods)/((1+rm)^periods-1); % C is the payment every month

% Initilize the interest payment vector
interests=zeros(1,periods);
balance=zeros(1,periods);


interests(1)=P*rm; balance(1)=P-(C-P*rm);

% Calculate the interest and balance of the dmortgage using a for loop
for i=2:periods
       interests(i)=balance(i-1)*rm;
       balance(i)=balance(i-1)-(C-interests(i));
end


% amorotization is the part paying back principals 

amor=C*ones(1,periods)-interests;

payments=C*ones(1,periods);

plot(payments); % Show the split between interests and amortization
hold on
plot(amor);
hold on
plot(interests);
legend('Payment', 'Amortization','Interest');
xlabel('Period');
title('Dynamics of mortgage payment: equal installments')

%% NPV Project Valuation

% Calculate the Net Present Value of  Initializing Mortgages

% First Verify the claim that the present value of [C,C,C,C,.....]
% discounted by rm is the principal P

discountrate=1*rm;
npv1=P-mdiscount(payments,discountrate)

% When discount rate is higher than rm, the NPV is positive 

discountrate=2*rm;
npv2=P-mdiscount(payments,discountrate)


