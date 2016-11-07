function [image] = func2(x, testData)
load ('testSet.mat');

% choose an image
image = testData(:,x); 
data = reshape (image, 28,28);
imshow (data);
end
