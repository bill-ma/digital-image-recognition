% function that displays a single image
% images are 28x28 or 784 individual pixel values
% 10,000 images of a digit (1-10) from testSet.mat

function [image] = func(x, testData)
%load ('testSet.mat');

% choose an image
image = testData(:,x); 
data = reshape (image, 28,28);
imshow (data);
end


