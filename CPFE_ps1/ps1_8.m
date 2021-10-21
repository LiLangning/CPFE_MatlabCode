clc
clear
x1= linspace(-1.5,1.5,100);
x2 = linspace(-6,2.8,100);
[X1,X2] = meshgrid(x1,x2);
Y = 100 * (X2-X1.^2).^2+(1-X1).^2;
mesh(X1,X2,Y)

options.MaxIter=2000;
options.TolFun = 1e-4;%º¯ÊýÖµµÄÖÕÖ¹ÈÝ²î

fun = @(x)100*(x(2)-x(1)^2)^2 +(1-x(1))^2;
lb = [-1.5,-6];
ub = [1.5,2.8];
A = [];
b = [];
Aeq = [];
beq = [];
x0 = (lb + ub)/2;
nonlcon = [];
x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)

