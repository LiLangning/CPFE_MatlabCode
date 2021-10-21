clc
clear


timeloop = 0;
for j = 1:100000
tic
loopsum=0;
for i = 1:1:100
    loopsum = loopsum + i;
end
timeloop = timeloop+toc;
end

timearraysum=0;
for j=1:100000
tic
S = sum(1:100);
timearraysum = timearraysum+toc;
end

timewhile = 0;
for j=1:100000
tic
i =1;
whilesum = 0;
while i <= 100
    whilesum = whilesum + i;
    i = i +1;
end
timewhile =timewhile+ toc;
end