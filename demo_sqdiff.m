function [diff,sum] = demo_sqdiff(x,y)
% This function calculates the squared difference between number x and y
% Note in this function x
% if nargin<2 
% y=2;
% else
% end
% global variable needs to declare twice
global z;
diff = (x-y).^2+z;
sum=x+y; 


