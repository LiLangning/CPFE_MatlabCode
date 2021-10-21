function [sq_diff] = find_sqdiff(X,Y)
% A function that produces squared difference between X and Y
sq_diff = sum((X-Y).^2);
end
