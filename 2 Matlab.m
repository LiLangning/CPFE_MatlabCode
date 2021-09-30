clc
clear

7*5

%% 'char array' and "string" is different
c = 'hello world'
whos c

d = "Greetings"
whos d

c+2 %change to ASCII number

d+2 %add to the string

e = 'ABCD'
e = e + 1
e

a = NaN
whos a
nan == nan %nan cannot be complied
inf == inf
isnan(a)

%% array
%create array
x = [1 2 3 4 5]
y = 1:2:13
z = linspace(10,30,7) %linspace(x1,x2,n) n elements equally spaced between x1 and x2

%array indexing
x(4) %the fourth element
x(3:5)

y(3:end)
y(4) = 6

% array and column vectors
x3 = [1;2;3;4]
x4 = [1 2 3 4]'
y2 = [1 2 3 4]
y2*x3

% element by element
x1 = 1:3
y1 = 4:6
x1.*y1
x1./y1
x1.^y1


%% Matrix 
%create
X = [1 2 3;4 5 6]

%standard matrix
ones(3)
zeros(3)
eye(3)
nan(3)

%size of matrix
Y = ones(3,4)
size(Y)
size(Y, 1) % number of rows
size(Y, 2) % number of columns

% double indexing
Y(1,1)
Y(1,:)
Y(:,2)
% single indexing   [column by column]
X(2)
X(3)

%delete rows/vectors
A = magic(4)
A([1,2],:) = []

% scalar and matrix addition
B =magic(3)
B + 2

% inverse
B2 = inv(B)
B2 * B
% pinv should be not correct
pinv(B)
% solve Ax = b
A = magic(3)
b = [1,2,3]'
x = A\b

%tic toc  how many times it slips
A = magic(1000); 
b = ones(1000,1);
tic
inv(A)*b;
toc

tic
z=A\b;
toc

% matrix functions
repmat(2.5, 3, 4) %repeat matrix
repmat(1:3, 3, 4)

% reshape -- according to single index
X = magic(4)
Y = reshape(X,8,2)


% relation operation
1 == 1
1 ~= 1
1 <= 1
A = magic(3)
A > 5 % treat as array  element by element comparison

a = [1 0];
b = [2 3];
a&b
and(a,b)

%% flow control
% If-Else
x=6;
if (x>3)
    x = x+1
    x = x+2
elseif (x<3)
    x = x-1
else
    x = x*2
end

% loops
a = 0;
for i = 1:1:4
    a = a + i;
end
a

a = 0;
i = 1;
while i <= 4
    a = a + i;
    i = i + 1;
end
a
sum(1:1:100)

%% Visualization
% plot
x = 0:0.1:10;
y = sin(x);
z = cos(x);
plot(x,y)
hold on
plot(x,z,'c--d')
title('Figure of Sin(x) and Cos(x)')
xlabel('x')
ylabel('f(x)')
legend('sin(x),cos(x)')
hold off

% plot as a class
x = linspace(-2*pi,2*pi);
y1 = sin(x);
y2 = cos(x);
p = plot(x,y1,x,y2);
p(1).LineWidth = 2;
p(2).Marker = '*'; %1 2 which line you change

%function  plot
fplot(@(x) sin(x), [-5 5]);
% function handle
h = @(x) sin(x(1))+cos(x(2));
h([1 2])

h2 = @(x) ones(x,3);
h2(4)

%% cell array
clear
% cell indexing
A(1,1) = {[1,2,3,4,5]}; A(1,2)={'Hello World'};
% content addressing
B{1,1} = [1,2,3,4,5]; B{1,2}= 'Hello World';
% preallocate an array
C = cell(4,5);
