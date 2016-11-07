function [output,Index] = neural2(img)

load NN.mat;
%input
input = func2(img);

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