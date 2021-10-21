% Calculuting Yield to Maturity 
% Yunting Liu
% Three coupon bonds with different coupon rates and prices
% Important: Coupon Frenqucy is yearly

CashFlow1=[-100,8,8,8,8,108];
Interests1=[8,8,8,8,108];
CashFlow2=[-100.25,6,6,6,6,106];
CashFlow3=[-92,4,4,4,4,104];


% First Approach: utilize the self-written mdiscount function and root
% finding by fzero
npv=@(rate) (mdiscount(Interests1,rate)-100);

% You could either use the fzero function or fsolve function
ytm=fzero(npv,0.1); % 0.1 is the starting point
ytm=fsolve(npv,0.1);



%%


% Second Approach Use irr.m function in finance tool box
ytm1=irr(CashFlow1);
ytm2=irr(CashFlow2);
ytm3=irr(CashFlow3);

sprintf('\n\n');
a=fprintf('YTM    Bond1    Bond2    Bond3 \n');
b=fprintf('-------------------------------\n');
c=fprintf('%12.4f %8.4f %8.4f\n', ytm1,ytm2,ytm3);


% Semi-annual coupon bonds: semin-annual yield-to-maturity
% It matures in 5-year: 10 payments over the life
CashFlow4=[-100,4,4,4,4,4,4,4,4,104];
ytm4=irr(CashFlow4);
ytm4=2*ytm4;









