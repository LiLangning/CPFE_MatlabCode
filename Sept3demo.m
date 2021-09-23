clc
clear

7*5

% 'char array' and "string" is different
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

% array
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


% Matrix
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