% choose an image from 1-10,0000
function [Index] = neural(img,testData,finalW1L1,finalB1L1,finalB1L2,finalW1L2,finalSoftmaxTheta)


load NN.mat;
%input
input = func(img,testData);

%first layer
input2 = (finalW1L1 * input) + finalB1L1;
input2 = arrayfun(@sigmoid,input2);

%second layer
input3 = (finalW1L2 * input2) + finalB1L2;
input3 = arrayfun(@sigmoid,input3);

%last layer, no bias
output = finalSoftmaxTheta * input3;
output = arrayfun(@sigmoid,output);

[Probability,Index] = max(output);