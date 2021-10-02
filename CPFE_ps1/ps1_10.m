clear
clc
cashflow = [5,5,105];
fun = @(x) dcount(cashflow,x,1)-95;
ansrate = fsolve(fun,0);
ansrate