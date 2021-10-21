clc
clear
% K numbers
K = 10000;
mean = 4;
std = 2;
A = normrnd(mean, std, [1 K]);


figure(1)
histfit(A)
xbins = min(A):(max(A)-min(A))/sqrt(K):max(A);

figure(2)
hist(A,xbins)
h1 = findobj(gca,'Normalization','pdf');
%h=findobj(gca,'Type','patch');

%h.FaceColor = [0.00 0.45 0.74];



