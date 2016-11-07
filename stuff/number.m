% Script to scan images
% images are 28x28 or 784 pixel values
% 10,000 images of a digit (1-10) from testSet.mat
% use NN.mat to write algorithm, contains weights and stuff

% 1st layer: 784
% 2nd layer: 400
% 3rd layer: 400
% 4th layer: 10
% Total nodes: 1594 
% Total # of connections = 784*400 + 400*400 + 400*10 = 477,600

function func(x)
%Function that will select and then display a digit for the testData
%matrix.
% Uses basic load to import the 784x10000 matrix of data. Then using the
% user selection the function selects one column, which corresponds to one
% refrence image, resizes it to be square and then displays the image of the number.
load testSet.mat;
data = testData(:,x);
data = reshape (data, 28,28);
imshow (data);
end


