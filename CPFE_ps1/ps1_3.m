clc
clear
rng('default')
A = randn(5)
% find the list of elements which are larger than 0.5
find(A>0.5)
[I,J] = find(A>0.5)

[X,Y] = ind2sub(size(A), find(A>0.5))

I == X
J == Y