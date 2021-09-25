clc
clear
% K numbers
K = 1000
mean = 4
std = 2
A = normrnd(mean, std, [1 K])
figure(1)
histfit(A)
figure(2)
hist(A,50)
