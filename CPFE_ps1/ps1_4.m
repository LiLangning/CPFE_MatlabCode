clc
clear

tic
loopsum = 0
for i = 1:1:100
    loopsum = loopsum + i
end
timeloop = toc

tic
A = 1:1:100
S = sum(A)
timearraysum = toc

tic
i =1
whilesum = 0
while i <= 100
    whilesum = whilesum + i
    i = i +1
end
timewhile = toc