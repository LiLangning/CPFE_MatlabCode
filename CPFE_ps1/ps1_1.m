clc
clear
A  = reshape(1:18, 3, 6)

% change elements with values of 2^i i=[1 2 3 4] to NaN
for i = [1 2 3 4] 
    A(2^i) = nan
end
% change the last two columns to Inf
A(:,[5 6])  = inf
