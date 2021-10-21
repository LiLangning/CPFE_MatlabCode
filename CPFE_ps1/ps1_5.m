clc
clear
K = 5;
A = ones(K);
for m = 1:1:K
    for n = 1:1:K
        A(m,n) = 1 / (m + n - 1);
    end
end

% look in baidu
M = ones(K, 1)*(1:K);
N = M';
H = 1 ./ (M+N-1);

