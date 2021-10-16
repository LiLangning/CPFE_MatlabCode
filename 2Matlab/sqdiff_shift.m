% This a demo for using local/subfunction inside MATLAB m file
% This feature requries MATLAB version 2016b or later

% Definition for functinos needs come after main script

% You can add local functions in any order, as long as they all appear 
% after the rest of the script code. 

% Each function begins with its own function definition statement, 
% and ends with the end keyword. 



function diff2 = sqdiff_shift(x,y)
diff2=(main_sqdiff(x,y))+2;
end

function diff = main_sqdiff(x,y)
% This function calculates the squared difference between number x and y
% Note in this function x
 if nargin~=2
     y=2;
     diff=(x-y).^2;
 else
diff = (x-y).^2;
 end  
end



